pub fn square(s: u32) -> u64 {
    if s == 0 || s > 64 {
        panic!("invalid square")
    }

    1u64 << (s - 1)
}

pub fn total() -> u64 {
    u64::MAX
}
