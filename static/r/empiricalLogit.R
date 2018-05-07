elogit <- function(x, y, nbins = NULL, breaks = NULL) 
{
  if (is.factor(y)) y <- ifelse(y == levels(y)[2], 1, 0)
  if(is.null(nbins) & is.null(breaks)) stop("You must specify either nbins or breaks")
  
  # STEP 1
  # create "nbins" number of equal-length bins using x values
  if(!is.null(nbins)) {
    hbreaks <- seq(min(x), max(x), l = nbins + 1)
  } else {
    hbreaks <- breaks
  }
  
  hist.res <- hist(x, breaks = hbreaks, plot = F)
  brks <- hist.res$breaks
  
  # get the midpoint x value for each bin 
  midpt.x <- hist.res$mid
  
  # STEP 2:
  # cut command: assign each data point to one of the bins, using right interval inclusion and including minimum x value in the lowest bin
  groups <- cut(x, breaks = brks, include.lowest = T)
  
  # number of cases that fall in each bin
  groups.n <- table(groups)
  
  # STEP 3: 
  # get the empirical prop. of successes in each group
  emp.prop <- (tapply(y, groups, sum) + .5) / (groups.n + 1)
  
  # empirical odds of successes in each group
  emp.odds<- emp.prop/(1-emp.prop)
  
  # empirical log odds of successes in each group
  emp.logodds <- log(emp.odds)
  
  RES <- data.frame(group = names(groups.n),
                    count = as.numeric(groups.n),
                    midpoint.x = midpt.x,
                    eprob = as.numeric(emp.prop),
                    eodds = as.numeric(emp.odds),
                    elogit = as.numeric(log(emp.odds)))
  RES
}