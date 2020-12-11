# -*- coding: utf-8 -*-
"""
Created on Thu Oct  8 15:10:37 2020

@author: Doug Neumann
"""

import pandas as pd
loans_data = pd.read_csv("loans.csv")

def label_loan (row):
   if row['24_A'] == "X" :
      return '24_A'
   if row['12_B'] == "X" :
      return '12_B'
   if row['12_A'] == "X" :
      return '12_A'
   if row['60_D'] == "X" :
      return '60_D'
   if row['48_C'] == "X" :
      return '48_C'
   if row['36_D'] == "X" :
      return '36_D'
   if row['36_C'] == "X" :
      return '36_C'
   if row['12_C'] == "X" :
      return '12_C'
   if row['48_A'] == "X" :
      return '48_A'
   if row['24_C'] == "X" :
      return '24_C'
   if row['60_C'] == "X" :
      return '60_C'
   if row['24_B'] == "X" :
      return '24_B'
   if row['48_D'] == "X" :
      return '48_D'
   if row['24_D'] == "X":
      return '24_D'
   if row['48_B'] == "X" :
      return '48_B'
   if row['36_A'] == "X" :
      return '36_A'
   if row['36_B'] == "X" :
      return '36_B'
   if row['60_B'] == "X":
      return '60_B'
   if row['12_D'] == "X" :
      return '12_D'
   if row['60_A'] == "X" :
      return '60_A'
   return 'Other'

loans_data['loan_label'] = loans_data.apply (lambda row: label_loan(row), axis=1)

loans_data = loans_data.drop(loans_data.columns[5:25], axis=1)

loans_data[['Loan Term (Months)','Status']] = loans_data.loan_label.str.split("_",expand=True,)

loans_data = loans_data.drop(loans_data.columns[5], axis=1)

def label_status (row):
   if row['Status'] == "A":
      return 'Expired'
   if row['Status'] == "B":
      return 'Expired'
   if row['Status'] == "C":
      return 'Current'
   if row['Status'] == "D" :
      return 'Current'
   return 'Other'

loans_data['Expired or Current'] = loans_data.apply (lambda row: label_status(row), axis=1)

def payment_status (row):
   if row['Status'] == "A":
      return 'Paid In Full'
   if row['Status'] == "B":
      return 'Default - Not Paid In Full'
   if row['Status'] == "C":
      return 'Payments Being Made'
   if row['Status'] == "D" :
      return 'Default - Payments Not Being Made'
   return 'Other'

loans_data['Payment Status'] = loans_data.apply (lambda row: payment_status(row), axis=1)

loans_data = loans_data.drop(loans_data.columns[6], axis=1)

loans_data.to_csv("loans_py.csv")


