\name{iClick.VisOneReturns}
\alias{iClick.VisOneReturns}

\title{
Visualize Daily Asset Returns
}

\encoding{latin1}


\description{
This GUI conducts plots of daily asset returns, including ACF, PACF, drawdowns, and Talyor effects.\cr
The input returns data must be in percentage form; namely, dlog()*100
}
\usage{
iClick.VisOneReturns(dat)
}

\arguments{
  \item{dat}{
Time series data frame, with 1 first column is the date string.
}
}
\details{
This GUI is designed for financial time series, maily daily stock returns. Other time series data works also, as long as it has a date column.
}
\value{
Output GUI
}

\author{
Ho Tsung-wu <tsungwu@mail.shu.edu.tw>
} 


\examples{
##== Unmark the ## comments, and execute the codes
##data("returnsDaily24")
##dat=timeSeries::as.timeSeries(returnsDaily24) 
  # Creat a timeSeries object 
##y=dat[,5]  #Select the fifth variable
##iClick.VisOneReturns(y)
}
