# SubLoop: Subscription Manager

SubLoop is a multi-platform subscription management application built with Flutter and Firebase. It helps users track, manage, and analyze their recurring expenses from a single, unified interface.

## 🚀 Features

*   **Subscription Tracking:** Add, edit, and delete recurring subscriptions.
*   **Renewal Notifications:** Get alerted before a charge occurs.
*   **Expense Analytics:** Visual dashboards for monthly and yearly spending.
*   **Categorization:** Group subscriptions by type (Entertainment, Software, Utilities, etc.).
*   **Multi-currency Support:** Manage subscriptions in different currencies with aggregated views.

## 🛠 Tech Stack

*   **Frontend:** Flutter (Web, Android, iOS)
*   **Backend:** Firebase (Authentication, Firestore, Cloud Functions)
*   **State Management:** Riverpod
*   **Navigation:** GoRouter
*   **Charts:** fl_chart

## 📂 Project Structure

Following the Pinaka360 architectural patterns:
- `lib/core`: Common utilities, themes, and constants.
- `lib/features`: Feature-based modules (subscriptions, analytics, settings).
- `lib/repositories`: Abstract and concrete data source implementations.
- `lib/shared`: Reusable widgets and components.

## 🚦 Getting Started

1.  **Clone the repository:**
    ```bash
    git clone <repo-url>
    cd subloop
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Run the app:**
    ```bash
    flutter run
    ```

---
*Part of the Pinaka360 Workspace.*
