using GraphBLAS
using Documenter

DocMeta.setdocmeta!(GraphBLAS, :DocTestSetup, :(using GraphBLAS); recursive=true)

makedocs(;
    modules=[GraphBLAS],
    authors="Will Kimmerer <wrkimmerer@outlook.com> and contributors",
    repo="https://github.com/Wimmerer/GraphBLAS.jl/blob/{commit}{path}#{line}",
    sitename="GraphBLAS.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Wimmerer.github.io/GraphBLAS.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Wimmerer/GraphBLAS.jl",
)
