
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnRep

<!-- badges: start -->
<!-- badges: end -->

The R package `bnRep` includes the largest repository of Bayesian
networks, which were all collected from recent academic literature in a
variety of fields! If you are using any Bayesian network from `bnRep`
you should cite:

Leonelli, M (2024). “bnRep: A repository of Bayesian networks from the
academic literature.” ArXiv 24….

    @Article{,
        title = {bn{R}ep: A repository of {B}ayesian networks from the academic literature},
        author = {Manuele Leonelli},
        journal = {Arxiv},
        year = {2024}
      }

## Contribution

If you are interested in having your Bayesian network included in
`bnRep` you must prepare three objects:

- the Bayesian network as a `bn.fit` object (if not created with
  `bnlearn` you can always use import functions, such as
  \`read.bif()\`\`);

- an R file with the same name of the `bn.fit` object reporting the
  documentation of the Bayesian network;

- a vector/excel file with the required details to include in the
  `bnRep_summary` object.

You can submit the required objects directly via github (e.g fork/pull),
or via email.

If you struggle with any of these steps, please get in touch and I will
try to help!

## Overview

`bnRep` includes over 200 Bayesian networks from more than 150 academic
publications. It includes discrete, Gaussian and conditional linear
Gaussian Bayesian networks, all stored as appropriate `bn.fit` objects
from `bnlearn`. They can be exported for use to other software
(e.g. Phython libraries) using functions from `bnlearn` such as
`write.bif()`. Recall that in order to plot the associated DAG, one must
first convert it to a graph object with `bn.net()` from the `bnlearn`
package.

### Installation

``` r
# Install stable version from CRAN:
install.packages("stagedtrees")

# Or the development version from GitHub:
remotes::install_github("stagedtrees/stagedtrees")
```

### Usage

### Exploring bnRep

### An overview of the Bayesian networks in bnRep
