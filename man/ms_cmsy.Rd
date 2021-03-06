% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ms_cmsy.R
\name{ms_cmsy}
\alias{ms_cmsy}
\title{Multispecies cMSY (beta version)}
\usage{
ms_cmsy(catch, stocks, res, id_fixed, npairs = 5000)
}
\arguments{
\item{catch}{A dataframe with a 'year' column and additional columns containing
the catch for each species in the multispecies fishery.}

\item{stocks}{A character vector with the names of the species in the multispecies fishery.
Must be reported in the same order as the catch columns.}

\item{res}{A character vector with the resilience estimates for species in the
multispecies fishery. Must be reported in the same order as the catch columns.
Can be retrieved using the datalimited2::resilience() function.}

\item{id_fixed}{A boolean (TRUE or FALSE) indicating whether to (TRUE) fix initial saturation at
one (no depletion) or (FALSE) whether the initial saturation should be estimated.}

\item{npairs}{The number of r-K pairs that should be evaulated. The default is 5,000.}
}
\value{
A list with the following elements:
\item{stocks}{Names of the analyzed stocks/species}
\item{yrs}{Years represented in the time series}
\item{r_priors}{R priors for each species}
\item{k_priors}{K priors for each species}
\item{s1_priors}{Initial saturation priors for each species}
\item{s2_priors}{Final saturation priors for each species}
\item{id_try}{Initial saturation values evaluated}
\item{r_try}{R values evaluated}
\item{k_try}{K values evaluated}
\item{id_rk_v}{Viable r-K-initial saturation combos}
\item{b_v}{Viable biomass trajectories}
\item{bbmsy_v}{Viable B/BMSY trajectories}
\item{bbmsy_v_median}{Median of viable B/BMSY trajectories (cMSY estimate of status)}
\item{er_v}{Viable exploitation rate trajectories}
\item{er_vv}{Most probable exploitation rate trajectories based on effort constraint}
\item{top_corr}{Most highly correlated r-k-initial saturation combos from each row of correlation matrix}
\item{bbmsy_vv}{Most probable B/BMSY trajectories based on effort constraint}
\item{bbmsy_vv_median}{Median of most probable B/BMSY trajectories (MS-cMSY estimate of status)}
\item{method}{Name of the method}
}
\description{
Estimates stock status (B/BMSY) time series for multispecies fisheries from
time series of catch and estimates of resilience uing the multispecies cMSY
(MS-cMSY) method of Free et al. (in prep). Note: this model is still under development.
}
\references{
Free CM, Rudd MB, Kleisner KM, Thorson JT, Longo C, Minto C,
Jensen OP (in prep) Multispecies catch-only models for assessing data-limited fisheries.
}
