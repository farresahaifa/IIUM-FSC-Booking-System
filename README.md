# IIUM Female Sport Complex (FSC) Indoor Booking System
**Group Name:** Opera  
**Course:** INFO 3307 Web Application Development  
**Instructor**=  Dr. Najhan Bin Muhamad Ibrahim  

## 📌 Project Overview
The **IIUM FSC Indoor Booking System** is a web-based platform designed to simplify court reservations for IIUM students. It replaces manual booking methods with a real-time digital solution, allowing students to check availability for Badminton, Netball, and Ping Pong courts.

### Key Features:
* **Student Portal**: Real-time court selection and personal booking history.
* **Staff Dashboard**: A central hub to monitor bookings, search for students, and manage facility utilization.
* **Full CRUD Operations**: Staff can **Create** (via student), **Read** (dashboard), **Update** (status changes), and **Delete** records.
* **Automated Logic**: System automatically cancels bookings if students fail to check in within 10 minutes of their slot.

---

## 🚀 How to Run the Project

Since the project is uploaded as a ZIP file, follow these steps to set it up locally:

### 1. Extract the Source Code
* Download the `FSC_FinalProject.zip` from this repository.
* Extract the contents into your local development folder (e.g., `C:/xampp/htdocs/`).

### 2. Database Setup
* Open **phpMyAdmin**.
* Create a new database (e.g., `fsc_booking`).
* Import the provided `webapp_fsc.sql` file into your new database.

### 3. Configure Environment
* Inside the extracted project folder, find `.env.example`.
* Rename it to `.env`.
* Update the `DB_DATABASE`, `DB_USERNAME`, and `DB_PASSWORD` lines to match your local XAMPP settings.

### 4. Install Dependencies & Launch
* Open your terminal in the project folder and run:
    ```bash
    composer install
    php artisan key:generate
    php artisan serve
  * Open another teriminal and run : php artisan schedule : work
  (Two terminal at the same time)
    ```
* Access the website at: `http://127.0.0.1:8000`

---

## 🛠️ Built With
* **Framework**: Laravel 10
* **Language**: PHP 8.1
* **Database**: MySQL
* **Styling**: Tailwind CSS & Custom CSS
