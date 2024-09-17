import matplotlib.pyplot as plt
import pandas as pd

# Data
data = {
    'employeeNumber': [1370, 1165, 1401, 1501, 1504, 1323, 1612, 1337, 1611, 1216],
    'lastName': ['Hernandez', 'Jennings', 'Castillo', 'Bott', 'Jones', 'Vanauf', 'Marsh', 'Bondur', 'Fixter', 'Patterson'],
    'firstName': ['Gerard', 'Leslie', 'Pamela', 'Larry', 'Barry', 'George', 'Peter', 'Loui', 'Andy', 'Steve'],
    'officeCode': [4, 1, 4, 7, 7, 3, 6, 4, 6, 2],
    'order_count': [43, 34, 31, 22, 25, 22, 19, 20, 19, 18],
    'total_sales': [1258577.81, 1081530.54, 868220.55, 732096.79, 704853.91, 669377.05, 584593.76, 569485.75, 562582.59, 505875.42]
}

# Create DataFrame
df = pd.DataFrame(data)

# Color coding
order_colors = ['#1f77b4' if x >= 30 else '#ff7f0e' for x in df['order_count']]
sales_colors = ['#2ca02c' if x >= 700000 else '#d62728' for x in df['total_sales']]

# Plot
fig, ax1 = plt.subplots(figsize=(14, 8))

# Bar chart for order_count with color coding
bars1 = ax1.bar(df['lastName'], df['order_count'], color=order_colors, label='Order Count')
ax1.set_xlabel('Employee Last Name')
ax1.set_ylabel('Order Count', color='#1f77b4')
ax1.tick_params(axis='y', labelcolor='#1f77b4')

# Line chart for total_sales with color coding
ax2 = ax1.twinx()
lines2 = ax2.plot(df['lastName'], df['total_sales'], color='#2ca02c', marker='o', linestyle='-', linewidth=2, label='Total Sales')
ax2.set_ylabel('Total Sales ($)', color='#2ca02c')
ax2.tick_params(axis='y', labelcolor='#2ca02c')

# Title and Legend
plt.title('Employee Performance Analysis')
fig.tight_layout()
ax1.legend(loc='upper left')
ax2.legend(loc='upper right')

plt.show()
