
data <- data.frame(a=1:10,b=11:20)
test <- data.frame(b=11:15)

lm_model <- lm(a~.,data=data)
summary(lm_model)
plot(lm_model)

saveRDS(lm_model, 'lm_model.RDS')

lmodel <- readRDS('lm_model.RDS')

pred <- predict(lmodel,newdata = test)

print(pred)
