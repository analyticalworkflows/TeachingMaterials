# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Simulate the dynamics of a predator and a prey population according 
# to the Lotka-Volterra model. The data produced will subsequently 
# be used to test the performance of several population dynamic 
# model-fitting routines.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~
# Load libraries ----
# ~~~~~~~~~~~~~~~~~~~
library(deSolve)

# ~~~~~~~~~~~~~~~~~~~
# Load functions ----
# ~~~~~~~~~~~~~~~~~~~
# None required

# ~~~~~~~~~~~~~~~~~
# Define model ----
# ~~~~~~~~~~~~~~~~~
LVmod <-
  function(Time, State, Pars) {
    with(as.list(c(State, Pars)), {
      Ingestion    <- rIng  * Prey * Predator
      GrowthPrey   <- rGrow * Prey * (1 - Prey / K)
      MortPredator <- rMort * Predator
      
      dPrey        <- GrowthPrey - Ingestion
      dPredator    <- Ingestion * assEff - MortPredator
      
      return(list(c(dPrey, dPredator)))
    })
}

# ~~~~~~~~~~~~~~~~~~~~~
# Define parameters ----
# ~~~~~~~~~~~~~~~~~~~~~
pars <- c(rIng   = 0.2,    # /day, rate of ingestion
	        rGrow  = 1.0,    # /day, prey growth rate
	        rMort  = 0.2 ,   # /day, predator mortality
	        assEff = 0.5,    # assimilation efficiency
	        K      = 10)     # mmol/m3, carrying capacity

# ~~~~~~~~~~~~~~~~~~~
# Simulate model ----
# ~~~~~~~~~~~~~~~~~~~
yinit  <- c(Prey = 1, Predator = 2)
times <- seq(0, 200, by = 1)
out   <- ode(yinit, times, LVmod, pars)
summary(out)

# ~~~~~~~~~~~~~~~~~
# Plot results ----
# ~~~~~~~~~~~~~~~~~
plot(out)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# =======================================================
#  ===  Messy example to demonstrate 'Reformat Code' ====
# =======================================================

LVmod<-function(Time,State,Pars){with(as.list(c(State,Pars)), {
Ingestion<-rIng*Prey*Predator; GrowthPrey<-rGrow*Prey*(1-Prey/K); MortPredator<-rMort*Predator
dPrey<-GrowthPrey-Ingestion; dPredator<-Ingestion*assEff-MortPredator
return(list(c(dPrey,dPredator)))})}