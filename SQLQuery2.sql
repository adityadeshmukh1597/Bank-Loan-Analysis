SELECT * FROM bank_loan_data

SELECT
     MONTH(issue_date) AS Month_number,
	 DATENAME(MONTH,issue_date) AS Month_Name,
	 COUNT(id) AS Total_Loan_Applications,
	 SUM(loan_amount) AS Total_Funded_Amount,
	 SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date),DATENAME(MONTH,issue_date)
ORDER BY MONTH(issue_date)


SELECT
     address_state,
	 COUNT(id) AS Total_Loan_Applications,
	 SUM(loan_amount) AS Total_Funded_Amount,
	 SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  address_state
ORDER BY  SUM(loan_amount) desc