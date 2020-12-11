

loans_data <- read.csv("loans.csv", 
                       sep = ",")


library(dplyr)
loans_data_24_A <- loans_data[0:6]
loans_data_24_A = filter(loans_data_24_A, X24_A != "-")
loans_data_24_A$term_in_months <- "24"
loans_data_24_A$Expired_or_Current <- "Expired"
loans_data_24_A$Payment_Status <- "Paid In Full"
loans_data_24_A <- loans_data_24_A[ -c(6) ]



loans_data_12_B <- loans_data[0:7]
loans_data_12_B = filter(loans_data_12_B, X12_B != "-")
loans_data_12_B$term_in_months <- "12"
loans_data_12_B$Expired_or_Current <- "Expired"
loans_data_12_B$Payment_Status <- "Default - Not Paid In Full"
loans_data_12_B <- loans_data_12_B[ -c(6:7) ]



loans_data_12_A <- loans_data[0:8]
loans_data_12_A = filter(loans_data_12_A, X12_A != "-")
loans_data_12_A$term_in_months <- "12"
loans_data_12_A$Expired_or_Current <- "Expired"
loans_data_12_A$Payment_Status <- "Paid In Full"
loans_data_12_A <- loans_data_12_A[ -c(6:8) ]


loans_data_60_D <- loans_data[0:9]
loans_data_60_D = filter(loans_data_60_D, X60_D != "-")
loans_data_60_D$term_in_months <- "60"
loans_data_60_D$Expired_or_Current <- "Current"
loans_data_60_D$Payment_Status <- "Default - Payments Not Being Made"
loans_data_60_D <- loans_data_60_D[ -c(6:9) ]


loans_data_48_C <- loans_data[0:10]
loans_data_48_C = filter(loans_data_48_C, X48_C != "-")
loans_data_48_C$term_in_months <- "48"
loans_data_48_C$Expired_or_Current <- "Current"
loans_data_48_C$Payment_Status <- "Payments Being Made"
loans_data_48_C <- loans_data_48_C[ -c(6:10) ]



loans_data_36_D <- loans_data[0:11]
loans_data_36_D = filter(loans_data_36_D, X36_D != "-")
loans_data_36_D$term_in_months <- "36"
loans_data_36_D$Expired_or_Current <- "Current"
loans_data_36_D$Payment_Status <- "Default - Payments Not Being Made"
loans_data_36_D <- loans_data_36_D[ -c(6:11) ]



loans_data_36_C <- loans_data[0:12]
loans_data_36_C = filter(loans_data_36_C, X36_C != "-")
loans_data_36_C$term_in_months <- "36"
loans_data_36_C$Expired_or_Current <- "Current"
loans_data_36_C$Payment_Status <- "Payments Being Made"
loans_data_36_C <- loans_data_36_C[ -c(6:12) ]



loans_data_12_C <- loans_data[0:13]
loans_data_12_C = filter(loans_data_12_C, X12_C != "-")
loans_data_12_C$term_in_months <- "12"
loans_data_12_C$Expired_or_Current <- "Current"
loans_data_12_C$Payment_Status <- "Payments Being Made"
loans_data_12_C <- loans_data_12_C[ -c(6:13) ]



loans_data_48_A <- loans_data[0:14]
loans_data_48_A = filter(loans_data_48_A, X48_A != "-")
loans_data_48_A$term_in_months <- "48"
loans_data_48_A$Expired_or_Current <- "Expired"
loans_data_48_A$Payment_Status <- "Paid In Full"
loans_data_48_A <- loans_data_48_A[ -c(6:14) ]



loans_data_24_C <- loans_data[0:15]
loans_data_24_C = filter(loans_data_24_C, X24_C != "-")
loans_data_24_C$term_in_months <- "24"
loans_data_24_C$Expired_or_Current <- "Current"
loans_data_24_C$Payment_Status <- "Payments Being Made"
loans_data_24_C <- loans_data_24_C[ -c(6:15) ]



loans_data_60_C <- loans_data[0:16]
loans_data_60_C = filter(loans_data_60_C, X60_C != "-")
loans_data_60_C$term_in_months <- "60"
loans_data_60_C$Expired_or_Current <- "Current"
loans_data_60_C$Payment_Status <- "Payments Being Made"
loans_data_60_C <- loans_data_60_C[ -c(6:16) ]



loans_data_24_B <- loans_data[0:17]
loans_data_24_B = filter(loans_data_24_B, X24_B != "-")
loans_data_24_B$term_in_months <- "24"
loans_data_24_B$Expired_or_Current <- "Expired"
loans_data_24_B$Payment_Status <- "Default - Not Paid In Full"
loans_data_24_B <- loans_data_24_B[ -c(6:17) ]


loans_data_48_D <- loans_data[0:18]
loans_data_48_D = filter(loans_data_48_D, X48_D != "-")
loans_data_48_D$term_in_months <- "48"
loans_data_48_D$Expired_or_Current <- "Current"
loans_data_48_D$Payment_Status <- "Default - Payments Not Being Made"
loans_data_48_D <- loans_data_48_D[ -c(6:18) ]



loans_data_24_D <- loans_data[0:19]
loans_data_24_D = filter(loans_data_24_D, X24_D != "-")
loans_data_24_D$term_in_months <- "24"
loans_data_24_D$Expired_or_Current <- "Current"
loans_data_24_D$Payment_Status <- "Default - Payments Not Being Made"
loans_data_24_D <- loans_data_24_D[ -c(6:19) ]



loans_data_48_B <- loans_data[0:20]
loans_data_48_B = filter(loans_data_48_B, X48_B != "-")
loans_data_48_B$term_in_months <- "48"
loans_data_48_B$Expired_or_Current <- "Expired"
loans_data_48_B$Payment_Status <- "Default - Not Paid In Full"
loans_data_48_B <- loans_data_48_B[ -c(6:20) ]



loans_data_36_A <- loans_data[0:21]
loans_data_36_A = filter(loans_data_36_A, X36_A != "-")
loans_data_36_A$term_in_months <- "36"
loans_data_36_A$Expired_or_Current <- "Expired"
loans_data_36_A$Payment_Status <- "Paid In Full"
loans_data_36_A <- loans_data_36_A[ -c(6:21) ]


loans_data_36_B <- loans_data[0:22]
loans_data_36_B = filter(loans_data_36_B, X36_B != "-")
loans_data_36_B$term_in_months <- "36"
loans_data_36_B$Expired_or_Current <- "Expired"
loans_data_36_B$Payment_Status <- "Default - Not Paid In Full"
loans_data_36_B <- loans_data_36_B[ -c(6:22) ]



loans_data_60_B <- loans_data[0:23]
loans_data_60_B = filter(loans_data_60_B, X60_B != "-")
loans_data_60_B$term_in_months <- "60"
loans_data_60_B$Expired_or_Current <- "Expired"
loans_data_60_B$Payment_Status <- "Default - Not Paid In Full"
loans_data_60_B <- loans_data_60_B[ -c(6:23) ]


loans_data_12_D <- loans_data[0:24]
loans_data_12_D = filter(loans_data_12_D, X12_D != "-")
loans_data_12_D$term_in_months <- "12"
loans_data_12_D$Expired_or_Current <- "Current"
loans_data_12_D$Payment_Status <- "Default - Payments Not Being Made"
loans_data_12_D <- loans_data_12_D[ -c(6:24) ]


loans_data_60_A <- loans_data[0:25]
loans_data_60_A = filter(loans_data_60_A, X60_A != "-")
loans_data_60_A$term_in_months <- "60"
loans_data_60_A$Expired_or_Current <- "Expired"
loans_data_60_A$Payment_Status <- "Paid In Full"
loans_data_60_A <- loans_data_60_A[ -c(6:25) ]

jointloans <- rbind(loans_data_12_A,loans_data_12_B,loans_data_12_C,loans_data_12_D,loans_data_24_A,loans_data_24_B,loans_data_24_C,loans_data_24_D, loans_data_36_A,loans_data_36_B,loans_data_36_C,loans_data_36_D,loans_data_48_A,loans_data_48_B,loans_data_48_C,loans_data_48_D, loans_data_60_A,loans_data_60_B,loans_data_60_C,loans_data_60_D)


write.csv(jointloans, file = 'loans_r_neumann.csv')

