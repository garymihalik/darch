% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weightUpdateFunctions.R
\name{weightDecayWeightUpdate}
\alias{weightDecayWeightUpdate}
\title{Updates the weight using weight decay.}
\usage{
weightDecayWeightUpdate(darch, layerIndex, weightsInc, biasesInc, ...,
  weightDecay = getParameter(".darch.weightDecay", 0, darch),
  debug = getParameter(".debug", F, darch))
}
\arguments{
\item{darch}{\linkS4class{DArch} instance.}

\item{layerIndex}{Layer index within the network.}

\item{weightsInc}{Matrix containing scheduled weight updates from the
fine-tuning algorithm.}

\item{biasesInc}{Bias weight updates.}

\item{...}{Additional parameters, not used.}

\item{weightDecay}{Weights are multiplied by (1 - \code{weightDecay}) before
each update. Corresponds to the \code{darch.weightDecay} parameter of
\link{darch.default}.}

\item{debug}{Internal debugging flag.}
}
\value{
updated weights
}
\description{
Multiplies the weights by (1 - \code{weightDecay}) before applying the
scheduled weight changes.
}
\examples{
\dontrun{
model <- darch(Species ~ ., iris, c(0, 50, 0),
 darch.weightUpdateFunction = "weightDecayWeightUpdate")
}
}
\seealso{
Other weight update functions: \code{\link{maxoutWeightUpdate}}
}

