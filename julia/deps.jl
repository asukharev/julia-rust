import Libdl

const librustdylib = joinpath(@__DIR__, "librustdylib.dll")

function check_deps()
    global librustdylib
    if !isfile(librustdylib)
        error("$librustdylib does not exist, Please re-run Pkg.build(\"JuliaPackageWithRustDep\"), and restart Julia.")
    end

    if Libdl.dlopen_e(librustdylib) == C_NULL
        error("$librustdylib cannot be opened, Please re-run Pkg.build(\"JuliaPackageWithRustDep\"), and restart Julia.")
    end
end
