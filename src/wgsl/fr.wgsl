fn fr_get_p() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 1u;
    p.limbs[1] = 61440u;
    p.limbs[2] = 62867u;
    p.limbs[3] = 17377u;
    p.limbs[4] = 28817u;
    p.limbs[5] = 31161u;
    p.limbs[6] = 59464u;
    p.limbs[7] = 10291u;
    p.limbs[8] = 22621u;
    p.limbs[9] = 33153u;
    p.limbs[10] = 17846u;
    p.limbs[11] = 47184u;
    p.limbs[12] = 41001u;
    p.limbs[13] = 57649u;
    p.limbs[14] = 20082u;
    p.limbs[15] = 12388u;

    return p;
}

// 0x54a47462623a04a7ab074a58680730147144852009e880ae620703a6be1de925
// 38284845454613504619394467267190322316714506535725634610690744705837986343205
// sage: factor(38284845454613504619394467267190322316714506535725634610690744705837986343205)
//     5 * 2942729 * 2601996001304469736723596856332358318874385411346109995904532473485529
/*
          The Montgomery reduction here is based on Algorithm 14.32 in
          Handbook of Applied Cryptography
          <http://cacr.uwaterloo.ca/hac/about/chap14.pdf>.

          为 Barrett modular reduction 中的$\mu$值？？？？
          满足：
sage: 38284845454613504619394467267190322316714506535725634610690744705837986343205*(M+1) > (2**508)
True
sage: 38284845454613504619394467267190322316714506535725634610690744705837986343205*(M+0) < (2**508)
True

sage: (2**508) // M
38284845454613504619394467267190322316714506535725634610690744705837986343205
*/

fn fr_get_mu() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 59685u; // e925
    p.limbs[1] = 48669u; // be1d
    p.limbs[2] = 934u; // 03a6
    p.limbs[3] = 25095u; // 6207
    p.limbs[4] = 32942u; // 80ae
    p.limbs[5] = 2536u; // 09e8
    p.limbs[6] = 34080u; // 8520
    p.limbs[7] = 28996u; // 7144
    p.limbs[8] = 12308u; // 3014
    p.limbs[9] = 26631u; // 6807
    p.limbs[10] = 19032u; // 4a58
    p.limbs[11] = 43783u; // ab07
    p.limbs[12] = 1191u; // 04a7
    p.limbs[13] = 25146u; // 623a
    p.limbs[14] = 29794u; // 7462
    p.limbs[15] = 21668u; // 54a4

    return p;
}

fn fr_get_p_wide() -> BigInt512 {
    var p: BigInt512;
    p.limbs[0] = 1u;
    p.limbs[1] = 61440u;
    p.limbs[2] = 62867u;
    p.limbs[3] = 17377u;
    p.limbs[4] = 28817u;
    p.limbs[5] = 31161u;
    p.limbs[6] = 59464u;
    p.limbs[7] = 10291u;
    p.limbs[8] = 22621u;
    p.limbs[9] = 33153u;
    p.limbs[10] = 17846u;
    p.limbs[11] = 47184u;
    p.limbs[12] = 41001u;
    p.limbs[13] = 57649u;
    p.limbs[14] = 20082u;
    p.limbs[15] = 12388u;
    p.limbs[16] = 0u;
    p.limbs[17] = 0u;
    p.limbs[18] = 0u;
    p.limbs[19] = 0u;
    p.limbs[20] = 0u;
    p.limbs[21] = 0u;
    p.limbs[22] = 0u;
    p.limbs[23] = 0u;
    p.limbs[24] = 0u;
    p.limbs[25] = 0u;
    p.limbs[26] = 0u;
    p.limbs[27] = 0u;
    p.limbs[28] = 0u;
    p.limbs[29] = 0u;
    p.limbs[30] = 0u;
    p.limbs[31] = 0u;
    return p;
}

fn get_higher_with_slack(a: ptr<function, BigInt512>) -> BigInt256 {
    var out: BigInt256;
    /*var slack = 2u; // 256 minus the bitwidth of the Fr modulus*/
    /*var W = 16u;*/
    /*var W_mask = 65535u;*/
    for (var i = 0u; i < 16u; i ++) {
        /*
          This loop operates on the most significant bits of the bigint.
          It discards the least significant bits.
        */ 
        //                       mul by 2 ** 1         divide by 2 ** 15
        /*out.limbs[i] = (((*a).limbs[i + 16u] << slack) + ((*a).limbs[i + 15u] >> (W - slack))) & W_mask;*/
        out.limbs[i] = (((*a).limbs[i + 16u] << 2u) + ((*a).limbs[i + 15u] >> 14u)) & 65535u;
    }
    return out;
}


fn fr_mul(a: ptr<function, BigInt256>, b: ptr<function, BigInt256>) -> BigInt256 {
    var mu = fr_get_mu();
    var p = fr_get_p();
    var p_wide = fr_get_p_wide();

    var xy: BigInt512 = bigint_mul(a, b);
    var xy_hi: BigInt256 = get_higher_with_slack(&xy);
    var l: BigInt512 = bigint_mul(&xy_hi, &mu);
    var l_hi: BigInt256 = get_higher_with_slack(&l);
    var lp: BigInt512 = bigint_mul(&l_hi, &p);
    var r_wide: BigInt512;
    bigint_512_sub(&xy, &lp, &r_wide);

    var r_wide_reduced: BigInt512;
    var underflow = bigint_512_sub(&r_wide, &p_wide, &r_wide_reduced);
    if (underflow == 0u) {
        r_wide = r_wide_reduced;
    }
    var r: BigInt256;
    for (var i = 0u; i < 16u; i ++) {
        r.limbs[i] = r_wide.limbs[i];
    }
    return fr_reduce(&r);
}

fn fr_sqr(a: ptr<function, BigInt256>) -> BigInt256 {
    return fr_mul(a, a);
}

fn fr_add(a: ptr<function, BigInt256>, b: ptr<function, BigInt256>) -> BigInt256 { 
    var res: BigInt256;
    /*var res = bigint_add(a, b);*/
    bigint_add(a, b, &res);
    return fr_reduce(&res);
}

/*// once reduces once (assumes that 0 <= a < 2 * mod)*/
fn fr_reduce(a: ptr<function, BigInt256>) -> BigInt256 {
    var res: BigInt256;
    var p: BigInt256 = fr_get_p();
    var underflow = bigint_sub(a, &p, &res);
    if (underflow == 1u) {
        return *a;
    }

    return res;
}
