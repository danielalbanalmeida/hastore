# UYARIY CLINIC STORE

Web application built with **Ruby on Rails 8** using the MVC pattern for managing a hearing aid clinic store.
Includes user authentication with **Devise**.

## Main Features
- 🔐 **Secure authentication** using Devise (sign up, login, logout).
- 🧱 **Protected CRUD** accessible only to authenticated users.
- 🚫 **URL protection:** routes cannot be accessed without authentication.
- ⚡ Advanced Admin Panel built with Avohq for super-user management of all data.
- 🛡️ Role-Based Authorization using Pundit to ensure only users with the admin:true flag can access the admin panel.

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

⚡ Admin Panel

This project includes a powerful admin panel built with Avohq and secured by Pundit.

Accessing the Panel

  1.  Start the server (rails server).
  
  2.  Log in with the admin user credentials.
  
  3.  Visit http://localhost:3000/admin

How it Works

  - Authentication: The panel is protected by the authenticate_with block in config/initializers/avo.rb, which uses Devise's current_user and checks the admin? status.

  - Authorization: Pundit policies (like app/policies/avo/dashboard_policy.rb and app/policies/application_policy.rb) are used to check if the current_user.admin? flag is true for every action.

  - Non-admin users who try to access /admin will be redirected to the root path.


📁 Basic Structure

<img width="250" height="500" alt="image" src="https://github.com/user-attachments/assets/8c0e3ae8-580d-47f7-ac6d-097f52c72f28" />

📜 License

This project is licensed under the MIT License.
You are free to use it for development, learning, or production.
