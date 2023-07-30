use num_bigint::BigUint;

pub fn get_fr() -> BigUint {
    BigUint::parse_bytes(b"40000000000000000000000000000000224698fc094cf91b992d30ed00000001", 16).unwrap()
}
