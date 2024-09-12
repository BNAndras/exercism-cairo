use luhn::is_valid;

#[test]
fn single_digit_strings_can_not_be_valid() {
    let value = "1";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn a_single_zero_is_invalid() {
    let value = "0";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn a_simple_valid_sin_that_remains_valid_if_reversed() {
    let value = "059";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn a_simple_valid_sin_that_becomes_invalid_if_reversed() {
    let value = "59";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn a_valid_canadian_sin() {
    let value = "055 444 285";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn invalid_canadian_sin() {
    let value = "055 444 286";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn invalid_credit_card() {
    let value = "8273 1232 7352 0569";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn invalid_long_number_with_an_even_remainder() {
    let value = "1 2345 6789 1234 5678 9012";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn invalid_long_number_with_a_remainder_divisible_by_5() {
    let value = "1 2345 6789 1234 5678 9013";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn valid_number_with_an_even_number_of_digits() {
    let value = "095 245 88";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn valid_number_with_an_odd_number_of_spaces() {
    let value = "234 567 891 234";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn valid_strings_with_a_non_digit_added_at_the_end_become_invalid() {
    let value = "059a";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn valid_strings_with_punctuation_included_become_invalid() {
    let value = "055-444-285";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn valid_strings_with_symbols_included_become_invalid() {
    let value = "055# 444$ 285";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn single_zero_with_space_is_invalid() {
    let value = " 0";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn more_than_a_single_zero_is_valid() {
    let value = "0000 0";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn input_digit_9_is_correctly_converted_to_output_digit_9() {
    let value = "091";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn very_long_input_is_valid() {
    let value = "9999999999 9999999999 9999999999 9999999999";
    assert!(is_valid(value));
}


#[test]
#[ignore]
fn valid_luhn_with_an_odd_number_of_digits_and_non_zero_first_digit() {
    let value = "109";
    assert!(is_valid(value));
}

#[test]
#[ignore]
fn using_ascii_value_for_non_doubled_non_digit_isnt_allowed() {
    let value = "055b 444 285";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn using_ascii_value_for_doubled_non_digit_isnt_allowed() {
    let value = ":9";
    assert!(!is_valid(value));
}

#[test]
#[ignore]
fn non_numeric_non_space_char_in_the_middle_with_a_sum_thats_divisible_by_10_isnt_allowed() {
    let value = "59%59";
    assert!(!is_valid(value));
}
