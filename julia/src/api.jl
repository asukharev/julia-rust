function rustdylib_printhello()
    ccall((:test, librustdylib), Cvoid, ())
end