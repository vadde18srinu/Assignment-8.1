
1. Use the package RcmdrPlugin.IPSUR. data(RcmdrTestDrive) and perform the below operations:

library(tidyr)  
library(plyr)
 
rownames(RcmdrTestDrive)
names(RcmdrTestDrive)
summary(RcmdrTestDrive)
data(RcmdrTestDrive)

a. Calculate the average salary by gender and smoking status.
    #code:   
    tapply(RcmdrTestDrive$salary,list(gender=RcmdrTestDrive$gender),mean)
    # average salary gender wise
    #Female=698.0911, Male=743.3915
    
    #smoking status
    tapply(RcmdrTestDrive$smoking,list(gender=RcmdrTestDrive$gender),list)
    tapply(RcmdrTestDrive$gender,list(smoking=RcmdrTestDrive$smoking),list)

b. Which gender has the highest mean salary?

  #code:   
  tapply(RcmdrTestDrive$salary,list(gender=RcmdrTestDrive$gender),mean)
  # average salary gender wise
  #Female=698.0911, Male=743.3915
  #Male gender mean =743.3915, is the highest mean salary 


c. Report the highest mean salary.
  #code: 
  median(RcmdrTestDrive$salary)
  Highest mean is Median = 710.15
  
d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.
# standard deviation genderwise male female.   
  tapply(RcmdrTestDrive$salary,list(gender=RcmdrTestDrive$gender),sd)
# Sd-Female=130.7053; Sd-Male=158.5423

