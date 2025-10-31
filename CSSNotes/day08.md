


---

# 🗓️ **Day 8 — CSS Positioning: Static, Relative, Absolute, Fixed & Sticky**

---

## 🎯 **Learning Objectives**

By the end of this lesson, you’ll be able to:

* Understand how **CSS positioning** works.
* Use the five positioning modes (`static`, `relative`, `absolute`, `fixed`, `sticky`).
* Control **offsets** (`top`, `right`, `bottom`, `left`).
* Understand **positioning context** (how parent elements affect position).
* Build sticky headers, floating buttons, and fixed banners.

---

## 🧩 1. What is Positioning in CSS?

Every element has a **positioning scheme** that defines **where it appears** on the page and **how it interacts** with other elements.

### The `position` property can take these values:

| Value      | Description                                              |
| ---------- | -------------------------------------------------------- |
| `static`   | Default; normal flow                                     |
| `relative` | Moves relative to its normal position                    |
| `absolute` | Positioned relative to the nearest positioned ancestor   |
| `fixed`    | Stays in the same place on screen (even while scrolling) |
| `sticky`   | Switches between relative & fixed depending on scroll    |

---

## 🧩 2. Common Offset Properties

Once you set a position (other than static), you can use:

```css
top: 10px;
right: 20px;
bottom: 30px;
left: 40px;
```

These determine how far the element should move **from its reference point** (based on position type).

---

## 🧩 3. `position: static` (Default)

All elements are `static` by default — they appear in the **normal document flow**.

```css
div {
  position: static;
}
```

✅ Elements cannot be moved using `top`, `left`, etc.

---

## 🧩 4. `position: relative`

The element is positioned **relative to its normal position**.

* Space is still reserved in layout.
* You can move it with `top`, `left`, etc.

### Example:

```css
.box {
  position: relative;
  top: 20px;
  left: 30px;
}
```

🧠 Useful for **fine adjustments** or as a **reference container** for absolutely positioned children.

---

## 🧩 5. `position: absolute`

The element is **removed from the normal flow** and positioned **relative to its nearest positioned ancestor**.

If no ancestor has positioning (`relative`, `absolute`, `fixed`, or `sticky`), it’s positioned relative to the **viewport** (browser window).

### Example:

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  right: 20px;
}
```

✅ The child stays anchored to the parent’s top-right corner.

---

### Visual Example

```html
<div class="parent">
  Parent
  <div class="child">Child</div>
</div>
```

```css
.parent {
  position: relative;
  width: 200px;
  height: 200px;
  background: #74b9ff;
}

.child {
  position: absolute;
  bottom: 10px;
  right: 10px;
  background: #ff7675;
  padding: 10px;
  color: white;
}
```

---

## 🧩 6. `position: fixed`

The element is positioned **relative to the viewport**, meaning it **stays in place** even when the page scrolls.

### Example:

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  background: #0984e3;
  color: white;
  padding: 15px;
}
```

✅ Commonly used for **sticky headers**, **floating buttons**, or **chat widgets**.

---

### Fixed Button Example:

```css
.chat-btn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background: #00b894;
  color: white;
  padding: 15px;
  border-radius: 50%;
  font-size: 24px;
}
```

💬 Stays visible no matter where you scroll!

---

## 🧩 7. `position: sticky`

Sticky is a hybrid between `relative` and `fixed`:

* Acts like `relative` until a scroll threshold is reached.
* Then it sticks to the viewport (like `fixed`).

### Example:

```css
header {
  position: sticky;
  top: 0;
  background: #6c5ce7;
  color: white;
  padding: 10px;
}
```

✅ Perfect for **sticky navigation bars** or **section headers**.

---

### Demo Example:

```html
<header>Sticky Header</header>
<section>
  <p>Scroll down...</p>
</section>
```

```css
body {
  height: 200vh;
}

header {
  position: sticky;
  top: 0;
  background: #6c5ce7;
  color: white;
  padding: 10px;
}
```

---

## 🧩 8. Understanding Positioning Context

* **Absolute elements** look for their nearest **positioned ancestor** (not `static`).
* **Fixed elements** are always relative to the **viewport**.
* **Sticky elements** depend on **scroll position** and **their parent container**.

🧠 Always give a parent `position: relative;` when using absolute children — this creates a predictable layout.

---

## 🧩 9. Z-Index and Position

`z-index` only works when the element has a **position** other than `static`.

```css
.box {
  position: relative;
  z-index: 2;
}
```

✅ You can control which element sits “on top” by combining `position` + `z-index`.

---

## 🧩 10. Project — Sticky Header & Floating Button

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sticky Header & Floating Button</title>
<style>
  body {
    font-family: 'Poppins', sans-serif;
    height: 200vh;
    margin: 0;
  }

  header {
    position: sticky;
    top: 0;
    background: #6c5ce7;
    color: white;
    text-align: center;
    padding: 15px;
  }

  .content {
    padding: 50px;
    text-align: center;
  }

  .floating-btn {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background: #00cec9;
    color: white;
    border: none;
    padding: 15px 20px;
    border-radius: 50%;
    font-size: 24px;
    cursor: pointer;
  }
</style>
</head>
<body>

  <header>Sticky Navbar</header>
  <div class="content">
    <p>Scroll to see the sticky header and floating button in action!</p>
  </div>

  <button class="floating-btn">+</button>

</body>
</html>
```

✅ The header sticks at the top.
✅ The button stays in the corner even when you scroll.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Relative & Absolute

Create a parent box (`position: relative`) and place a small box in its top-right corner using `absolute`.

---

### 🧠 Exercise 2 — Fixed Header

Create a navigation bar that stays fixed while scrolling.
Add padding-top to the body so content isn’t hidden behind it.

---

### 🧠 Exercise 3 — Sticky Section Header

Add section titles that stick to the top of the page when scrolling through long content.

---

## ✅ **Summary**

| Position Type | Reference                   | Moves from Flow | Typical Use                       |
| ------------- | --------------------------- | --------------- | --------------------------------- |
| `static`      | Normal document flow        | ❌               | Default                           |
| `relative`    | Itself                      | ❌               | Small shifts, parent for absolute |
| `absolute`    | Nearest positioned ancestor | ✅               | Tooltips, overlays                |
| `fixed`       | Viewport                    | ✅               | Headers, floating buttons         |
| `sticky`      | Scroll container            | ⚡               | Sticky menus, headers             |

---

## 💡 Pro Tips

* Combine **relative (parent)** + **absolute (child)** for dynamic layouts.
* Use **fixed** elements for UI components that persist (like chat or nav).
* **Sticky** doesn’t work without scrollable context — ensure the container is tall enough.

---

