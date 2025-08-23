pub fn square_of_sum(n: u32) -> u32 {
    let mut index: u32 = n;
    let mut sum: u32 = 0;

    while index > 0 {
        sum += index;
        index -= 1;
    }

    sum * sum
}

pub fn sum_of_squares(n: u32) -> u32 {
    let mut index: u32 = n;
    let mut sum: u32 = 0;

    while index > 0 {
        sum += index * index;
        index -= 1; 
    }

    sum
}

pub fn difference(n: u32) -> u32 {
    square_of_sum(n) - sum_of_squares(n)
}
