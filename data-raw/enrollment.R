
dag <- model2network("[AverageAdmissionScore|AdvancedEducationRate][TransferRate|AdvancedEducationRate][StudentTeacherRatio|AdvancedEducationRate][FirstTimeGraduationRate|AdvancedEducationRate][CoursePassRate|AdvancedEducationRate][EmploymentRate|AdvancedEducationRate][EnrollmentQuota|AdvancedEducationRate][AdvancedEducationRate]")

lv <- c("1", "2")
lv1 <- c("1","2","3")

AdvancedEducationRate <- array(c(0.409,0.591),2,list(AdvancedEducationRate=lv))
AverageAdmissionScore <- array(c(0.27778,0.38889,0.33333,0,0.42308,0.57692),c(3,2),list(AverageAdmissionScore=lv1,AdvancedEducationRate=lv))
TransferRate<- array(c(0.72222,0,0.27778,0.57692,0.23077,0.19231),c(3,2),list(TransferRate=lv1,AdvancedEducationRate=lv))
StudentTeacherRatio<- array(c(0.44444,0.44444,0.11112,0.42308,0.50,0.07692),c(3,2),list(StudentTeacherRatio=lv1,AdvancedEducationRate=lv))
FirstTimeGraduationRate<- array(c(0.16667,0.44444,0.38889,0.34615,0.38362,0.26293),c(3,2),list(FirstTimeGraduationRate=lv1,AdvancedEducationRate=lv))
CoursePassRate<- array(c(0.50,0.38889,0.11111,0.23077,0.38462,0.38462),c(3,2),list(CoursePassRate=lv1,AdvancedEducationRate=lv))
EmploymentRate<- array(c(0.16667,0.44444,0.38889,0.42308,0.38462,0.19231),c(3,2),list(EmploymentRate=lv1,AdvancedEducationRate=lv))
EnrollmentQuota <- array(0.01*c(5.556,16.667,11.111,50,16.667,0,34.615,30.769,23.077,11.538),c(5,2),list(EnrollmentQuota=c("-2","-1","0","1","2"),AdvancedEducationRate=lv))

enrollment <- custom.fit(dag,list(
  AdvancedEducationRate=AdvancedEducationRate,
  AverageAdmissionScore=AverageAdmissionScore,
  TransferRate=TransferRate,
  StudentTeacherRatio=StudentTeacherRatio,
  FirstTimeGraduationRate=FirstTimeGraduationRate,
  CoursePassRate=CoursePassRate,
  EmploymentRate=EmploymentRate,
  EnrollmentQuota=EnrollmentQuota
  ))

usethis::use_data(enrollment, overwrite = TRUE)
