alias BaseField = BigInt256;
alias ScalarField = BigInt256;


fn fr_get_base_module() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 1u;
    p.limbs[1] = 0u;
    p.limbs[2] = 12525u;
    p.limbs[3] = 39213u;
    p.limbs[4] = 63771u;
    p.limbs[5] = 2380u;
    p.limbs[6] = 39164u;
    p.limbs[7] = 8774u;
    p.limbs[8] = 0u;
    p.limbs[9] = 0u;
    p.limbs[10] = 0u;
    p.limbs[11] = 0u;
    p.limbs[12] = 0u;
    p.limbs[13] = 0u;
    p.limbs[14] = 0u;
    p.limbs[15] = 16384u;

    return p;
}
/*const BASE_MODULUS: BigInt256 = BigInt256(
    array(1u, 0u, 12525u, 39213u, 63771u, 2380u, 39164u, 8774u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 16384u)
);*/
// 0x40000000000000000000000000000000224698fc0994a8dd8c46eb2100000001

fn fr_get_base_module_medium_wide() -> BigInt272 {
    var p: BigInt272;
    p.limbs[0] = 1u;
    p.limbs[1] = 0u;
    p.limbs[2] = 12525u;
    p.limbs[3] = 39213u;
    p.limbs[4] = 63771u;
    p.limbs[5] = 2380u;
    p.limbs[6] = 39164u;
    p.limbs[7] = 8774u;
    p.limbs[8] = 0u;
    p.limbs[9] = 0u;
    p.limbs[10] = 0u;
    p.limbs[11] = 0u;
    p.limbs[12] = 0u;
    p.limbs[13] = 0u;
    p.limbs[14] = 0u;
    p.limbs[15] = 16384u;
    p.limbs[16] = 0u;

    return p;
}
/*const BASE_MODULUS_MEDIUM_WIDE: BigInt272 = BigInt272(
    array(1u, 0u, 12525u, 39213u, 63771u, 2380u, 39164u, 8774u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 16384u, 0u)
);*/

fn fr_get_base_module_wide() -> BigInt512 {
    var p: BigInt512;
    p.limbs[0] = 1u;
    p.limbs[1] = 0u;
    p.limbs[2] = 12525u;
    p.limbs[3] = 39213u;
    p.limbs[4] = 63771u;
    p.limbs[5] = 2380u;
    p.limbs[6] = 39164u;
    p.limbs[7] = 8774u;
    p.limbs[8] = 0u;
    p.limbs[9] = 0u;
    p.limbs[10] = 0u;
    p.limbs[11] = 0u;
    p.limbs[12] = 0u;
    p.limbs[13] = 0u;
    p.limbs[14] = 0u;
    p.limbs[15] = 16384u;

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
/*const BASE_MODULUS_WIDE: BigInt512 = BigInt512(
    array(1u, 0u, 12525u, 39213u, 63771u, 2380u, 39164u, 8774u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 16384u,
        0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u)
);*/


fn fr_get_base_m() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 65532u;
    p.limbs[1] = 65535u;
    p.limbs[2] = 15435u;
    p.limbs[3] = 39755u;
    p.limbs[4] = 7057u;
    p.limbs[5] = 56012u;
    p.limbs[6] = 39951u;
    p.limbs[7] = 30437u;
    p.limbs[8] = 65535u;
    p.limbs[9] = 65535u;
    p.limbs[10] = 65535u;
    p.limbs[11] = 65535u;
    p.limbs[12] = 65535u;
    p.limbs[13] = 65535u;
    p.limbs[14] = 65535u;
    p.limbs[15] = 65535u;

    return p;
}
// 0xffffffffffffffffffffffffffffffff76e59c0fdacc1b919b4b3c4bfffffffc
/*
sage: p=0x40000000000000000000000000000000224698fc094cf91b992d30ed00000001
sage: (2**510) //p
115792089237316195423570985008687907853087743403514885215096460958426388758524
sage: hex(1157920892373161954235709850086879078530877434035148852150964609584263
....: 88758524)
'0xffffffffffffffffffffffffffffffff76e59c0fdacc1b919b4b3c4bfffffffc'
*/
/*const BASE_M = BigInt256(
    array(65532u, 65535u, 15435u, 39755u, 7057u, 56012u, 39951u, 30437u, 65535u, 65535u, 65535u, 65535u, 65535u, 65535u, 65535u, 65535u)
);*/

fn fr_get_zero() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 0u;
    p.limbs[1] = 0u;
    p.limbs[2] = 0u;
    p.limbs[3] = 0u;
    p.limbs[4] = 0u;
    p.limbs[5] = 0u;
    p.limbs[6] = 0u;
    p.limbs[7] = 0u;
    p.limbs[8] = 0u;
    p.limbs[9] = 0u;
    p.limbs[10] = 0u;
    p.limbs[11] = 0u;
    p.limbs[12] = 0u;
    p.limbs[13] = 0u;
    p.limbs[14] = 0u;
    p.limbs[15] = 0u;

    return p;
}
/*const ZERO: BigInt256 = BigInt256(
    array(0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u)
);*/

fn fr_get_one() -> BigInt256 {
    var p: BigInt256;
    p.limbs[0] = 1u;
    p.limbs[1] = 0u;
    p.limbs[2] = 0u;
    p.limbs[3] = 0u;
    p.limbs[4] = 0u;
    p.limbs[5] = 0u;
    p.limbs[6] = 0u;
    p.limbs[7] = 0u;
    p.limbs[8] = 0u;
    p.limbs[9] = 0u;
    p.limbs[10] = 0u;
    p.limbs[11] = 0u;
    p.limbs[12] = 0u;
    p.limbs[13] = 0u;
    p.limbs[14] = 0u;
    p.limbs[15] = 0u;

    return p;
}
/*const ONE: BigInt256 = BigInt256(
    array(1u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u)
);*/

fn get_higher_with_slack(a: ptr<function, BigInt512>) -> BaseField {
    var out: BaseField;
    var slack = L - BASE_NBITS;
    for (var i = 0u; i < N; i = i + 1u) {
        out.limbs[i] = (((*a).limbs[i + N] << slack) + ((*a).limbs[i + N - 1u] >> (W - slack))) & W_mask;
    }
    return out;
}

// once reduces once (assumes that 0 <= a < 3 * mod)
fn field_reduce(a: ptr<function, BigInt256>) -> BaseField {
    var res: BigInt256;
    var BASE_MODULUS = fr_get_base_module();
    var underflow = bigint_sub(a, &BASE_MODULUS, &res);
    if (underflow == 1u) {
        return *a;
    } else {
        var res2: BigInt256;
        underflow = bigint_sub(&res, &BASE_MODULUS, &res2);
        if (underflow == 1u) {
            return res;
        } else {
            return res2;
        }
    }
}

fn shorten(a: ptr<function, BigInt272>) -> BigInt256 {
    var out: BigInt256;
    for (var i = 0u; i < N; i = i + 1u) {
        out.limbs[i] = (*a).limbs[i];
    }
    return out;
}

// reduces l times (assumes that 0 <= a < multi * mod)
fn field_reduce_272(a: ptr<function, BigInt272>, multi: u32) -> BaseField {
    var res: BigInt272;
    var cur = *a;
    var cur_multi = multi + 1u;
    var BASE_MODULUS_MEDIUM_WIDE = fr_get_base_module_medium_wide();
    while (cur_multi > 0u) {
        var underflow = bigint_sub_272(&cur, &BASE_MODULUS_MEDIUM_WIDE, &res);
        if (underflow == 1u) {
            return shorten(&cur);
        } else {
            cur = res;
        }
        cur_multi = cur_multi - 1u;
    }
    var ZERO = fr_get_zero();
    return ZERO;
}

fn field_add(a: ptr<function, BaseField>, b: ptr<function, BaseField>) -> BaseField { 
    var res: BaseField;
    bigint_add(a, b, &res);
    return field_reduce(&res);
}

fn field_sub(a: ptr<function, BaseField>, b: ptr<function, BaseField>) -> BaseField {
    var res: BaseField;
    var carry = bigint_sub(a, b, &res);
    if (carry == 0u) {
        return res;
    }
    var BASE_MODULUS = fr_get_base_module();
    bigint_add(&res, &BASE_MODULUS, &res);
    return res;
}

fn field_mul(a: ptr<function, BaseField>, b: ptr<function, BaseField>) -> BaseField {
    var xy: BigInt512 = bigint_mul(a, b);
    var xy_hi: BaseField = get_higher_with_slack(&xy);
    var BASE_M = fr_get_base_m();
    var l: BigInt512 = bigint_mul(&xy_hi, &BASE_M);
    var l_hi: BaseField = get_higher_with_slack(&l);
    var BASE_MODULUS = fr_get_base_module();
    var lp: BigInt512 = bigint_mul(&l_hi, &BASE_MODULUS);
    var r_wide: BigInt512;
    bigint_512_sub(&xy, &lp, &r_wide);

    var r_wide_reduced: BigInt512;
    var BASE_MODULUS_WIDE = fr_get_base_module_wide();
    var underflow = bigint_512_sub(&r_wide, &BASE_MODULUS_WIDE, &r_wide_reduced);
    if (underflow == 0u) {
        r_wide = r_wide_reduced;
    }
    var r: BaseField;
    for (var i = 0u; i < N; i = i + 1u) {
        r.limbs[i] = r_wide.limbs[i];
    }
    return field_reduce(&r);
}

// This is slow, probably don't want to use this
// fn field_small_scalar_mul(a: u32, b: BaseField) -> BaseField {
//     var constant: BaseField;
//     constant.limbs[0] = a;
//     return field_mul(constant, b);
// }

fn field_small_scalar_shift(l: u32, a: ptr<function, BaseField>) -> BaseField { // max shift allowed is 16
    // assert (l < 16u);
    var res: BigInt272;
    for (var i = 0u; i < N; i = i + 1u) {
        let shift = (*a).limbs[i] << l;
        res.limbs[i] = res.limbs[i] | (shift & W_mask);
        res.limbs[i + 1u] = (shift >> W);
    }

    var output = field_reduce_272(&res, (1u << l)); // can probably be optimised
    return output;
}

fn field_pow(p: ptr<function, BaseField>, e: u32) -> BaseField {
    var res: BaseField = *p;
    for (var i = 1u; i < e; i = i + 1u) {
        res = field_mul(&res, p);
    }
    return res;
}

fn field_eq(a: ptr<function, BaseField>, b: ptr<function, BaseField>) -> bool {
    for (var i = 0u; i < N; i = i + 1u) {
        if ((*a).limbs[i] != (*b).limbs[i]) {
            return false;
        }
    }
    return true;
}

fn field_sqr(a: ptr<function, BaseField>) -> BaseField {
    var xy: BigInt512 = bigint_sqr(a);
    var xy_hi: BaseField = get_higher_with_slack(&xy);
    var BASE_M = fr_get_base_m();
    var l: BigInt512 = bigint_mul(&xy_hi, &BASE_M);
    var l_hi: BaseField = get_higher_with_slack(&l);
    var BASE_MODULUS = fr_get_base_module();
    var lp: BigInt512 = bigint_mul(&l_hi, &BASE_MODULUS);
    var r_wide: BigInt512;
    bigint_512_sub(&xy, &lp, &r_wide);

    var r_wide_reduced: BigInt512;
    var BASE_MODULUS_WIDE = fr_get_base_module_wide();
    var underflow = bigint_512_sub(&r_wide, &BASE_MODULUS_WIDE, &r_wide_reduced);
    if (underflow == 0u) {
        r_wide = r_wide_reduced;
    }
    var r: BaseField;
    for (var i = 0u; i < N; i = i + 1u) {
        r.limbs[i] = r_wide.limbs[i];
    }
    return field_reduce(&r);
}

/*
fn field_to_bits(a: ptr<function, BigInt256>) -> array<bool, 256> {
  let res: array<bool, 256> = array();
  for (var i = 0u;i < N;i += 1) {
    for (var j = 0u;j < 32u;j += 1) {
      var bit = ((*a).limbs[i] >> j) & 1u;
      res[i * 32u + j] = bit == 1u;
    }
  }
  return res;
}
*/
