pub fn recite(start_bottles: u32, take_down: u32) -> String {
    let mut song: String = String::new();
    let mut counter: u32 = take_down;
    let mut remaining_bottles: u32 = start_bottles;

    while counter > 0 {
        let mut bottles_text = number_to_text(remaining_bottles, true);

        let msg1 = if remaining_bottles > 1 {
            format!("{bottles_text} green bottles hanging on the wall,")
        } else {
            format!("{bottles_text} green bottle hanging on the wall,")
        };

        song.push_str(&msg1);
        song.push('\n');
        song.push_str(&msg1);
        song.push('\n');

        let msg2 = "And if one green bottle should accidentally fall,";
        song.push_str(msg2);
        song.push('\n');

        remaining_bottles -= 1;
        bottles_text = number_to_text(remaining_bottles, false);

        let msg3 = if remaining_bottles == 1 {
            format!("There'll be {bottles_text} green bottle hanging on the wall.")
        } else {
            format!("There'll be {bottles_text} green bottles hanging on the wall.",)
        };

        song.push_str(&msg3);
        song.push('\n');
        song.push('\n');

        counter -= 1;
    }

    song
}

fn number_to_text(n: u32, uppercase: bool) -> String {
    let text = match n {
        10 => String::from("ten"),
        9 => String::from("nine"),
        8 => String::from("eight"),
        7 => String::from("seven"),
        6 => String::from("six"),
        5 => String::from("five"),
        4 => String::from("four"),
        3 => String::from("three"),
        2 => String::from("two"),
        1 => String::from("one"),
        0 => String::from("no"),
        _ => String::from("zero"),
    };

    if uppercase {
        text[..1].to_uppercase() + &text[1..]
    } else {
        text
    }
}
