
---

# 🗓️ **Day 5 — HTML Forms & Input Elements**

---

## 🎯 Learning Objectives

By the end of today, you’ll be able to :

* Build a fully-functional HTML form using semantic markup.
* Understand the different types of input controls.
* Group related inputs with `<fieldset>` and `<legend>`.
* Use form attributes like `action`, `method`, and `autocomplete`.
* Add labels and validation for accessibility and UX.

---

## 🧱 1. The `<form>` Element — Foundation of Data Input

A form collects user input and sends it to a server or script.

### 🔹 Basic Syntax

```html
<form action="submit.php" method="post">
  <!-- Form inputs go here -->
</form>
```

### 🔹 Key Attributes

| Attribute      | Description                   | Example             |
| -------------- | ----------------------------- | ------------------- |
| `action`       | Where the data is sent        | `action="/submit"`  |
| `method`       | HTTP method (`get` or `post`) | `method="post"`     |
| `autocomplete` | Turns auto-fill on/off        | `autocomplete="on"` |
| `novalidate`   | Disables HTML validation      | `<form novalidate>` |

### 🧠 Notes

* Use **`GET`** for reading/searching data (adds data to URL).
* Use **`POST`** for submitting sensitive or long data.

---

## 🧩 2. `<input>` Element — Different Types of User Input

The `<input>` tag is the heart of forms.
It changes its function using the `type` attribute.

| Type       | Purpose                     | Example                                  |
| ---------- | --------------------------- | ---------------------------------------- |
| `text`     | Single-line input           | `<input type="text">`                    |
| `email`    | Validates email format      | `<input type="email">`                   |
| `password` | Hidden characters           | `<input type="password">`                |
| `number`   | Numeric values              | `<input type="number" min="1" max="10">` |
| `date`     | Date picker                 | `<input type="date">`                    |
| `color`    | Color picker                | `<input type="color">`                   |
| `checkbox` | Multiple choices            | `<input type="checkbox">`                |
| `radio`    | Single choice in group      | `<input type="radio" name="gender">`     |
| `range`    | Slider                      | `<input type="range" min="0" max="100">` |
| `file`     | Upload files                | `<input type="file">`                    |
| `hidden`   | Hidden value sent to server | `<input type="hidden" value="id123">`    |
| `submit`   | Submit button               | `<input type="submit" value="Send">`     |
| `reset`    | Clears form                 | `<input type="reset">`                   |
| `button`   | Custom button               | `<input type="button" value="Click Me">` |

---

## 🧾 3. Labels and Accessibility

Every input should be paired with a `<label>` to improve usability and accessibility.

### Example

```html
<label for="username">Username:</label>
<input type="text" id="username" name="username" placeholder="Enter your name">
```

### Why `for` and `id` matter

* Clicking the label focuses the input.
* Screen readers can announce the input name.

---

## 🧩 4. Placeholders and Default Values

```html
<input type="text" placeholder="Enter your email">
<input type="text" value="Shubh Ji">
```

* `placeholder` → shows a hint inside the input.
* `value` → sets a default/pre-filled value.

---

## 🧮 5. Grouping Inputs with `<fieldset>` and `<legend>`

These tags organize related inputs visually and semantically.

```html
<fieldset>
  <legend>Personal Information</legend>

  <label>Name:</label>
  <input type="text"><br>

  <label>Email:</label>
  <input type="email">
</fieldset>
```

---

## 🎯 6. Radio Buttons and Checkboxes

### 🔹 Radio Buttons (one choice)

```html
<p>Choose Gender:</p>
<label><input type="radio" name="gender" value="male"> Male</label>
<label><input type="radio" name="gender" value="female"> Female</label>
```

> All radio buttons sharing the same `name` belong to one group.

### 🔹 Checkboxes (multiple choices)

```html
<p>Skills:</p>
<label><input type="checkbox" name="skills" value="html"> HTML</label>
<label><input type="checkbox" name="skills" value="css"> CSS</label>
<label><input type="checkbox" name="skills" value="js"> JavaScript</label>
```

---

## 🧭 7. Drop-Down Menus and Text Areas

### 🔹 Select Menu

```html
<label for="country">Country:</label>
<select id="country" name="country">
  <option value="in">India</option>
  <option value="us">USA</option>
  <option value="uk">UK</option>
</select>
```

### 🔹 Textarea

```html
<label for="bio">Your Bio:</label><br>
<textarea id="bio" name="bio" rows="4" cols="40" placeholder="Tell us about yourself..."></textarea>
```

---

## 🧩 8. Buttons and Form Submission

### 🔹 Submit and Reset Buttons

```html
<input type="submit" value="Submit Form">
<input type="reset" value="Reset Form">
```

### 🔹 Custom Button

```html
<button type="button" onclick="alert('Hello, Shubh Ji!')">Click Me</button>
```

---

## 🧩 9. Client-Side Validation Attributes

| Attribute     | Purpose                           | Example                                  |
| ------------- | --------------------------------- | ---------------------------------------- |
| `required`    | Prevents form submission if empty | `<input required>`                       |
| `min` / `max` | Range for numbers or dates        | `<input type="number" min="1" max="10">` |
| `maxlength`   | Character limit                   | `<input maxlength="20">`                 |
| `pattern`     | Regex pattern validation          | `<input pattern="[A-Za-z]{3,}">`         |
| `step`        | Numeric step interval             | `<input type="number" step="5">`         |

---

## 🧪 10. Practice Exercises

### 🧠 Exercise 1 — Login Form

Build a form with:

* Email and password fields.
* Remember me checkbox.
* Submit button.

### 🧠 Exercise 2 — Survey Form

Collect data like name, age, gender, interests, and feedback using radio, checkbox, and textarea.

### 🧠 Exercise 3 — Validation

Add `required`, `min`, `max`, and `pattern` attributes to inputs for form validation.

---

## 🧩 11. Quick Quiz

1. What is the purpose of the `action` attribute?
2. Difference between `GET` and `POST` methods?
3. Which tag is used to group related inputs?
4. What is the role of the `label` tag?
5. What attribute is used to validate an email format?

---

## 🏁 12. Mini Project — “Contact Us Form”

**Goal:** Design a professional contact form with validation.

**Instructions:**

1. File: `contact-form.html`
2. Include:

   * Name, email, and phone fields
   * Subject dropdown
   * Message textarea
   * Checkbox for terms acceptance
   * Submit button

### Example

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Form</title>
</head>
<body>

  <h1>Contact Us</h1>

  <form action="/submit" method="post" autocomplete="on">
    <fieldset>
      <legend>Your Information</legend>

      <label for="name">Full Name:</label><br>
      <input type="text" id="name" name="name" required><br><br>

      <label for="email">Email:</label><br>
      <input type="email" id="email" name="email" required><br><br>

      <label for="phone">Phone Number:</label><br>
      <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" placeholder="1234567890"><br><br>

      <label for="subject">Subject:</label><br>
      <select id="subject" name="subject">
        <option>General Inquiry</option>
        <option>Feedback</option>
        <option>Support</option>
      </select><br><br>

      <label for="message">Message:</label><br>
      <textarea id="message" name="message" rows="5" cols="40" required></textarea><br><br>

      <label>
        <input type="checkbox" name="terms" required>
        I agree to the terms and conditions
      </label><br><br>

      <input type="submit" value="Send Message">
      <input type="reset" value="Clear Form">
    </fieldset>
  </form>

  <footer>
    <p><small>Created by Shubh Ji — Day 5 of HTML Mastery Course.</small></p>
  </footer>

</body>
</html>
```

---

## ✅ Summary

| Concept                   | Description                                              |
| ------------------------- | -------------------------------------------------------- |
| `<form>`                  | Main container for user input                            |
| `<input>`                 | Used to collect data (text, email, number, etc.)         |
| `<label>`                 | Improves accessibility and UX                            |
| `<fieldset>` / `<legend>` | Group related inputs                                     |
| Validation Attributes     | `required`, `pattern`, `min`, `max` ensure correct input |

---

