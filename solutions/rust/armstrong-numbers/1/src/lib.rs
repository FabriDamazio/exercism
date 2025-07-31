pub fn is_armstrong_number(num: u32) -> bool {
    let digits: Vec<u32> = num
        .to_string()
        .chars()
        .map(|c| c.to_digit(10).unwrap())
        .collect();

    let number_of_digits: usize = digits.len();
    let mut result: u32 = 0;

    for d in digits {
        result += d.pow(number_of_digits.try_into().unwrap());
    }
    
    num == result
}
