import pandas as pd

# Load dataset
sales_df = pd.read_csv("sales.csv")

# Remove duplicate rows
sales_df = sales_df.drop_duplicates()

# Handle missing values
sales_df = sales_df.fillna(0)

# Convert date column
sales_df['Date'] = pd.to_datetime(sales_df['Date'])

# Create calculated column
sales_df['Average_Price'] = (
    sales_df['Sales_Amount'] / sales_df['Quantity']
)

# Save cleaned file
sales_df.to_csv("sales_cleaned.csv", index=False)

print("Data cleaning completed successfully")