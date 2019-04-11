 Feature: As a HR Ops user I should be able to create a DP(Distribution Point) in the system

 Scenario :Verify user should be able to check mandatory fields for DP creation
 Given User logs into obelix dashboard
 When User successfully land into DP page
 Then User creates a DP by selecting city and station respectively
 And Verify user creates a DP by providing following mandatory fields
 |DP Store Name|DP FE Name|DP Address|Display ID|Employee ID|Mobile Number|Login OTP|Date of Joining|Active Payroll|Location: lat/long|
 | StoreName|DPFEName|DPAddress|ID|EmployeeID|MobileNumber|LoginOTP|DateofJoining|ActivePayroll|lat/long|
 Then Verify user creates an DP by clicking on submit button
 And Verify Success message after DP creation

