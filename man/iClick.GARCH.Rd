\name{iClick.GARCH}
\alias{iClick.GARCH}

\title{
iClick Output GUI for Univariate GARCH Models
}


\encoding{latin1}


\description{
This GUI makes GARCH estimation of comparison easy. With a pre-selected GARCH type, it automatically fits eight probability distributions and conducts all diagnostic tests with a Click.

}
\usage{
iClick.GARCH(dat, meanEQ = meanEQ, garchEQ = garchEQ, n.ahead = 15)
}

\arguments{
  \item{dat}{
Time series data frame, which must be a time series object of timeSeries.
}
  \item{meanEQ}{
Specification of mean equation.
}
  \item{garchEQ}{
Specification of variance equation.
}
  \item{n.ahead}{
Number of out-of-sample forecasting period.
}
}
\details{
This GUI fits 8 distributions for univariate GARCH with pre-selected GARCH types, and returns a 54-button GUI output. The outputs can be individually saved as .RData file for later use, the last row is the save button.The saved filename is automatically generated once clicked, in addition, corresponding .csv files will be generated also.\cr
The 54-button GUI is divided into 9 panes, and the last pane collects coefficient outputs and diagnostic tests together, which aims to make estimation comparison easy.
}
\value{
Fitted GARCH regression output.
}

\author{
Ho Tsung-wu <tsungwu@mail.shu.edu.tw>
}

\seealso{
library(rugarch)
}


\examples{

#data("returnsDaily24")
#temp=timeSeries::as.timeSeries(returnsDaily24)
#y=temp[,5]  

dat=rnorm(300,5,1)
y=ts(dat, start = c(1990, 1), frequency = 12)

meanEQ=list(AR=1,MA=0,Exo=NULL, autoFitArma=FALSE,arfimaDiff=FALSE,archM=FALSE)
  # If there are external regressors X, put them as Exo=X
  # autoFitArma=TRUE, If you want to fit arma automatically. 
  # arfimaDiff=TRUE,to take ARFIMA difference
  # archM=TRUE, to estimate GARCH-in-mean

garchEQ=list(Type="sGARCH",P=1,Q=1, exo=NULL)
  # Type: "sGARCH","eGARCH","gjrGARCH","iGARCH","apGARCH"
  # please check rugarch for details.
  # P is the ARCH order
  # Q is the GARCH order

#Unmark the comments below to execute iClick.GARCH()
##iClick.GARCH(y,meanEQ, garchEQ,  n.ahead=10)


}
