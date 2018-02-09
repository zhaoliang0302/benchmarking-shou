args <- commandArgs(trailingOnly = TRUE)
print(args)

class(args)

n <- length(args)

if ( n < 3){
	print("Please provide two input files and the number of permutations")
	stop("Did not get enough arguments, exiting...")
}

# check whether files exists:
for (i in 1:(n-1)) {
	if(!file.exists(args[i])){
		print("File ",args[i],"does not exist in the current directory")
		stop("No valid file given. Exiting!")	
	}
}

if(is.na(as.integer(args[n]))){
	print("Last argument must be an integer number")
	stop("No valid number of permutations given. Exiting!")
}

source("CIBERSORT.R")
CIBERSORT(args[1],args[2],perm=as.integer(args[3]))
