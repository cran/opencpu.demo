pkgname <- "opencpu.demo"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('opencpu.demo')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("liveplot")
### * liveplot

flush(stderr()); flush(stdout())

### Name: liveplot
### Title: Plot live stock data.
### Aliases: liveplot

### ** Examples

liveplot("GOOG")
# Is equivalent to e.g:
# http://beta1.opencpu.org/R/call/opencpu.demo/liveplot/png?ticker="GOOG"
# http://beta1.opencpu.org/R/call/opencpu.demo/liveplot/pdf?ticker="GOOG"
# http://beta1.opencpu.org/R/call/opencpu.demo/liveplot/png?ticker="YHOO"
# http://beta1.opencpu.org/R/call/opencpu.demo/liveplot/png?ticker="YHOO"&!width=1000&!height=800



cleanEx()
nameEx("nabel")
### * nabel

flush(stderr()); flush(stdout())

### Name: nabel
### Title: Plot NABEL data
### Aliases: nabel

### ** Examples

## plot daily mean NO2 concentrations at three stations
## from 1 January 2011 up to today
library(opencpu.demo);
nabel("no2",
      c("Bern", "Basel", "Zürich"),
      "daily",
      "free",
      "2011-01-01",
      Sys.Date())



cleanEx()
nameEx("testplothandlers")
### * testplothandlers

flush(stderr()); flush(stdout())

### Name: testplothandlers
### Title: Test opencpu plotting
### Aliases: testplothandlers

### ** Examples

testplothandlers(); #should generate six plots
# Equivalent to:
# http://beta1.opencpu.org/R/call/opencpu.demo/testplothandlers/save



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
