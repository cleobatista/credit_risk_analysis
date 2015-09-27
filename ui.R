shinyUI(pageWithSidebar(
        headerPanel("Risk Credit Analysis"),
        sidebarPanel(
                h3('Input your characteristics'),
                numericInput('Duration', 'Duration (min 4 - max 72)', 4, min = 4, max = 72, step = 1),
                numericInput('Amount', 'Amount (min $250 - max $18424', 250, min = 250, max = 18424, step = 10),
                numericInput('InstallmentRatePercentage', 'Installment Rate Percentage (min 1% - max 4%)', 1.0, min = 1.0, max = 4.0, step = 1),
                numericInput('ResidenceDuration', 'Residence Duration (min 1 - max 4)', 1, min = 1, max = 4, step = 1),
                numericInput('Age', 'Age (min 19 - max 75)', 19, min = 19, max = 75, step = 1),
                numericInput('NumberExistingCredits', 'Number existing credits (min 1 - max 4)', 1, min = 1, max = 4, step = 1),
                numericInput('NumberPeopleMaintenance', 'Number People Maintenance (min 1 - max 2)', 1, min = 1, max = 2, step = 1),
                radioButtons("Telephone", "telephone in your name?",
                                   c("No" = 0,
                                     "Yes" = 1
                                     )),
                radioButtons("ForeignWorker", "Foreign worker?",
                             c("No" = 0,
                               "Yes" = 1
                             )),
                radioButtons("id11", "Checking Account Status",
                             c("0" = 'CheckingAccountStatus.lt.0',
                               "0 to 200" = 'CheckingAccountStatus.0.to.200',
                               "greater than 200" = 'CheckingAccountStatus.gt.200',
                               "none" = 'CheckingAccountStatus.none'
                             )),
                radioButtons("id12", "Credit History",
                             c("No credit taken/ All paid" = 'CreditHistory.NoCredit.AllPaid',
                               "In this bank and all paid" = 'CreditHistory.ThisBank.AllPaid',
                               "Paid Duly" = 'CreditHistory.PaidDuly',
                               "Delay" = 'CreditHistory.NoCredit.Delay',
                               "Critical (not paid)" = 'CreditHistory.Critical'
                               )),
                radioButtons("id13", "Loan Purpose",
                             c("New Car" = 'Purpose.NewCar',
                               "Used Car" = 'Purpose.UsedCar',
                               "Furniture - Equipment" = 'Purpose.Furniture.Equipment',
                               "Radio - Television" = 'Purpose.Radio.Television',
                               "Domestic Appliance" = 'Purpose.DomesticAppliance',
                               "Repairs" = 'Purpose.Repairs',
                               "Education" = 'Purpose.Education',
                               "Vacation" = 'Purpose.Vacation',
                               "Retraining" = 'Purpose.Retraining',
                               "Business" = 'Purpose.Business',
                               "Other" = 'Purpose.Other'
                               )),
                radioButtons("id14", "Saving Account Bonds ($)",
                             c("Lower than 100" = 'SavingsAccountBonds.lt.100',
                               "100 to 500" = 'SavingsAccountBonds.100.to.500',
                               "500 to 1000" = 'SavingsAccountBonds.500.to.1000',
                               "greater than 1000" = 'SavingsAccountBonds.gt.1000',
                               "Unknown" = 'SavingsAccountBonds.Unknown'
                             )),
               radioButtons("id15", "Employment Duration (years)",                            
                            c("Lower than 1" = "EmploymentDuration.lt.1",
                              "1 to 4" = "EmploymentDuration.1.to.4",
                              "4 to 7" = "EmploymentDuration.4.to.7",
                              "Greater than 7" = "EmploymentDuration.gt.7",
                              "Unemployed" = "EmploymentDuration.Unemployed"
                              )),
               radioButtons("id16", "Personal",                            
                            c("Male Divorced or Seperated" = "Personal.Male.Divorced.Seperated",
                              "Female not single" = "Personal.Female.NotSingle",
                              "Male Single" = "Personal.Male.Single",
                              "Male Married or Widowed" = "Personal.Male.Married.Widowed",
                              "Female Single" = "Personal.Female.Single"
                            )),
               radioButtons("id17", "Other debtors guarantors",                            
                            c("None" = "OtherDebtorsGuarantors.None",
                              "CoApplicant" = "OtherDebtorsGuarantors.CoApplicant",
                              "Guarantor" = "OtherDebtorsGuarantors.Guarantor"                              
                            )),
               radioButtons("id18", "Property",                            
                            c("Real Estate" = "Property.RealEstate",
                              "Insurance" = "Property.Insurance",
                              "Car or other" = "Property.CarOther",
                              "Unknown" = "Property.Unknown"
                            )),
               radioButtons("id19", "Other Installment Plans",                            
                            c("Bank" = "OtherInstallmentPlans.Bank",
                              "Stores" = "OtherInstallmentPlans.Stores",
                              "None" = "OtherInstallmentPlans.None"
                            )),
               radioButtons("id20", "Housing",                            
                            c("Rent" = "Housing.Rent",
                              "Own" = "Housing.Own",
                              "For Free" = "Housing.ForFree"
                            )),
               radioButtons("id21", "Job",                            
                            c("Unemployed/Unskilled" = "Job.UnemployedUnskilled",
                              "Unskilled Resident" = "Job.UnskilledResident",
                              "Skilled Employee" = "Job.SkilledEmployee",
                              "Management/Self Employee/Highly Qualified" = "Job.Management.SelfEmp.HighlyQualified"
                            )),
               actionButton("do",'Go!')
               
        ),
        mainPanel(
                h3('You\'re considered:'),
                textOutput('text33')
                
                
        )
))