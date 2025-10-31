

---

# 🗓️ **Day 1 — Introduction to CSS: Syntax, Selectors, Colors, and Units**

---

## 🎯 **Learning Objectives**

By the end of this lesson, you’ll be able to:

* Understand what CSS is and how it works with HTML.
* Link CSS to HTML using different methods.
* Write CSS syntax properly.
* Use different types of **selectors** to target elements.
* Style elements using **colors**, **backgrounds**, and **units**.

---

## 🧩 1. What is CSS?

**CSS (Cascading Style Sheets)** defines how HTML elements are **displayed** on screen, paper, or other media.

👉 It controls **layout**, **colors**, **fonts**, **spacing**, and **responsiveness**.

### Example:

```html
<p style="color: blue;">This is a styled paragraph.</p>
```

The above is **inline CSS** — not ideal for large projects. We’ll explore better ways below.

---

## 🧩 2. Ways to Add CSS

There are **3 main methods** to include CSS in an HTML file:

### 1️⃣ **Inline CSS**

Used directly inside an HTML element using the `style` attribute.

```html
<h1 style="color: red; font-size: 30px;">Hello, CSS!</h1>
```

🧠 *Use this only for quick tests or overrides.*

---

### 2️⃣ **Internal CSS**

Written inside a `<style>` tag within the `<head>` section.

```html
<!DOCTYPE html>
<html>
<head>
  <style>
    h1 {
      color: blue;
      text-align: center;
    }
  </style>
</head>
<body>
  <h1>Welcome to CSS</h1>
</body>
</html>
```

✅ Best for single-page projects.

---

### 3️⃣ **External CSS**

You write CSS in a **separate file** (e.g., `style.css`) and link it using `<link>`.

**HTML:**

```html
<link rel="stylesheet" href="style.css">
```

**CSS (style.css):**

```css
h1 {
  color: green;
  text-align: center;
}
```

✅ **Best practice** — clean, reusable, and modular.

---

## 🧩 3. CSS Syntax

Each CSS rule has:

* **Selector:** Which element(s) to style.
* **Declaration block:** What properties to apply.
* **Properties and values:** The actual styling instructions.

```css
selector {
  property: value;
}
```

### Example:

```css
p {
  color: #333;
  font-size: 18px;
}
```

---

## 🧩 4. CSS Selectors

Selectors define *which elements* the styles apply to.

| Type           | Example         | Description                           |
| -------------- | --------------- | ------------------------------------- |
| **Universal**  | `* { }`         | Selects all elements                  |
| **Type**       | `p { }`         | Selects all `<p>` elements            |
| **Class**      | `.title { }`    | Targets elements with `class="title"` |
| **ID**         | `#main { }`     | Targets element with `id="main"`      |
| **Group**      | `h1, h2, p { }` | Targets multiple types                |
| **Descendant** | `div p { }`     | Targets `<p>` inside `<div>`          |
| **Child**      | `div > p { }`   | Targets direct children               |

### Example:

```html
<style>
  * { font-family: Arial; }
  .highlight { color: orange; }
  #main-title { text-transform: uppercase; }
</style>

<h1 id="main-title">Welcome</h1>
<p class="highlight">This is a highlighted paragraph.</p>
```

---

## 🧩 5. Colors in CSS

You can define colors in multiple ways:

| Format           | Example                        | Notes                      |
| ---------------- | ------------------------------ | -------------------------- |
| **Named Colors** | `color: red;`                  | Basic 140 color names      |
| **HEX**          | `color: #ff0000;`              | Most common                |
| **RGB**          | `color: rgb(255, 0, 0);`       | Red-Green-Blue values      |
| **RGBA**         | `color: rgba(255, 0, 0, 0.5);` | Adds transparency          |
| **HSL**          | `color: hsl(0, 100%, 50%);`    | Hue, saturation, lightness |

### Example:

```css
body {
  background-color: #f2f2f2;
  color: rgb(34, 34, 34);
}
```

---

## 🧩 6. CSS Units

CSS uses **relative** and **absolute** units to define sizes.

| Unit       | Type     | Meaning                               |
| ---------- | -------- | ------------------------------------- |
| `px`       | Absolute | Pixels (fixed size)                   |
| `%`        | Relative | Percentage of parent element          |
| `em`       | Relative | Based on parent font-size             |
| `rem`      | Relative | Based on root font-size (recommended) |
| `vw`, `vh` | Relative | Viewport width/height                 |
| `pt`       | Absolute | Points (print media)                  |

### Example:

```css
h1 {
  font-size: 3rem;   /* Based on root font size */
}

p {
  width: 80%;
  margin: 20px auto;
}
```

---

## 🧩 7. CSS Comments

Comments help organize your code.
They are **ignored by browsers**.

```css
/* This is a comment */
p {
  color: gray;
}
```

---

## 🧩 8. Practical Example

Let’s bring it all together 👇

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Day 1 - CSS Basics</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <h1 id="main-title">Hello, CSS World!</h1>
  <p class="highlight">CSS makes the web look beautiful.</p>

</body>
</html>
```

**style.css**

```css
/* Basic CSS Example */

body {
  background-color: #fafafa;
  color: #333;
  font-family: Arial, sans-serif;
}

#main-title {
  color: royalblue;
  text-align: center;
}

.highlight {
  color: tomato;
  font-size: 18px;
  text-align: center;
}
```

---

## 🧪 Practice Exercises

### 🧠 Exercise 1

Create a webpage and:

* Add **inline**, **internal**, and **external** CSS examples.
* Style at least **3 different elements** (heading, paragraph, image).

### 🧠 Exercise 2

Use **class** and **ID** selectors to:

* Color your heading green.
* Change paragraph font size.
* Set background color for body.

### 🧠 Exercise 3

Experiment with **different color formats** (`HEX`, `RGB`, `HSL`).

---

## ✅ Summary

| Concept        | Description                       |
| -------------- | --------------------------------- |
| CSS Definition | Controls layout and style of HTML |
| Syntax         | `selector { property: value; }`   |
| Selectors      | Target HTML elements              |
| Colors         | HEX, RGB, RGBA, HSL               |
| Units          | px, %, em, rem, vw, vh            |
| Linking CSS    | Inline, Internal, External        |

---
