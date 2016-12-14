## Script to Analyze SSA's Database of Baby Names ##
## from 1880-2015 ##
## Obtained from: https://www.ssa.gov/oact/babynames/limits.html ##
## "National data (8Mb)" ##
## Modified as Sample Code for Regulus ##
## November 29, 2016 ##
## Kristopher Standish ##

######################################
## LOAD/ORGANIZE DATA ################

## Set Path To Directory Containing Baby Names
 # This should be an unzipped version of the folder "names.zip"
PathToData <- "/Users/kstandis/Data/Random/Baby_Names/names/"

## Load SSA's Baby Name Database ##
 # Should take ~8-10 seconds
 # Produces a list of Tables, 1 for each year
YEARS <- 1880:2015
DATA <- list()
for ( year in YEARS ) {
	tag <- paste("y",year,sep="")
	DATA[[tag]] <- read.csv(paste(PathToData,"yob",year,".txt",sep=""), header=F )
	if ( year%%10==0 ) { print(year) }
}
