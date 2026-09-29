import pandas as pd
import matplotlib.pyplot as plt
df = pd.read_csv('c.csv')
data = df.groupby('job_title')['salary_in_usd'].mean().nlargest(3)
k = 1
for i,j in data.items():
    print(f'{k}. "{i}" - средняя зарплата: ${j}')
    k +=1
d2 = df.groupby('experience_level')['salary'].mean()
d2.plot.bar(title='зп по уровню опыта')
plt.xlabel('опыт')
plt.ylabel('зарплата')
plt.show()