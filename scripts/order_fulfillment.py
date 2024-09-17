import matplotlib.pyplot as plt

# Data
fulfillment_times = [0, 1, 2, 3, 4, 5, 6, 7, 8, 65]
order_counts = [14, 50, 49, 52, 52, 59, 45, 2, 2, 1]

# Define color ranges
colors = ['#2ca02c' if x <= 1 else '#ff7f0e' if x <= 6 else '#d62728' for x in fulfillment_times]

# Plot
fig, ax = plt.subplots(figsize=(12, 8))
bars = ax.bar(fulfillment_times, order_counts, color=colors)

# Add labels
ax.set_xlabel('Days')
ax.set_ylabel('Order Count')
ax.set_title('Order Fulfillment Time Analysis')

# Add legend
color_labels = {'0-1 days': '#2ca02c', '2-6 days': '#ff7f0e', '7+ days': '#d62728'}
for label, color in color_labels.items():
    plt.plot([], [], color=color, label=label)
plt.legend(title='Fulfillment Time')

plt.tight_layout()  # Adjust layout to fit labels and titles
plt.show()
