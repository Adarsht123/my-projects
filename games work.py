#!/usr/bin/env python
# coding: utf-8

# In[6]:


import pandas as pd


# In[7]:


df=pd.read_csv("C:/Users/Student/Desktop/android-games.csv")
df.head()


# In[8]:


import matplotlib.pyplot as plt
plt.boxplot(df['price'])
plt.show()


# In[9]:


df['total ratings'].describe()


# In[10]:


plt.subplot(1,2,1)
plt.boxplot(df['total ratings'])
plt.subplot(1,2,2)
plt.boxplot(df['total ratings'])
plt.yscale('log')
plt.show()


# In[11]:


plt.hist(df['total ratings'])
plt.show()


# In[12]:


plt.hist(df['total ratings'])
plt.yscale('log')
plt.show()


# In[13]:


plt.scatter(df['total ratings'],df['average rating'])
plt.show()


# In[14]:


plt.bar(df['total ratings'],df['average rating'])
plt.show()


# In[ ]:




