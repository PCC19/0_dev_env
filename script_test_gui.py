import matplotlib
#matplotlib.use("agg")
import matplotlib.pyplot as plt

# Sample data
x = [1, 2, 3, 4, 5]
y = [2, 3, 5, 7, 11]

# Create a line plot
plt.plot(x, y, marker='o')

# Add titles and labels
plt.title('Simple Line Graph')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')

print("HEllo World")
# Show the plot
plt.grid()
plt.show()
