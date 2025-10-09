# UYARIY CLINIC STORE

Web application built with **Ruby on Rails 8** using the MVC pattern for managing a hearing aid clinic store.
Includes user authentication with **Devise**.

## Main Features
- 🔐 **Secure authentication** using Devise (sign up, login, logout).
- 🧱 **Protected CRUD** accessible only to authenticated users.
- 🚫 **URL protection:** routes cannot be accessed without authentication.

## 📦 Installation & Setup

```bash
# Clone the repository
git clone https://github.com/username/hearing-clinic-app.git
cd hearing-clinic-app

# Install dependencies
bundle install

# Create and migrate the database
rails db:create db:migrate

# Start the server
rails server
```
Then open http://localhost:3000
in your browser.

🔐 Authentication

This app uses Devise for user authentication.

Main routes:

/users/sign_up → Sign up

/users/sign_in → Log in

/users/sign_out → Log out

Protected routes use:

before_action :authenticate_user!

This ensure that no one can access the main routes without authentication.

📁 Basic Structure

<img width="250" height="500" alt="image" src="https://github.com/user-attachments/assets/8c0e3ae8-580d-47f7-ac6d-097f52c72f28" />

📜 License

This project is licensed under the MIT License.
You are free to use it for development, learning, or production.
