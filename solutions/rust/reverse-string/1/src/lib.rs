pub fn reverse(input: &str) -> String {
    let mut chars: Vec<char> = input.chars().collect();
    chars.reverse();
    return chars.iter().collect::<String>();
}
