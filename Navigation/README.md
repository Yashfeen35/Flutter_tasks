
---

### **2️⃣ README for Navigation (`README_Navigation.md`)**

```markdown
# Flutter Navigation Between Screens

## Week 1: Basic Flutter Development and UI Building

### Learning Objectives
- Learn to navigate between multiple screens in Flutter.
- Understand `Navigator.push()` for screen transitions.

---

### Tasks Completed

1. **Created Home Screen**
   - Second screen of the app.
   - Simple layout with a `Text` widget to indicate Home Screen.

2. **Implemented Navigation**
   - Navigation from Login Screen to Home Screen:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen()),
);
