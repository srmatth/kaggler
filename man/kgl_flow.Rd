% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kgl_flow.R
\name{kgl_flow}
\alias{kgl_flow}
\title{Kaggle Flow}
\usage{
kgl_flow(id = NULL)
}
\arguments{
\item{id}{Character. Competition name. This accepts 3 formats. Based on the input, the function will try to obtain the correct compeition ID.
\itemize{
\item The competition's URL
\itemize{
\item Checks to see if string start with \verb{https://}
}
\item Kaggle API command from the data tab
\itemize{
\item Checks to see if string starts with \verb{kaggle competitions }
}
\item Direct Competition ID/Name
\itemize{
\item If the two checks above fail, the function will interpret the string as is
}
}}
}
\value{
Nothing.
}
\description{
This is an \strong{experimental} and \strong{opinionated} reproducible workflow for working with kaggle competitions. The Kaggle Flow will always check  if the competition rules are accepted and the data files for the competition are readily available. If they are not, they will be downloaded.
}
\details{
If \code{id} is NULL this function will check to see if there is a previously recorded competition ID in the metadata. This will only exist if \code{kgl_flow()} was ran  in the past for the current R project.
}
\examples{
\dontrun{
library(kaggler)

kgl_flow("titanic")
}
}
\seealso{
Other Kaggle Flows: 
\code{\link{kgl_flow_competition_info}()},
\code{\link{kgl_flow_leaderboard}()},
\code{\link{kgl_flow_load}()},
\code{\link{kgl_flow_meta}()}
}
\concept{Kaggle Flows}
