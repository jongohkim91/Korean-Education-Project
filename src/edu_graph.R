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


###creating multiple graphs related to education

#current enrollment status

#plotting graphs for better overview of the dataset
current_enrollment <- edu_sum %>%
  group_by(F11Y01001) %>%
  summarise(n = n())
current_enrollment$F11Y01001 <- c("Bachelor level", "Graduate school", 'No')

plot <- ggplot(data = current_enrollment,
               aes(x = as.factor(F11Y01001),
                   y = n)
)
plot <- plot + 
  geom_bar(aes(fill = as.factor(F11Y01001)),
           stat = "identity") +
  scale_fill_discrete(name = "Current Enrollment Status") + 
  labs(title = "Are you currently enrolled in a university?",
       x = NULL,
       y = "Frequency") +
  #scale_fill_discrete(name = NULL, 
  #                    labels = c("Bachelor level", "Graduate school", 'No')
  #                    ) +
  geom_text(aes(label = n), vjust = -0.5)
plot