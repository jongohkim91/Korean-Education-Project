# Clear plots
if(!is.null(dev.list())) dev.off()
# Clear console
cat("\014") 
# Clean workspace
rm(list=ls())
# Set working directory
setwd("C:/Users/seacr/Desktop/Side Projects/Korea Education Project")
library(ProjectTemplate)
#loading project
load.project()

#necessary variables
var_list <- c('BYSID', #individual ID
              'BYHID', #household ID
              'GENDER', #gender
              'F11Y01001', #Whether currently enrolled in a university?
              'F11Y01002', #type of the university
              'F11Y01003c', #the university code
              'F11Y01004c', #code of a department the person belongs to
              'F11Y01005c', #code of one's major
              'F11Y01006', #type of university education(ordinary / night classes / cyber education)
              'F11Y01007', #location of the university
              'F11Y01008', #the year of enrollment
              'F11Y01009', #the year of transfer(to current university)
              'F11Y01010', #the semester of transfer(to current university)
              'F11Y01011', #the reason of the transfer
              'F11Y01012', #whether a person has taken private tutoring or private prep classes in the final year of high school
              
              'F11Y01193', #year of enrollment(graduate school)
              'F11Y01194', #the semester in the year of enrollment
              'F11Y01195', #type of graduate school
              'F11Y01196', #type of program(master's, doctorate including master's, and etc.)
              'F11Y01197c', #the graduate school code
              'F11Y01198c', #code of one's major
              'F11Y01199', #location of the graduate school(by state)
              'F11Y01200', #the first reason why a person has entered the graduate school
              'F11Y01201', #the second reason why a person has entered the graduate school
              'F11Y01202', #does the major of the graduate program matches with the major in bachelor 
              
              'F11Y02001', #educational achievement(for those who are not currently enrolled in a university or a graduate school)
              'F11Y02144', #the type of graduate program a person has dropped out from
              'F11Y02145', #the time a person has dropped out from tertiary education or higher
              'F11Y02146c', #the code of university a person has dropped out from
              'F11Y02147c', #the code of department
              'F11Y02148c', #the code of major
              'F11Y02149', #the location of the university 
              'F11Y02150', #reason why a person has dropped out
              'F11Y02151', #whether a person is planning to enroll in a bachelor program
              'F11Y02152', #first reason why a person is planning to enroll in a bachelor program
              'F11Y02153', #second reason why a person is planning to enroll in a bachelor program
              'F11Y02170', #whether a person is planning to enroll in a graduate program
              'F11Y02171', #first reason why a person is planning to enroll in a graduate program
              'F11Y02172', #second reason why a person is planning to enroll in a graduate program
              'F11Y02180', #whether a person is planning to study abroad
              'F11Y02181', #when is a person planning to study abroad?
              'F11Y02182', #to which region is a person planning to study abroad?
              'F11Y02183', #which type of program is person planning to apply for to study abroad?
              
              'F11Y03001', #Whether a person has tried to look for a job(part-time excluded) for the past year
              'F11Y03002', #If not, why?
              'F11Y03003', #If so, how long is a person looking for a job?
              'F11Y03004', #Whether a person got rejections during job search
              'F11Y03005', #If so, how many rejections?
              'F11Y03006', #What does a person think the major reason why the person has failed getting a job?
              'F11Y03007', #Has a person had vocational training?
              'F11Y03008', #Did the vocational training help?
              'F11Y03009', #Has a person acquired a certain certificate? 
              'F11Y03010', #Did acquiring a certificate help?
              'F11Y03011', #Has a person used job information service, such as linkedin?
              'F11Y03012', #Did the service help?
              'F11Y03013', #Has a person asked someone a favor to hire him/her? 
              'F11Y03014', #Did that help?
              'F11Y03015', #Has a person used career service from one's school or university?
              'F11Y03016', #Did it help?
              'F11Y03017', #Has a person met an HR personnel and asked the personnel to hire him/her? 
              'F11Y03018', #Did it help?
              'F11Y03019', #Has a person taken interview training? 
              'F11Y03020', #Did it help?
              'F11Y03021', #Has a person taken a job aptitude/interest test?
              'F11Y03022', #Did it help?
              'F11Y03023', #Has a person gone to any public job fair?
              'F11Y03024', #Did it help?
              'F11Y03025', #Has a person written a post that the person is looking for a job on the internet?
              'F11Y03026', #Did it help?
              'F11Y03027', #Was a person in a part of group study with fellow job searchers?
              'F11Y03028', #Did it help?
              'F11Y03029', #The best channel to obtain job information 
              'F11Y03030'  #The second best channel to obtain job information
              
)

summary(as.factor(edu_sum$F11Y01001))#Whether currently enrolled in a university?

#dropping missing values, refer to the 'missing values.txt'
edu_sum <- edu_sum %>%
  filter(F11Y01001>0)

#caching the dataset for faster analysis
cache("edu_sum")
