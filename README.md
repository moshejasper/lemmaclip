
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lemmaclip

<!-- badges: start -->
<!-- badges: end -->

The goal of lemmaclip is to efficiently clip and paste Greek vocab
lemmas for use in Logos Software.

## Installation

You can install the development version of lemmaclip from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("moshejasper/lemmaclip")
```

## Example

Here is how you NT vocab at the 19-20 level:

``` r
library(lemmaclip)
## basic example code
lemmaclip(19, 20)
#> [1] 19
```

And here is how you clip all vocab at a frequency of 20 or above

``` r
lemmaclip(20)
#> [1] 20
```

I hope you enjoy!!!
