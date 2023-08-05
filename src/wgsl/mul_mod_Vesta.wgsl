// This code is adapted from https://github.com/sampritipanda/msm-webgpu/blob/main/bigint.wgsl

@compute
@workgroup_size(64)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>) {
    var a: BigInt256 = buf[global_id.x];
    buf[global_id.x] = field_mul(&a, &a);
}
