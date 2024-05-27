select * from bank_loan_data

SELECT COUNT(id) AS Total_Loan_Applications FROM bank_loan_data

SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) =2021

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) =2021

SELECT SUM(total_payment) AS Total_Amount_Received FROM bank_loan_data

SELECT SUM(total_payment) AS MTD_Total_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) =2021

SELECT AVG(int_rate) AS AVG_Interest_Rate FROM bank_loan_data


SELECT AVG(int_rate) AS AVG_Interest_Rate FROM bank_loan_data

SELECT AVG(int_rate)*100 AS AVG_Interest_Rate FROM bank_loan_data

SELECT ROUND(AVG(int_rate),4)*100 AS AVG_Interest_Rate FROM bank_loan_data

SELECT ROUND(AVG(int_rate),4)*100 AS MTD_AVG_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) =2021

--pmtd>previous month to date
--mtd>month to date

SELECT ROUND(AVG(int_rate),4)*100 AS PMTD_AVG_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) =2021

SELECT AVG(DTI)*100 AS AVG_DTI FROM bank_loan_data

--DTI>Debt to income ratio	

SELECT ROUND(AVG(DTI),4)*100 AS MTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) =2021


SELECT ROUND(AVG(DTI),4)*100 AS PMTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) =2021

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'	




