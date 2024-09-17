import matplotlib.pyplot as plt
import pandas as pd

# Data
data = {
    'year': [2003, 2003, 2003, 2003, 2003, 2003, 2003, 2003, 2003, 2003, 2003, 2003,
             2004, 2004, 2004, 2004, 2004, 2004, 2004, 2004, 2004, 2004, 2004, 2004,
             2005, 2005, 2005, 2005, 2005],
    'month': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
              1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
              1, 2, 3, 4, 5],
    'monthly_revenue': [116692.77, 128403.64, 160517.14, 185848.59, 179435.55, 
                        150470.77, 201940.36, 178257.11, 236697.85, 514336.21, 
                        988025.15, 276723.25, 292385.21, 289502.84, 217691.26, 
                        187575.77, 248325.30, 343370.74, 325563.49, 419327.09, 
                        283799.80, 500233.86, 979291.98, 428838.17, 307737.02, 
                        317192.17, 359711.96, 344820.62, 441474.94]
}

df = pd.DataFrame(data)

# Plot
plt.figure(figsize=(12, 8))
for year in df['year'].unique():
    yearly_data = df[df['year'] == year]
    plt.plot(yearly_data['month'], yearly_data['monthly_revenue'], marker='o', label=f'Year {year}')

plt.xlabel('Month')
plt.ylabel('Monthly Revenue ($)')
plt.title('Seasonal Trends in Monthly Revenue (2003-2005)')
plt.legend(title='Year')
plt.grid(True)
plt.xticks(range(1, 13), ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])
plt.tight_layout()

plt.show()
