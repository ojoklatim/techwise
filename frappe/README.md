# 🚀 Frappe Mini Tracker - Development & Setup Guide

This folder contains a fully initialized Frappe v15 Bench workspace environment running a custom application named **`mini_tracker`** inside a dedicated workspace subdirectory.

---

## 📂 Folder Structure

```
/workspaces/techwise/frappe/
├── frappe-bench/             # Frappe Bench directory
│   ├── env/                  # Python virtual environment (managed by uv)
│   ├── sites/
│   │   ├── development.localhost/ # Site instance (Default site)
│   │   └── common_site_config.json
│   └── apps/
│       ├── frappe/           # Frappe Framework (v15 Stable branch)
│       └── mini_tracker/     # Custom Application
│           └── mini_tracker/
│               └── mini_tracker/
│                   ├── doctype/
│                   │   └── project/   # Project DocType definitions
│                   └── create_dashboard.py # Programmatic Dashboard & Card Generator
└── README.md                 # This documentation
```

---

## ⚙️ Implemented Deliverables

1. **Bench Setup:** Installed `bench` command-line utility globally, installed missing runtime requirements like `uv` (faster venv manager) and `cron` (backups utility), and initialized a new Bench on stable `version-15`.
2. **Database Configuration:** Configured system MariaDB service and set root password to `root` for Bench connections.
3. **Custom Application:** Created the `mini_tracker` custom app.
4. **Site Creation:** Bootstrapped site `development.localhost`, installed the `mini_tracker` app on it, set the admin password to `admin`, and configured it as the default site.
5. **Project DocType:** Defined the standard DocType **`Project`** inside the app directory with fields:
   * `project_name` (Data)
   * `status` (Select: *Open*, *In Progress*, *Completed*)
   * `deadline` (Date)
6. **Workspace Dashboard & Number Card:** Programmatically inserted the **`Open Projects`** Number Card (counting documents matching `status == 'Open'`) and the **`Mini Tracker Dashboard`** Workspace containing a shortcut to create a new `Project` and display the Number Card.
7. **Bench Server:** Started the system server via `bench start` running continuously in the background.

---

## 🚀 How to Access & Manage the App

### 1. View the Web Desk
* The web server is actively running in the background and listening on port **`8000`**.
* In your GitHub Codespace environment, navigate to the **Ports** tab and open port **`8000`** in your browser.
* Log in using the following credentials:
  * **Username:** `Administrator`
  * **Password:** `admin`

### 2. Running Bench Commands
To run commands, open a terminal window and navigate into the bench folder:
```bash
cd /workspaces/techwise/frappe/frappe-bench
```

* **Stop Server:** If you need to stop the background server, you can manage the background task or run:
  ```bash
  /usr/local/py-utils/bin/bench stop
  ```
* **Start Server manually:**
  ```bash
  /usr/local/py-utils/bin/bench start
  ```
* **Migrate Site Schema:**
  ```bash
  /usr/local/py-utils/bin/bench --site development.localhost migrate
  ```
* **Open Interactive Console:**
  ```bash
  /usr/local/py-utils/bin/bench --site development.localhost console
  ```
