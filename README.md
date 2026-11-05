# 🍽️ Expresso's Restaurant - Online Food Menu & Management System

An interactive, database-driven web application built with **ASP.NET (C# Web Forms)** and **Microsoft SQL Server**. The system enables customers to explore food menu items and place orders, while providing a dedicated administrative portal to manage food items, upload dish images, and monitor registered users.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Key Features](#-key-features)
  - [Customer Portal](#customer-portal)
  - [Admin Portal](#admin-portal)
- [System Architecture & Tech Stack](#-system-architecture--tech-stack)
- [Future Enhancements](#-future-enhancements)

## 📖 Overview

**Expresso's Restaurant** is an end-to-end web portal designed to digitize dining and restaurant operations. It features a responsive customer-facing website with dynamic menu listings and customer engagement tools, backed by an admin management suite that simplifies menu updates, image handling, and customer record management.

---

## ✨ Key Features

### 👤 Customer Portal
* **Interactive Home & Landing Page (`Home.aspx`):** Visually engaging welcome page with quick navigation links and custom restaurant branding.
* **Dynamic Menu (`Menu.aspx`):** Food items fetched live from SQL Server and displayed using ASP.NET `DataList` controls formatted into responsive cards with dish photos, names, and pricing.
* **Instant Ordering:** Quick "Order Now" action with interactive delivery status confirmation.
* **User Registration & Validation (`Register.aspx`):**
  * Profile creation (name, username, password, contact details, email).
  * Cascading Dropdowns: Selecting a **State** automatically loads corresponding **Cities** via SQL queries.
* **Authentication & Session Tracking (`Login.aspx`):** Secure customer login that initiates session management, updating the navigation bar dynamically (displaying user greeting and Log Out button).
* **Feedback & Contact Form (`Contact.aspx`):** Inquiries and customer feedback stored directly into the database.
* **About Us (`About.aspx`):** Restaurant mission, story, values, and location information.

### 🛡️ Admin Portal
* **Dual Login Authentication (`Login.aspx`):** Smart login routing that differentiates between regular customers and administrators.
* **Food Item Management - CRUD (`Viewitems.aspx`):**
  * Interactive `GridView` allowing in-place editing of item names and prices.
  * Delete food items directly with real-time database synchronization.
* **New Item Upload (`InsertData.aspx`):**
  * Form to add item ID, name, price, and dish image.
  * Automatic file upload saving images to the `~/images/` directory.
* **User Management (`users.aspx`):** Tabular view of all registered customers with address and contact data.
* **Dedicated Admin Master Layout (`MasterPage2.master`):** Sidebar navigation layout tailored for administrative workflows.

---

## 🛠️ System Architecture & Tech Stack

| Layer | Technology |
|---|---|
| **Frontend** | ASP.NET Web Forms, HTML5, CSS3, Bootstrap 4 |
| **Backend / Code-Behind** | C# (.NET Framework 4.0 / 4.x) |
| **Database** | Microsoft SQL Server Express (`.mdf` / LocalDB) |
| **Data Access** | ADO.NET (`SqlConnection`, `SqlCommand`, `SqlDataReader`, `SqlDataAdapter`) |
| **Development Environment** | Visual Studio 2010 / 2012 / 2015 / 2019 / 2022 |


## 🔮 Future Enhancements
- 🛒 **Full Shopping Cart:** Quantity selection, cart calculation, and checkout summaries.
- 💳 **Online Payment Gateway:** Integration with Razorpay, Stripe, or PayPal.
- 🔒 **Security Hardening:** Password hashing (BCrypt/SHA-256) and Parameterized SQL Queries on all pages to prevent SQL injection.
- 📱 **Order Tracking Dashboard:** Real-time order progress updates from kitchen to delivery.