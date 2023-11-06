using MyPkg
using Documenter

DocMeta.setdocmeta!(MyPkg, :DocTestSetup, :(using MyPkg); recursive=true)

makedocs(;
    modules=[MyPkg],
    authors="Wenjing Zhang",
    repo="https://github.com/wzhan88-1130/MyPkg.jl/blob/{commit}{path}#{line}",
    sitename="MyPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wzhan88-1130.github.io/MyPkg.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wzhan88-1130/MyPkg.jl",
    devbranch="main",
)
