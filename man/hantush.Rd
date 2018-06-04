% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hantush.R
\name{hantush}
\alias{hantush}
\title{Streamflow depletion in partially penetrating stream with semipervious streambed.}
\usage{
hantush(t, d, S, Kh, b, Kriv, briv, prec = 80)
}
\arguments{
\item{t}{times you want output for [T]}

\item{d}{distance from well to stream [L]}

\item{S}{aquifer storage coefficient (specific yield if unconfined; storativity if confined)}

\item{Kh}{aquifer horizontal hydraulic conductivity [L/T]}

\item{b}{aquifer saturated thickness [L]}

\item{Kriv}{streambed semipervious layer hydraulic conductivity [L/T]}

\item{briv}{streambed semipervious layer thickness [L]}

\item{prec}{precision for mpfr package for storing huge numbers; 80 seems to generally work but tweak this if you get weird results.}
}
\value{
\code{Qf}, numeric or vector of streamflow depletion as fraction of pumping rate [-]. 
If the pumping rate of the well (\code{Qw}; [L3/T]) is known, you can calculate volumetric streamflow depletion [L3/T] as \code{Qf*Qw}
}
\description{
Described in Hantush (1965). As the leakance term \code{(b*Kh/Kriv)} approaches 0 this is equivalent to \code{glover}.
}
\details{
Assumptions:
\itemize{
  \item Horizontal flow >> vertical flow (Dupuit assumptions hold)
  \item Homogeneous, isotropic aquifer
  \item Constant \code{Tr}: Aquifer is confined, or if unconfined change in head is small relative to aquifer thickness
  \item Stream is straight, infinitely long, and remains in hydraulic connection to aquifer
  \item Constant stream stage
  \item No changes in recharge due to pumping
  \item No streambank storage
  \item Constant pumping rate
  \item Aquifer extends to infinity
}
}
\references{
Hantush, MS (1965). Wells near Streams with Semipervious Beds. Journal of Geophysical Research 70(12): 2829-38. doi:10.1029/JZ070i012p02829.
}