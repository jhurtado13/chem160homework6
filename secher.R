sr<-read.table("secher.txt",header=TRUE)
model1<-lm(bwt~bpd, data=sr)
model2<-lm(bwt~ad, data=sr)
sum.model1<-summary(model1)
sum.model2<-summary(model2)
R2<-sum.model1$r.squared
r2<-sum.model2$r.squared
f<-sum.model1$fstatistic
g<-sum.model2$fstatistic
p.value1<-pf(f[1],f[2],f[3],lower.tail=F)
p.value2<-pf(g[1],g[2],g[3],lower.tail=F)
output1<-sprintf("bwt~bpd R2 = %f and p-value=%e", R2, p.value1)
cat(output1,'\n')
output2<-sprintf(" bwt~ad R2 = %f and p-value=%e", r2, p.value2)
cat(output2,'\n')
intercept1<-model1$coefficients[1]
slope1<-model1$coefficients[2]
intercept2<-model2$coefficients[1]
slope2<-model2$coefficients[2]
output3<-sprintf("bwt~bpd slope=%f and intercept=%f",slope1, intercept1)
cat(output3,'\n')
output4<-sprintf(" bwt~ad slope=%f and intercept=%f",slope2, intercept2,'\n')
cat(output4,'\n')
png("bwt_bpd.png")
plot(bwt~bpd, data=sr)
abline(model1)
dev.off()
png("bwt_ad.png")
plot(bwt~ad, data=sr)
abline(model2)
dev.off()
model3<-lm(bwt~bpd+ad, data=sr)
sum.model3<-summary(model3)
ar2<-sum.model3$r.squared
h<-sum.model3$fstatistic
p.value3<-pf(h[1],h[2],h[3],lower.tail=F)
output5<-sprintf(" bwt~bpd+ad R2 = %f and p-value=%e", ar2, p.value3,'\n')
cat(output5,'\n')
