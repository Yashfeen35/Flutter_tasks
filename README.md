# Week 1: Basic Flutter Development and UI Building

## Learning Objectives

* **Understand Flutter’s basic structure**
* **Build simple and responsive user interfaces**
* **Learn navigation between screens**
* **Learn simple state management (increment/decrement)**

---

## Task 1: Login UI

* Built a login screen with:

  * Two **TextFormFields** (email and password)
  * A **TextButton** for Login
  * A **Text widget** for "Forgot Password?"
* Used layout widgets: **Column, Row, Container**
* **Form Validation:**

  * **Email field** checks proper format
  * **Password field** ensures it is not empty

---

## Task 2: FitLife App

* Created a new Flutter project named **FitLife**
* Set up the **main app structure**
* Prepared screens for **login, home, and future features**

---

## Task 3: Counter App

* Created a simple **Counter App** inside the project
* **Features:**

  * Display **counter value** on screen
  * **Increment button** → increases counter
  * **Decrement button** → decreases counter

**Example Code:**

```dart
int _counter = 0;

void _increment() {
  setState(() {
    _counter++;
  });
}

void _decrement() {
  setState(() {
    _counter--;
  });
}
```

* Counter displayed in the **center**
* Increment and Decrement buttons placed below the counter

---

## Task 4: Navigation Between Screens

* Created **Home Screen** as the second screen
* Implemented navigation using:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen())
);
```

* Connected **Login Screen → Home Screen**

---

## Suggested Commit Messages

* Task 1 → `git commit -m "Added Login UI"`
* Task 2 → `git commit -m "Created FitLife App"`
* Task 3 → `git commit -m "Added Counter App"`
* Task 4 → `git commit -m "Implemented Navigation"`
