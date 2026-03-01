# 🚀 Samiran's Flutter Journey: From Zero to App

> **Project Goal:** Build a company-grade Flutter application in 7 days.
> **Status:** Day 1 Complete (Environment Setup & First Functional App).

---

## 🛠️ Phase 1: Environment & Setup
* **Office Laptop Constraints**: Navigated lack of root access by using pre-installed SDKs in user-writable directories.
* **Terminal Mastery**: Learned to use `flutter devices` to identify hardware and `flutter run -d <id>` to target specific devices.
* **Android Studio Interface**:
    * **Device Selector**: Top toolbar dropdown used to toggle between Emulator and Physical Phone.
    * **Run/Debug**: Using the Green Triangle for cold boots and the Lightning Bolt for Hot Reloads.

---

## 🏗️ Phase 2: Building the Calculator (Concepts Learned)
* **Boilerplate Structure**:
    * `StatelessWidget`: Used for the App Configuration (MaterialApp).
    * `StatefulWidget`: Used for the screen where data actually changes via `setState`.
* **Layouting (The "Flexbox" of Flutter)**:
    * `Column`: Vertical stacking of elements.
    * `Row`: Horizontal alignment of widgets.
    * `Expanded`: Tells a widget to take up the remaining available space.
    * `Container`: Used for padding and alignment of the display area.
* **Industry Standard Practices**:
    * **Reusable Widgets**: Created a `_buildButton` function to avoid repeating code for 16 buttons.
    * **Trailing Commas**: Used commas after every parenthesis to enable clean auto-formatting (Shift+Alt+F).
    * **The `const` Rule**: Learned that `const` improves performance but cannot be used on variables that change at runtime.

---

## ⚠️ Troubleshooting Log
| Error | Cause | Solution |
| :--- | :--- | :--- |
| `Can't find ')' to match '('` | Missing closing parenthesis in nested widgets. | Tracked brackets; used auto-format to spot mismatches. |
| `Not a constant expression` | Used `const` on a dynamic variable (`_output`). | Removed `const` from the parent widget (Text). |
| `Gradle task failed` | Initial build taking too long on office network. | Remained patient during the first `assembleDebug` run. |

---

## 📅 Roadmap for the Week
* **Day 2**: Navigation & Multi-Screen Apps (Moving from Calculator to a List view).
* **Day 3**: Fetching Data (APIs and JSON) – Crucial for company project.
* **Day 4**: State Management (Introduction to Provider).
* **Day 5**: Flutter DevTools & Debugging (The "Blue Wrench" tools).
* **Day 6**: UI Refinement (Theming, Assets, and Fonts).
* **Day 7**: Final Review & Actual Project Architecture Setup.

---

### 🔗 Useful References
* [Flutter Official: Basic Widgets](https://docs.flutter.dev/ui/widgets/basics)
* [Dart: Introduction to Classes](https://dart.dev/language/classes)
* [Flutter: Adding Interactivity (State)](https://docs.flutter.dev/ui/interactive)