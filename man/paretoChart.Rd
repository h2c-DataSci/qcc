\name{paretoChart}
\alias{paretoChart}
\alias{print.paretoChart}
\alias{plot.paretoChart}
\alias{blues.colors}

\title{Pareto chart}
\description{Computes a table of statistics and plot a Pareto chart.}

\usage{
paretoChart(data, plot = TRUE, \dots)

\method{plot}{paretoChart}(x, xlab = NULL, ylab = "Frequency", 
     ylab2 = "Cumulative Percentage", 
     cumperc = seq(0, 100, by = 25), 
     ylim = NULL, main = NULL,
     col = blues.colors(nlevels), 
     \dots) 
}
\arguments{
\item{data}{a vector of values. \code{names(data)} are used for labelling the bars.}
\item{plot}{a logical specifying if the chart should be provided (\code{TRUE}, default).}
\item{x}{an object of class \code{'paretoChart'} returned by a call to \code{paretoChart()} function.}
\item{xlab}{a string specifying the label for the x-axis.}
\item{ylab}{a string specifying the label for the y-axis.}
\item{ylab2}{a string specifying the label for the second y-axis on the right side.}
\item{cumperc}{a vector of percentage values to be used as tickmarks for the second y-axis on the right side.}
\item{ylim}{a numeric vector specifying the limits for the y-axis.}
\item{main}{a string specifying the main title to appear on the plot.}
\item{col}{a value for the color, a vector of colors, or a palette for the bars. See the help for \code{colors} and \code{palette}.}
\item{\dots}{other graphical arguments to be passed to the corresponding \code{plot} method, and eventually to the \code{barplot} function.}
}

\value{Returns an object of class \code{'paretoChart'} containing the descriptive statistics used to draw the Pareto chart. This object has associated a \code{print} and \code{plot} mehod.}

\details{A Pareto chart is a barplot where the categories are ordered in non increasing order, and a line is also added to show the cumulative sum.}

\references{
Mason, R.L. and Young, J.C. (2002) \emph{Multivariate Statistical Process Control with Industrial Applications}, SIAM.

Montgomery, D.C. (2005) \emph{Introduction to Statistical Quality Control}, 5th ed. New York: John Wiley & Sons.

Ryan, T. P. (2011), \emph{Statistical Methods for Quality Improvement}, 3rd ed. New York: John Wiley & Sons, Inc.

Scrucca, L. (2004). qcc: an R package for quality control charting and statistical process control. \emph{R News} 4/1, 11-17.

Wetherill, G.B. and Brown, D.W. (1991) \emph{Statistical Process Control}. New York: Chapman & Hall.
}
\author{Luca Scrucca}
\seealso{\code{\link{barplot}}}
\examples{
defect <- c(80, 27, 66, 94, 33)
names(defect) <- c("price code", "schedule date", "supplier code", "contact num.", "part num.")
paretoChart(defect, ylab = "Error frequency")
paretoChart(defect, ylab = "Error frequency", xlab = "Error causes", las=1, cex.names = 0.8)
paretoChart(defect, ylab = "Error frequency", col=rainbow(length(defect)))
paretoChart(defect, cumperc = seq(0, 100, by = 5), ylab2 = "A finer tickmarks grid")
}
\keyword{hplot}
