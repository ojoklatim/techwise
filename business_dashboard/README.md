# 📊 Business Dashboard - Development & Setup Guide

Welcome to the **Business Dashboard** Flutter project. This codebase features a premium, bespoke **Anthropic-inspired layout** defined by sharp geometric geometry, cream/parchment background tones, custom line-bordered cards, and a typography pairing of *Playfair Display* (serif headings) and *DM Sans* (sans-serif text). Emojis have been entirely replaced with crisp Material outlines.

> [!NOTE]
> This application is built for Flutter Web and optimized specifically for responsive rendering on mobile device viewports (tested with browser developer tools).

---

## 📂 Project Architecture & Folder Structure

The application separates its core business data, theme configurations, presentation layer, and model definitions cleanly:

```
lib/
├── main.dart                 # App Entry & Main Shell (with BottomNavigationBar)
├── theme/
│   └── app_theme.dart        # Global Design System (AppColors & TextThemes)
├── models/
│   ├── summary_card_model.dart # Schema for dashboard summary card widgets
│   ├── activity_model.dart     # Schema for recent activities timeline
│   └── transaction_model.dart  # Schema for financial list records
├── data/
│   └── mock_data.dart        # Mock instances (Material Icons, amounts, statuses)
└── screens/
    ├── dashboard_screen.dart # Screen 1: Dashboard, Grid Cards, Bar Chart, & Activity Feed
    └── details_screen.dart   # Screen 2: Financial List View & Status Badges
```

---

## 🎨 Design System Specs

| Token | Color Code / Value | Purpose |
| :--- | :--- | :--- |
| **Background (Cream)** | `#F5F0E8` | Base warm off-white canvas |
| **Card Backing (Parchment)** | `#EDE7D9` | Secondary content background |
| **Primary Text (Ink-Black)** | `#1A1714` | High contrast headings & navigation bar |
| **Primary Accent (Coral)** | `#D4623A` | Important statistics & button borders |
| **Border Colors** | `#D6CFC5` & `#9E9890` | Sharp line borders |
| **Typography - Headers** | Playfair Display (Serif) | Premium editorial style |
| **Typography - Body** | DM Sans (Geometric Sans) | High readability |
| **Geometry** | `BorderRadius.zero` | Crisp, sharp edges everywhere |

---

## 📦 System Dependencies

All dependencies are declared inside `pubspec.yaml`:
* **`fl_chart` (v^0.69.0):** Used for rendering the responsive sales bar chart overview.
* **`google_fonts` (v^6.2.1):** Dynamically loads *Playfair Display* and *DM Sans* fonts directly from the Google Fonts API.
* **`cupertino_icons` (v^1.0.8):** iOS iconography package.

---

## ⚙️ GitHub Codespaces Setup

Within your GitHub Codespace container, the Flutter environment is installed locally.

### 🔍 Environment Coordinates
* **Flutter SDK Location:** `/home/codespace/flutter/bin/flutter`
* **SDK Version:** Flutter 3.12+ (Dart SDK `^3.12.1`)
* **Target Environment:** Web Server (hosts application assets on a local port)

---

## 🚀 Steps to Run the Application

Follow these steps to launch, access, and debug the app:

### Step 1: Fetch Dependencies
Ensure you resolve all pub packages from the root of the project:
```bash
/home/codespace/flutter/bin/flutter pub get
```

### Step 2: Start the Web Development Server
Execute the following command to spin up the server on port `8080` bound to all host interfaces:
```bash
/home/codespace/flutter/bin/flutter run -d web-server --web-port 8080 --web-hostname 0.0.0.0
```

### Step 3: Access the Ports Tab & Preview
1. Inside your Codespace visual interface, look at the bottom panel and click on the **Ports** tab.
2. Locate the row showing port **`8080`**.
3. Click on the **Globe Icon (Open in Browser)** to launch the preview.

### Step 4: Toggle Mobile View Simulation
To see the app in its correct proportion:
1. Press `F12` (or right-click and select **Inspect**) to open the browser's developer console.
2. Click the **Device Toolbar Icon** (looks like a phone and tablet screen overlay, or press `Ctrl + Shift + M` / `Cmd + Shift + M`).
3. Select a device preset (e.g. *iPhone 12 Pro* or *Pixel 7*) and adjust the zoom percentage to fit your screen.
4. Enjoy the crisp, overflow-proof mobile experience!

---

## 🛡️ Code Quality & Maintenance
* Run code analysis at any time using:
  ```bash
  /home/codespace/flutter/bin/flutter analyze
  ```
* All layout boundaries are fully protected using `FittedBox`, `Expanded`, and `Flexible` constraints to guarantee that the UI never breaks, regardless of screen resizing or device scaling.
