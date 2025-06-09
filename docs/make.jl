using Documenter

include("pages.jl")

makedocs(
  sitename="ThermalComponents",
  warnonly=[:cross_references, :example_block],
  pages=pages)

if get(ENV, "CI", nothing) == "true"
  deploydocs(;
    repo="github.com/JuliaComputing/ThermalComponents",
    branch="jhub-pages",
    push_preview=true
  )
end
