
---

# 🗓️ **Day 4 — CSS Display, Visibility & Positioning**

---

## 🎯 **Learning Objectives**

By the end of today’s session, you’ll be able to:

* Understand different **display** values (`block`, `inline`, `inline-block`, `none`).
* Control **element visibility** and **flow** in the document.
* Use **positioning** (`static`, `relative`, `absolute`, `fixed`, `sticky`) for precise placement.
* Manage **z-index**, **top**, **left**, **right**, and **bottom** properties.
* Understand how **stacking context** works.

---

## 🧩 1. The `display` Property

The `display` property defines **how an element behaves in layout flow**.

| Value           | Description                                  |
| --------------- | -------------------------------------------- |
| `block`         | Starts on a new line, takes full width       |
| `inline`        | Sits next to other elements, width = content |
| `inline-block`  | Behaves like inline but allows width/height  |
| `none`          | Hides the element completely                 |
| `flex` / `grid` | Modern layout systems (we’ll cover later)    |

---

### Example:

```css
div {
  display: block;
}

span {
  display: inline;
}
```

**Visual Example:**

```html
<div>Block Element</div>
<span>Inline Element 1</span>
<span>Inline Element 2</span>
```

Block elements (like `<div>`, `<p>`, `<h1>`) occupy full width.
Inline elements (like `<span>`, `<a>`, `<strong>`) sit side-by-side.

---

## 🧩 2. Display: Inline vs Block vs Inline-Block

| Property                            | Block | Inline | Inline-block |
| ----------------------------------- | ----- | ------ | ------------ |
| Starts on new line?                 | ✅     | ❌      | ❌            |
| Can set width/height?               | ✅     | ❌      | ✅            |
| Respects padding/margin vertically? | ✅     | ❌      | ✅            |

### Example:

```css
.box1 { display: block; }
.box2 { display: inline; }
.box3 { display: inline-block; }
```

---

## 🧩 3. Visibility

| Property               | Effect                             |
| ---------------------- | ---------------------------------- |
| `visibility: visible;` | Element is visible (default)       |
| `visibility: hidden;`  | Hidden but **still takes space**   |
| `display: none;`       | Hidden and **does not take space** |

### Example:

```css
.hidden-box {
  visibility: hidden;
}

.removed-box {
  display: none;
}
```

---

## 🧩 4. The `position` Property

The `position` property controls **how an element is placed** on the page.

| Value      | Description                                              |
| ---------- | -------------------------------------------------------- |
| `static`   | Default; element stays in normal flow                    |
| `relative` | Positioned *relative to its original place*              |
| `absolute` | Positioned *relative to the nearest positioned ancestor* |
| `fixed`    | Stays fixed to the viewport (doesn’t scroll)             |
| `sticky`   | Switches between relative and fixed when scrolling       |

---

### Example Overview

```css
.box {
  position: relative; /* or absolute, fixed, sticky */
  top: 20px;
  left: 30px;
}
```

* `top`, `bottom`, `left`, and `right` move the element from its reference position.

---

## 🧩 5. Position: Static (Default)

By default, all elements have:

```css
position: static;
```

They appear **in the normal page flow**, one after another.

---

## 🧩 6. Position: Relative

Moves the element *relative to where it would normally appear*.

```css
.box {
  position: relative;
  top: 20px; /* moves down */
  left: 30px; /* moves right */
}
```

✅ Still occupies its original space in the layout.

---

## 🧩 7. Position: Absolute

Placed *relative to its nearest positioned ancestor*.
If no ancestor is positioned, it uses the **document body**.

```css
.parent {
  position: relative;
}

.child {
  position: absolute;
  top: 10px;
  left: 20px;
}
```

> 💡 Absolute elements are removed from normal document flow.

---

## 🧩 8. Position: Fixed

Element stays **fixed to the viewport** — unaffected by scrolling.

```css
nav {
  position: fixed;
  top: 0;
  width: 100%;
  background: black;
  color: white;
}
```

✅ Common use case: Sticky navbar or floating button.

---

## 🧩 9. Position: Sticky

Hybrid of `relative` and `fixed`.

It acts like `relative` until it reaches a threshold, then sticks.

```css
header {
  position: sticky;
  top: 0;
  background-color: #0984e3;
}
```

✅ Excellent for section headers or table headers.

---

## 🧩 10. The `z-index` Property

Controls **stacking order** when elements overlap.

```css
.box1 { z-index: 1; }
.box2 { z-index: 2; }
```

> Higher `z-index` = appears on top.
> Works only on **positioned** elements (not `static`).

---

## 🧩 11. Practical Example — All in One

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Day 4 - Display & Positioning</title>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      height: 200vh;
      background-color: #ecf0f1;
    }

    nav {
      position: fixed;
      top: 0;
      width: 100%;
      background-color: #0984e3;
      color: white;
      text-align: center;
      padding: 15px;
    }

    .container {
      margin-top: 80px;
      text-align: center;
    }

    .box {
      width: 100px;
      height: 100px;
      display: inline-block;
      margin: 20px;
      background-color: #74b9ff;
    }

    .relative {
      position: relative;
      top: 20px;
      left: 30px;
      background-color: #55efc4;
    }

    .absolute-container {
      position: relative;
      height: 200px;
      background-color: #dfe6e9;
      margin-top: 50px;
    }

    .absolute-box {
      position: absolute;
      top: 50px;
      right: 50px;
      width: 100px;
      height: 100px;
      background-color: #e17055;
      color: white;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .sticky-header {
      position: sticky;
      top: 0;
      background-color: #fab1a0;
      padding: 10px;
      text-align: center;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <nav>Fixed Navigation Bar</nav>

  <div class="container">
    <div class="box">Block</div>
    <div class="box relative">Relative</div>
  </div>

  <div class="absolute-container">
    <div class="absolute-box">Absolute</div>
  </div>

  <div class="sticky-header">Sticky Section Header</div>

  <p style="margin: 20px; text-align:center;">Scroll down to see how sticky and fixed positioning behave.</p>

</body>
</html>
```

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Display Types

Create three elements and:

* Make one `block`, one `inline`, and one `inline-block`.
* Observe how each behaves.

---

### 🧠 Exercise 2 — Positioning

Create:

* A **relative** parent box
* An **absolute** child box inside it
* A **fixed** header at the top

---

### 🧠 Exercise 3 — Sticky Element

Build a long webpage and make a **sticky** header that stays visible while scrolling.

---

## ✅ **Summary**

| Concept              | Description                                               |
| -------------------- | --------------------------------------------------------- |
| `display`            | Controls how an element is rendered (block, inline, etc.) |
| `visibility`         | Hides element but retains space                           |
| `display: none`      | Hides and removes from layout                             |
| `position: relative` | Moves element from original spot                          |
| `position: absolute` | Positioned relative to nearest ancestor                   |
| `position: fixed`    | Sticks to viewport                                        |
| `position: sticky`   | Switches between relative and fixed                       |
| `z-index`            | Controls stacking order                                   |

---

