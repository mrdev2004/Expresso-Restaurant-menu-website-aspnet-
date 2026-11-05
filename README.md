# 🍽️ Expresso's Restaurant - Online Food Menu & Management System

An interactive, database-driven web application built with **ASP.NET (C# Web Forms)** and **Microsoft SQL Server**. The system enables customers to explore food menu items and place orders, while providing a dedicated administrative portal to manage food items, upload dish images, and monitor registered users.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Key Features](#-key-features)
  - [Customer Portal](#customer-portal)
  - [Admin Portal](#admin-portal)
- [System Architecture & Tech Stack](#-system-architecture--tech-stack)
- [Database Schema](#-database-schema)
- [Project Directory Structure](#-project-directory-structure)
- [Getting Started & Installation](#-getting-started--installation)
- [Database Configuration](#-database-configuration)
- [How to Upload to GitHub](#-how-to-upload-to-github)
- [Future Enhancements](#-future-enhancements)

---

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

---

## 🗄️ Database Schema

The database (`Database1.mdf`) consists of the following core tables:

1. **`Login_2` (Customers)**
   - `id` (int, Primary Key)
   - `fname`, `lname` (varchar)
   - `username`, `password` (varchar)
   - `state`, `city` (varchar)
   - `address`, `email`, `phno` (varchar)

2. **`admin` (Administrators)**
   - `admin_name` (varchar, Primary Key)
   - `admin_pass` (varchar)

3. **`Item4` (Food Menu)**
   - `Item_id` (int, Primary Key)
   - `item_name` (varchar)
   - `item_price` (decimal / float / int)
   - `img` (varchar - image filename stored in `/images/`)

4. **`contact` (Customer Messages)**
   - `name` (varchar)
   - `email` (varchar)
   - `message` (varchar)

5. **`state1` & `city1` (Location Lookups)**
   - `state1`: `sid`, `sname`
   - `city1`: `cid`, `cname`, `sid` (Foreign key referencing `state1.sid`)

---

## 📂 Project Directory Structure

```text
WebSite5/
├── App_Data/
│   ├── Database1.mdf          # SQL Server Local Database
│   ├── Database1_log.LDF      # SQL Database Log File
│   └── Database.sdf          # SQL Server CE Database (optional)
├── images/                    # Food item photos and assets
├── uploads/                   # Uploaded user/admin assets
├── About.aspx                 # Restaurant About Us page
├── About.aspx.cs              # Code-behind for About page
├── Admin.aspx                 # Admin landing page
├── Contact.aspx               # Customer contact and inquiry form
├── Contact.aspx.cs            # Code-behind for Contact page
├── Home.aspx                  # Main landing page
├── Home.aspx.cs               # Code-behind for Home page
├── InsertData.aspx            # Admin food item entry & image upload
├── InsertData.aspx.cs         # Code-behind for InsertData
├── Login.aspx                 # User & Admin dual login portal
├── Login.aspx.cs              # Authentication logic
├── Login.css                  # Stylesheet for login page
├── MasterPage.master          # Base layout for customer pages
├── MasterPage.master.cs       # Master page session & dynamic navbar logic
├── MasterPage2.master         # Layout with sidebar for Admin pages
├── MasterPage2.master.cs      # Admin master page logic
├── Menu.aspx                  # Food catalog with order buttons
├── Menu.aspx.cs               # Dynamic DataList binding from SQL
├── Register.aspx              # New user registration with cascading dropdowns
├── Register.aspx.cs           # Registration handler & state/city binding
├── Register.css               # Stylesheet for registration form
├── users.aspx                 # Admin customer list report
├── users.aspx.cs              # Code-behind for user listing
├── Viewitems.aspx             # Admin menu manager (GridView CRUD)
├── Viewitems.aspx.cs          # Code-behind for item update and deletion
└── web.config                 # Application configuration & connection strings
```

---

## 🚀 Getting Started & Installation

### Prerequisites
- [Visual Studio](https://visualstudio.microsoft.com/) (2012 or newer with **ASP.NET and web development** workload installed).
- Microsoft SQL Server Express or SQL Server LocalDB.
- .NET Framework 4.0 or above.

### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/<your-username>/<your-repo-name>.git
   ```

2. **Open the project in Visual Studio:**
   - Launch Visual Studio.
   - Go to **File** > **Open** > **Web Site...** (or Open Folder / Solution).
   - Select the cloned project folder.

3. **Verify the Database Connection (`web.config`):**
   Open [web.config](web.config) and update the connection string if needed. Use `|DataDirectory|` so it works dynamically on any machine:
   ```xml
   <connectionStrings>
     <add name="mycon" 
          connectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True" 
          providerName="System.Data.SqlClient" />
   </connectionStrings>
   ```
   *(If using LocalDB in newer Visual Studio versions, set `Data Source=(LocalDB)\MSSQLLocalDB`)*.

4. **Run the Project:**
   - Right-click on `Home.aspx` or `Login.aspx` in the Solution Explorer.
   - Click **Set As Start Page**.
   - Press **F5** or click **IIS Express** to start the web server and open the browser.

---

## 📤 How to Upload to GitHub

Follow these terminal commands from the project root directory:

```bash
# 1. Initialize git (if not already done)
git init

# 2. Stage all project files
git add .

# 3. Commit your files
git commit -m "Initial commit: Restaurant Menu & Order Management System in ASP.NET"

# 4. Rename default branch to main
git branch -M main

# 5. Link your GitHub remote repository
git remote add origin https://github.com/<your-username>/<your-repo-name>.git

# 6. Push code to GitHub
git push -u origin main
```

---

## 🔮 Future Enhancements
- 🛒 **Full Shopping Cart:** Quantity selection, cart calculation, and checkout summaries.
- 💳 **Online Payment Gateway:** Integration with Razorpay, Stripe, or PayPal.
- 🔒 **Security Hardening:** Password hashing (BCrypt/SHA-256) and Parameterized SQL Queries on all pages to prevent SQL injection.
- 📱 **Order Tracking Dashboard:** Real-time order progress updates from kitchen to delivery.

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).
