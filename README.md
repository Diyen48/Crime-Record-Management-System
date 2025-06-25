# 🚨 Crime Record Management System (CRMS)

A PostgreSQL-based relational database designed to streamline crime data handling for law enforcement agencies. This project models real-world entities like FIRs, Cases, Criminals, Police, Victims, and Court Proceedings using an ER-based schema, ensuring efficient tracking and reporting.

---

## 📚 Features

- 🔗 13+ normalized tables ensuring minimal redundancy (up to BCNF)
- 👥 Role-based access logic for police, judiciary, and investigators
- 🧠 Entity-Relationship modeling for structured schema design
- ✅ Secure handling of arrests, evidence, and court outcomes
- ⚙️ Optimized queries and relational integrity using constraints

---

## 🛠 Tech Stack

- **Database**: PostgreSQL
- **GUI**: pgAdmin 4
- **Modeling**: ER Diagram → Relational Schema
- **SQL Concepts**: Joins, Aggregates, Transactions, Views, Indexes

---

## 🚀 How to Use

1. Clone the repo or download the `.sql` file.
2. Open **pgAdmin 4** and connect to your PostgreSQL server.
3. Create a new database (e.g., `crms_db`).
4. Run the provided SQL scripts to create tables and insert sample data.
5. Use SQL queries to test access patterns and reports.

---

## 📂 Project Structure

Crime-Record-Management-System/
├── schema.sql # CREATE TABLE scripts for all entities
├── insert_data.sql # Sample INSERT queries
├── queries.sql # Analytical & role-based SQL queries
├── er_diagram.png # ER diagram (optional visual)
└── README.md # Project documentation
