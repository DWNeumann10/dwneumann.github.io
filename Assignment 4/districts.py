# -*- coding: utf-8 -*-
"""
Created on Thu Oct  8 21:19:38 2020

@author: 12607
"""
import pandas as pd
districts_data = pd.read_csv("districts.csv")
districts_data[['Unemployment_rate_95','Unemployment_rate_96']] = districts_data.unemployment_rate.str.split(",",expand=True,)
districts_data["Unemployment_rt_95"] = districts_data.Unemployment_rate_95.str.strip('[')
districts_data["Unemployment_rt_96"] = districts_data.Unemployment_rate_96.str.strip(']')
del districts_data['unemployment_rate']
del districts_data['Unemployment_rate_95']
del districts_data['Unemployment_rate_96']


districts_data[['cc_95','cc_96']] = districts_data.commited_crimes.str.split(",",expand=True,)
del districts_data['commited_crimes']
districts_data["commited_crime_95"]=districts_data.cc_95.str.strip('[')
districts_data["commited_crime_96"]=districts_data.cc_96.str.strip(']')
del districts_data['cc_95']
del districts_data['cc_96']


districts_data[['Population_less_than_500','Population_500-1999', 'Population_2000-9999', 'Population_greater_or_equal_to_10000']] = districts_data.municipality_info.str.split(",",expand=True,)
districts_data["Pop_<_500"]=districts_data.Population_less_than_500.str.strip('[')
districts_data["Pop_>=_10000"]=districts_data.Population_greater_or_equal_to_10000.str.strip(']')
del districts_data['Population_less_than_500']
del districts_data['Population_greater_or_equal_to_10000']
del districts_data['municipality_info']


districts_data.to_csv("districts_py.csv")