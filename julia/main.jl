module JuliaRustTest

include("deps.jl")
include("src/api.jl")

rustdylib_printhello()

# function main()
#     println("Hello from Julia")
#     input = 10 #Int32(10)
#     output =  ccall(   #(:function or "function", "library"), Return type, (Input types,), arguments if any)
#                     (:double_input,
#                     "../rlib/target/release/rustdylib"),
#                     Int32,          # Return type
#                     (Int32,),       # (Input types,)
#                     input)          # Arguments if any
#     println("As result of $input * 2 is: $output")
# end

end