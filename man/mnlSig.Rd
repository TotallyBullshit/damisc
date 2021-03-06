\name{mnlSig}
\alias{mnlSig}
\title{Print Statistically Significant MNL Coefficients}
\description{By default, the summary for objects of class \code{multinom} is not particularly helpful.  It still requires a lot of work on the part of the user to figure out which coefficients are significantly different from zero and which ones are not.  \code{mnlSig} solves this problem by either flagging significant coefficients with an asterisk or only printing significant coefficients, leaving insignificant ones blank. }
\usage{
mnlSig(obj, pval=.05, two.sided=TRUE, flag.sig=TRUE, insig.blank=FALSE)
}
\arguments{
  \item{obj}{A model object of class \code{multinom}.}
  \item{pval}{The desired Type I error rate to identify coefficients as statistically significant.}
  \item{two.sided}{Logical indicating whether calculated p-values should be two-sided (if \code{TRUE}) or one-sided (if \code{FALSE}).}
  \item{flag.sig}{Logical indicating whether an asterisk should be placed beside coefficients which are significant at the \code{pval} level.}
  \item{insig.blank}{Logical indicating whether coefficients which are not significant at the \code{pval} level should be blank in the output.}
}
\value{
A data frame suitable for printing with the (optionally significance-flagged) coefficients from a multinomial logit model. 
}
\author{Dave Armstrong (UW-Milwaukee, Department of Political Science)}
\examples{
library(nnet)
data(france)
mnl.mod <- multinom(vote ~ retnat + male + retnat + lrself, data=france)
mnlSig(mnl.mod)
}