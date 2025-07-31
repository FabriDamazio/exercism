use std::collections::HashSet;

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let mut result: HashSet<&'a str> = HashSet::new();

    let mut word_letters: Vec<char> = word.to_lowercase().chars().collect();
    word_letters.sort();
    let word_sorted: String = word_letters.iter().collect();

    for x in possible_anagrams {
        let mut x_letters: Vec<char> = x.to_lowercase().chars().collect();
        x_letters.sort();
        let x_sorted: String = x_letters.iter().collect();

        if word.to_lowercase() != x.to_lowercase() && x_sorted == word_sorted {
            result.insert(x);
        }
    }

    result
}
