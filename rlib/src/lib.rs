#[no_mangle]
pub extern fn test() {
    println!("Hello");
}

#[no_mangle]
pub extern fn double_input(input: i32) -> i32 {
    println!("Hello from Rust");
    input * 2
}