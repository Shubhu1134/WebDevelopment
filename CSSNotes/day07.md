
---

# 🗓️ **Day 7 — CSS Display, Visibility & Z-Index**

---

## 🎯 **Learning Objectives**

By the end of this lesson, you’ll be able to:

* Control element layout using the `display` property.
* Understand the difference between **block**, **inline**, and **inline-block** elements.
* Hide and show elements using `visibility` and `display`.
* Layer elements visually using `z-index`.
* Understand **stacking context** and how `position` affects it.

---

## 🧩 1. The `display` Property

The `display` property defines **how an element is displayed** in the layout.

### Common Values:

| Value          | Description                               |
| -------------- | ----------------------------------------- |
| `block`        | Takes full width, starts on new line      |
| `inline`       | Flows inline, only as wide as its content |
| `inline-block` | Inline + allows width/height control      |
| `none`         | Hides element completely                  |
| `flex`         | Enables flexbox layout                    |
| `grid`         | Enables grid layout                       |

---

### Example — Block vs Inline

```html
<!DOCTYPE html>
<html lang="en">
<head>
<style>
  div {
    background: lightblue;
    margin: 5px;
  }
  span {
    background: lightcoral;
    margin: 5px;
  }
</style>
</head>
<body>

<h2>Block vs Inline</h2>

<div>Div 1 (block)</div>
<div>Div 2 (block)</div>

<span>Span 1 (inline)</span>
<span>Span 2 (inline)</span>

</body>
</html>
```

✅ **Result:**

* Each `<div>` starts on a **new line**.
* `<span>` elements sit **side by side**.

---

## 🧩 2. `inline-block`

`inline-block` combines both behaviors:

* Flows inline like text
* Accepts width, height, and margin

### Example:

```css
.box {
  display: inline-block;
  width: 150px;
  height: 100px;
  background: #74b9ff;
  margin: 10px;
}
```

✅ Great for button groups, nav menus, or side-by-side boxes.

---

## 🧩 3. `display: none` vs `visibility: hidden`

These both **hide** elements but behave differently.

| Property             | Element takes space? | Visible? |
| -------------------- | -------------------- | -------- |
| `display: none`      | ❌ No                 | ❌ Hidden |
| `visibility: hidden` | ✅ Yes                | ❌ Hidden |

---

### Example:

```css
.hidden {
  visibility: hidden;
}

.removed {
  display: none;
}
```

```html
<p>Visible Text</p>
<p class="hidden">Hidden (still takes up space)</p>
<p class="removed">Removed (takes no space)</p>
```

✅ Use `display: none` when you want to **completely remove** the element from the layout.

---

## 🧩 4. The `z-index` Property

`z-index` controls the **stacking order** of overlapping elements.
Higher `z-index` values appear **in front** of lower ones.

> 💡 Only works on **positioned elements** (`relative`, `absolute`, `fixed`, or `sticky`).

---

### Example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
<style>
  .box {
    position: absolute;
    width: 150px;
    height: 150px;
    opacity: 0.8;
  }
  .red { background: red; top: 50px; left: 50px; z-index: 1; }
  .blue { background: blue; top: 100px; left: 100px; z-index: 2; }
  .green { background: green; top: 150px; left: 150px; z-index: 3; }
</style>
</head>
<body>

<div class="box red"></div>
<div class="box blue"></div>
<div class="box green"></div>

</body>
</html>
```

✅ The **green box** appears on top because it has the highest `z-index`.

---

## 🧩 5. Understanding Stacking Context

A **stacking context** is a 3D space where elements are layered along the Z-axis.

* Every page has a **root stacking context**.
* Certain properties (like `position` or `opacity < 1`) create **new stacking contexts**.

---

### Rules of Thumb:

1. `z-index` only works **within** its stacking context.
2. Elements with a **higher stacking context** appear above lower ones.
3. Nested stacking contexts don’t “escape” their parent’s z-index range.

---

### Example:

```css
.parent {
  position: relative;
  z-index: 1;
}

.child {
  position: absolute;
  z-index: 999;
}
```

Even though the child has `z-index: 999`, it cannot appear **above** another parent with `z-index: 2`.

---

## 🧩 6. Display Transformations (Quick Reference)

| Display Type   | Description                                       |
| -------------- | ------------------------------------------------- |
| `block`        | Full-width boxes                                  |
| `inline`       | Inline text-like elements                         |
| `inline-block` | Inline with block control                         |
| `none`         | Hidden (removed)                                  |
| `flex`         | Creates flexible box layouts                      |
| `grid`         | Creates grid-based layouts                        |
| `contents`     | Makes wrapper element disappear, keeping children |
| `table`        | Behaves like `<table>`                            |

---

## 🧩 7. Combining Display and Visibility

You can toggle visibility and display dynamically (e.g., with JS or animations).

```css
.modal {
  display: none;
}
.modal.active {
  display: block;
}
```

✅ Great for modals, dropdowns, tooltips, etc.

---

## 🧩 8. Mini Project — Overlapping Cards with Z-Index

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Z-Index Cards</title>
<style>
  body {
    font-family: 'Poppins', sans-serif;
    background: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .card {
    width: 150px;
    height: 200px;
    border-radius: 10px;
    position: absolute;
    transition: all 0.3s ease;
  }

  .card:nth-child(1) {
    background: #ff7675;
    z-index: 1;
    transform: rotate(-10deg);
  }
  .card:nth-child(2) {
    background: #74b9ff;
    z-index: 2;
    transform: rotate(0deg);
  }
  .card:nth-child(3) {
    background: #55efc4;
    z-index: 3;
    transform: rotate(10deg);
  }

  .card:hover {
    z-index: 10;
    transform: scale(1.1);
  }
</style>
</head>
<body>

  <div class="card"></div>
  <div class="card"></div>
  <div class="card"></div>

</body>
</html>
```

✅ Hover on a card — it jumps to the top layer!

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Display Experiments

Create 3 `<div>`s and set different display types: `block`, `inline`, `inline-block`.
Observe how they behave.

---

### 🧠 Exercise 2 — Visibility vs Display

Create two boxes — one with `display: none` and one with `visibility: hidden`.
See how layout changes.

---

### 🧠 Exercise 3 — Layering

Place 3 overlapping images with different `z-index` values.
Try changing their stacking order interactively.

---

## ✅ **Summary**

| Concept                           | Description                   |
| --------------------------------- | ----------------------------- |
| `display`                         | Defines element layout type   |
| `block`, `inline`, `inline-block` | Key layout modes              |
| `visibility`                      | Hides element but keeps space |
| `display: none`                   | Removes element completely    |
| `z-index`                         | Controls stack order          |
| `position`                        | Required for z-index to work  |
| Stacking context                  | Logical layering system       |

---
