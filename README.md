
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnRep

<!-- badges: start -->
<!-- badges: end -->

The goal of bnRep is to …

## Installation

You can install the development version of bnRep from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("manueleleonelli/bnRep")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo manueleleonelli/bnRep@HEAD
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>      checking for file ‘/private/var/folders/2w/gnn_j0896gzfcqkbyg_6p1gm0000gn/T/Rtmp582seZ/remotes11d57b9f2e01/manueleleonelli-bnRep-4a2554002d50ba5e9633dcf3b10831c518e0c0a1/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/2w/gnn_j0896gzfcqkbyg_6p1gm0000gn/T/Rtmp582seZ/remotes11d57b9f2e01/manueleleonelli-bnRep-4a2554002d50ba5e9633dcf3b10831c518e0c0a1/DESCRIPTION’
#>   ─  preparing ‘bnRep’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘bnRep_0.0.0.9000.tar.gz’
#>      
#> 
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bnRep)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
