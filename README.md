# InteractUIkit

[![Build Status](https://travis-ci.org/piever/InteractUIkit.jl.svg?branch=master)](https://travis-ci.org/piever/InteractUIkit.jl)
[![codecov.io](http://codecov.io/github/piever/InteractUIkit.jl/coverage.svg?branch=master)](http://codecov.io/github/piever/InteractUIkit.jl?branch=master)

**InteractUIkit is deprecated, use the Bulma backend instead**

Package to create simple web apps in Julia based on [InteractBase](https://github.com/piever/InteractBase.jl/). To install the package and its dependencies simply run the following code in the REPL:

```julia
Pkg.clone("https://github.com/piever/InteractUIkit.jl")
Pkg.build("InteractUIkit")
```

To learn how to use this package, check out the [InteractBase documentation](https://piever.github.io/InteractBase.jl/latest/).

Simply type `using InteractUIkit` instead of `using InteractBase` and the same commands of InteractBase will work and the GUI will be styled with [UIkit](https://getuikit.com/) css.
