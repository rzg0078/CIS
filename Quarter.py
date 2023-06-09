#!/usr/bin/env python
# coding: utf-8

# In[16]:


def get_quarters_and_previous_month(date_string):
    year = date_string[:4]
    month = date_string[4:]

    current_quarter = (int(month) - 1) // 3 + 1
    previous_quarter = (current_quarter - 2) % 4 + 1
    future_quarter = (current_quarter % 4) + 1

    previous_month = int(month) - 1
    if previous_month == 0:
        previous_month = 12
        year = str(int(year) - 1)
    previous_month = str(previous_month).zfill(2)

    quarter_mapping = {
        1: "Q1",
        2: "Q2",
        3: "Q3",
        4: "Q4"
    }

    result = {
        "current_quarter": quarter_mapping[current_quarter],
        "previous_quarter": quarter_mapping[previous_quarter],
        "future_quarter": quarter_mapping[future_quarter],
        "previous_month": year + previous_month
    }
    return result

# Get user input for date
date_string = input("Enter a date in YYYYMM format: ")
result = get_quarters_and_previous_month(date_string)
print(result)


# In[7]:


print(2%4)


# In[8]:


print(9//3)


# In[12]:


val1 = 1
val2 = 2
 
# using the modulus operator
res = val1 % val2
print(res)


# In[22]:


length = float(input("enter the length of rectangle"))
width = float(input("enter the width of rectangle"))
area = float(length * width)
print(area)


# In[ ]:




