\name{iClick.GARCH}
\alias{iClick.GARCH}

\title{
iClick Output GUI for Fitting Univariate GARCH Models
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
Time series data frame, with 1 first column is the date string.
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
This GUI fits 8 distributions for univariate GARCH with pre-selected GARCH types, and returns a 54-button GUI output. The outputs can be individually saved as .RData file for later use, the last row is the save button.The saved filename is automatically generated. \cr
The 54-button GUI is divided into 9 panes, and the last pane collects coefficient outouts and diagnostic tests together, with an aim to make complex model comparison easy.
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
##==Unmark ## comments, execute the codes,

##data("returnsDaily24")
##dat=timeSeries::as.timeSeries(returnsDaily24) 
  # Creat a timeSeries object 
##y=dat[,5]  #Select the fifth variable

##meanEQ=list(AR=1,MA=0,Exo=NULL, autoFitArma=FALSE,arfimaDiff=FALSE,archM=FALSE)
  # If there are external regressors X, put them as Exo=X
  # autoFitArma=TRUE, If you want to fit arma automatically. 
  # arfimaDiff=TRUE,to take ARFIMA difference
  # archM=TRUE, to estimate GARCH-in-mean

##garchEQ=list(Type="eGARCH",P=1,Q=1, exo=NULL)
  # Type: "sGARCH","eGARCH","gjrGARCH","iGARCH","apGARCH"
  # please check rugarch for details.
  # P is the ARCH order
  # Q is the GARCH order
#iClick.GARCH(y,meanEQ, garchEQ,  n.ahead=15)
# This computation takes 20 seconds.

}
