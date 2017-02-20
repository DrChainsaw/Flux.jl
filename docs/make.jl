using Documenter, Flux

makedocs(modules=[Flux],
         doctest = false,
         format = :html,
         analytics = "UA-36890222-9",
         sitename = "Flux",
         assets = ["../flux.css"],
         pages = ["Home" => "index.md",
                  "Building Models" => [
                    "Model Building Basics" => "models/basics.md",
                    "Model Templates"       => "models/templates.md",
                    "Recurrence"            => "models/recurrent.md",
                    "Debugging"             => "models/debugging.md"],
                  "Other APIs" => [
                    "Batching" => "apis/batching.md",
                    "Backends" => "apis/backends.md"],
                  "In Action" => [
                    "Logistic Regression" => "examples/logreg.md"],
                  "Contributing & Help"   => "contributing.md",
                  "Internals" => "internals.md"])

deploydocs(
   repo = "github.com/MikeInnes/Flux.jl.git",
   target = "build",
   osname = "linux",
   julia = "0.5",
   deps = nothing,
   make = nothing)
