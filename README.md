
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

The functions in this package only work on Windows.

## Example

Here is how you NT vocab at the 19-20 level:

``` r
library(lemmaclip)
## basic example code
lemmaclip(19, 20)
#> Lemmas copied to clipboard!
#> ---------------------------
#> # A tibble: 22 × 5
#>    type        lemma      full               gloss                          freq
#>    <chr>       <chr>      <chr>              <chr>                         <dbl>
#>  1 Verb        ἀπέχω      ἀπέχω              to have received; to be dist…    19
#>  2 Noun        βάπτισμα   βάπτισμα, -τος, τό baptism                          19
#>  3 Noun        γεωργός    γεωργός, -οῦ, ὁ    a farmer                         19
#>  4 Verb        διακρίνω   διακρίνω           to discriminate, judge; to d…    19
#>  5 Noun        δῶρον      δῶρον, -ου, τό     a gift                           19
#>  6 Verb        ἐπαίρω     ἐπαίρω             to lift up                       19
#>  7 Preposition ἐπάνω      ἐπάνω              above; over (gen)                19
#>  8 Verb        ἐπιλαμβάνω ἐπιλαμβάνομαι      to take hold of                  19
#>  9 Adjective   ἐπουράνιος ἐπουράνιος, -ον    heavenly                         19
#> 10 Noun        κοινωνία   κοινωνία, -ας, ἡ   fellowship; contribution         19
#> # … with 12 more rows
```

And here is how you clip all vocab at a frequency of 20 or above

``` r
lemmaclip(20)
#> Lemmas copied to clipboard!
#> ---------------------------
#> # A tibble: 642 × 5
#>    type        lemma full          gloss                                    freq
#>    <chr>       <chr> <chr>         <chr>                                   <dbl>
#>  1 Article     ὁ     ὁ, ἡ, τό      the                                     19889
#>  2 Conjunction καί   καί           and, even, also                          9158
#>  3 Pronoun     αὐτός αὐτός, -ή, -ό himself, herself, itself, same; he, sh…  5645
#>  4 Pronoun     σύ    σύ            you                                      2908
#>  5 Conjunction δέ    δέ            but, and                                 2792
#>  6 Preposition ἐν    ἐν            in (dat)                                 2752
#>  7 Pronoun     ἐγώ   ἐγώ           I                                        2584
#>  8 Verb        εἰμί  εἰμί          I am                                     2462
#>  9 Verb        λέγω  λέγω          to say, speak                            2357
#> 10 Verb        εἶπον εἶπον         to say, speak                            2357
#> # … with 632 more rows
```

I hope you enjoy!!!
