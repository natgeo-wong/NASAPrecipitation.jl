# [NASAPrecipitation.jl](https://github.com/natgeo-wong/NASAPrecipitation.jl)
*Managing Datasets from the NASA Precipitation Measurement Mission*

`NASAPrecipitation.jl` is a Julia package that aims to streamline the following processes:
* downloads of NASA Precipitation Measurement Mission datasets
* basic analysis of said datasets
* perform all the above operations innately over a given geographical region using the [`GeoRegion`](https://github.com/JuliaClimate/GeoRegions.jl) functionality of GeoRegions.jl (v2 and above)

## Installation Instructions

NASAPrecipitation.jl has been officially registered as a Julia package.  To add it, just do:
```
julia> ]
(@v1.6) pkg> add NASAPrecipitation
```

Or if you want the latest version of NASAPrecipitation.jl, you can also install the `#main` branch.
```
julia> ]
(@v1.6) pkg> add NASAPrecipitation#main
```

## Documentation Overview

The documentation for `NASAPrecipitation.jl` is divided into four components:
1. Introduction - meant as an introduction to the package, the `NASAPrecipitatonDataset` and its subtypes
2. Tutorials - meant to show how to use NASAPrecipitation.jl to download data, and how it interacts with the GeoRegions.jl package for data extraction and manipulation
3. How-to Examples - geared towards those looking for specific examples of what can be done
4. API Reference - comprehensive summary of all exported functionalities

!!! tip "Obtaining Example Datasets"
    All the output for the coding examples were produced using my computer with key security information (such as login info) omitted.  The examples cannot be run online because the file size requirements are too big.  Copying and pasting the code examples (with relevant directory and login information changes) should produce the same results.

## Getting help
If you are interested in using `NASAPrecipitation.jl` or are trying to figure out how to use it, please feel free to ask me questions and get in touch!  Please feel free to [open an issue](https://github.com/natgeo-wong/NASAPrecipitation.jl/issues/new) if you have any questions, comments, suggestions, etc!
