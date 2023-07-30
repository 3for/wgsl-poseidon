const BASE_NBITS = 255u;
const W = 16u;
const W_mask = 65535u; // (1 << W) - 1u;
const L = 256u;
const N = 16u; // L / W;
struct BigInt272 {
    limbs: array<u32,17> //array<u32,N+1>
}

struct BigInt256 {
    limbs: array<u32, 16>
}

struct BigInt512 {
    limbs: array<u32, 32>
}
