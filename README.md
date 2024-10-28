### Introduction
Welcome to our exclusive wedding attire E-commerce platform! Designed with elegance and simplicity, this site serves as a one-stop shop for high-quality wedding clothing, featuring dedicated modules for *Admins, **Sellers, and **Users*. With seamless product management for sellers, robust oversight for admins, and an intuitive shopping experience for users, the platform offers a complete and secure journey from browsing to purchase, making wedding shopping easy and enjoyable.

### Features
- *User Module*: Users can browse products, add items to their cart, place orders, and complete online payments.
- *Seller Module*: Sellers have control over their product listings, uploading new items, managing stock, and making products available on the site.
- *Admin Module*: Admins oversee the entire platform, manage site content, handle payments, and ensure that only approved products are displayed.
- *Invoice Generation*: An invoice is generated after each order, with options for printing.
- *Online Payment: Secure and efficient online payments through **Razorpay* integration.

### Technologies
This E-commerce project uses the following technologies:
- *Backend*: Python with Django framework for handling logic, views, and database interaction.
- *Frontend*: HTML, CSS, and Bootstrap for responsive and user-friendly design.
- *Database*: MySQL to store user, order, and product information.

### Installation and Setup
Follow these steps to set up and run the project locally:
# FashionTrend E-commerce Project
## Prerequisites

- **Python** (3.8 or above)
- **MySQL** server
- **pip** (Python package manager)
### Step 1: Clone the Project Repository

Clone the repository using the following command:

```bash
git clone https://github.com/yourusername/FashionTrend.git
cd FashionTrend
```
### Step 2: Create a Virtual Environment

Create and activate a virtual environment:

```bash
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

### Step 3: Install Required Packages

Install the necessary Python packages:

```bash
pip install -r requirements.txt
```

### Step 4: Configure Database Settings

1. Open `settings.py` in your Django project.
2. Modify the `DATABASES` setting:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'your_database_name',
        'USER': 'your_mysql_user',
        'PASSWORD': 'your_mysql_password',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

### Step 5: Install MySQL Client

Install the MySQL client for Python:

```bash
pip install mysqlclient
```

If you encounter issues, you may need to install system packages (especially on Ubuntu):

```bash
sudo apt-get install libmysqlclient-dev
```

### Step 6: Migrate the Database

Run the following commands to apply migrations:

```bash
python manage.py makemigrations
python manage.py migrate
```

### Step 7: Create a Superuser

Create a superuser to access the Django admin interface:

```bash
python manage.py createsuperuser
```

### Step 8: Run the Development Server

Start the server:

```bash
python manage.py runserver


Access your website at `http://127.0.0.1:8000/`.

### Step 9: Access Admin Interface

Visit `http://127.0.0.1:8000/admin/` and log in with your superuser credentials.











