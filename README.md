# GROUP-6-Database-Assignment
# 🛍️ E-commerce Database Design

## 📦 Peer Group Assignment — Final Submission

Welcome to our E-commerce Database Design project! This repository contains the design and implementation of a fully normalized relational database tailored for an e-commerce platform. This project was completed collaboratively as part of our academic assignment on mastering database modeling, ERDs, and SQL implementation.

---

## 🎯 Objective

To design and implement a relational database for an e-commerce platform using Entity-Relationship modeling and SQL. This includes defining all entities, attributes, relationships, constraints, and variations such as product colors and sizes.

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `ecommerce.sql` | Full SQL script to create the database schema |
| `ecommerce_erd.png` | Visual ERD showing tables, keys, and relationships |
| `README.md` | Project documentation and overview |

---

## 🗃️ Database Tables

The following tables were created to support the data model:

- `product_image` – Stores image references for product items
- `color` – Manages available color options
- `product_category` – Groups products into categories (e.g., electronics, clothing)
- `product` – Contains general product information
- `product_item` – Represents specific purchasable items (SKU level)
- `brand` – Contains brand-related metadata
- `product_variation` – Connects products with their variations (size, color)
- `size_category` – Categorizes sizes (e.g., clothing sizes, shoe sizes)
- `size_option` – Lists specific size options (e.g., S, M, 42)
- `product_attribute` – Stores additional product attributes (e.g., weight, material)
- `attribute_category` – Groups attributes into high-level categories (e.g., technical, physical)
- `attribute_type` – Describes data types for attributes (text, number, boolean)

---

## 🔄 Data Flow Overview

1. **Product** is linked to a **Brand** and **Product Category**.
2. Each **Product** has multiple **Product Variations**.
3. A **Product Variation** can have multiple **Product Items**, defined by **Color** and **Size Option**.
4. **Product Items** can be associated with multiple **Product Images**.
5. **Attributes** such as weight and material are defined through a flexible **Attribute** system.

---

## 📊 ERD

A complete ERD (`ecommerce_erd.png`) is included showing:

- All entities and their attributes
- Primary and foreign keys
- One-to-many and many-to-many relationships
- Constraints and normalization details

---

## 🤝 Group Collaboration

This project was developed collaboratively. Every team member contributed to:

- Database planning & architecture
- ERD design and revisions
- SQL implementation and testing
- Documentation and version control via GitHub

---

## 📂 How to Us
1. Clone the repository:
   ```bash
   git clone https://github.com/tonie123/GROUP-6-Database-Assignment.git

CONTRIBUTERS
Work by,
1. Email; antohkaisa@gmail.com
   Github; https://github.com/tonie123 

2.Email; polinmwangi6115@gmail.com
  Github; https://github.com/Bella-winter
  
3.Email; scholarwambui23@gmail.com
  Github; http://github.com/waweruscholar