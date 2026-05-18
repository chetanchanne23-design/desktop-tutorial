from faker import Faker
import pandas as pd
import random

fake = Faker()

products = []

for i in range(1, 1001):
    products.append([
        i,
        fake.word().capitalize() + " Product",
        random.choice([
            "Beverages",
            "Snacks",
            "Personal Care",
            "Dairy"
        ]),
        fake.company(),
        random.randint(50, 500),
        random.randint(20, 300),
        random.randint(1, 20),
        random.randint(30, 365)
    ])

products_df = pd.DataFrame(products, columns=[
    "product_id",
    "product_name",
    "category",
    "brand",
    "unit_price",
    "manufacturing_cost",
    "weight_kg",
    "shelf_life_days"
])

products_df.to_csv("products.csv", index=False)

print("Products dataset generated successfully")