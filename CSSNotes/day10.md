
---

# 🧱 **Day 10 — CSS Grid Layout: The Two-Dimensional Layout System**

---

## 🎯 **Learning Objectives**

By the end of this lesson, you’ll be able to:

* Understand how the **CSS Grid system** works.
* Define **rows** and **columns** with precision.
* Use **grid areas**, **gaps**, and **auto-placement**.
* Build complex layouts like dashboards, galleries, and landing pages.
* Combine Grid with Flexbox for real-world responsive UIs.

---

## 🧩 1. What is CSS Grid?

**CSS Grid** is a **two-dimensional layout system**, meaning it can handle **both rows and columns** simultaneously.

It’s perfect for building:

* Page layouts
* Image galleries
* Product grids
* Dashboards
* Card-based designs

---

### To activate Grid:

```css
.container {
  display: grid;
}
```

Every direct child becomes a **grid item**.

---

## 🧩 2. Defining Columns and Rows

Use `grid-template-columns` and `grid-template-rows` to define structure.

### Example:

```css
.container {
  display: grid;
  grid-template-columns: 200px 200px 200px;
  grid-template-rows: 100px 100px;
  gap: 10px;
}
```

✅ Creates 3 columns and 2 rows with 10px gaps.

---

### Example Layout:

```html
<div class="container">
  <div class="box">1</div>
  <div class="box">2</div>
  <div class="box">3</div>
  <div class="box">4</div>
  <div class="box">5</div>
  <div class="box">6</div>
</div>
```

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
}
.box {
  background: #74b9ff;
  color: white;
  padding: 20px;
  font-size: 24px;
  text-align: center;
}
```

✅ `1fr` means **one fraction** of available space.

---

## 🧩 3. Using `repeat()` and `fr` Units

* `fr` (fractional unit) divides available space equally.
* `repeat(n, value)` is a shorthand for repeating patterns.

```css
grid-template-columns: repeat(4, 1fr);
```

✅ Creates 4 equal-width columns.

---

## 🧩 4. Adding Gaps

Use `gap`, `column-gap`, and `row-gap` to control spacing.

```css
.container {
  gap: 20px; /* row and column gap */
}
```

---

## 🧩 5. Grid Item Placement

You can manually place items using:

```css
.item {
  grid-column: 1 / 3; /* from column 1 to 3 */
  grid-row: 1 / 2;    /* from row 1 to 2 */
}
```

✅ Great for **highlighting** or **spanning** featured elements.

---

### Example:

```css
.item1 {
  grid-column: 1 / span 2; /* spans two columns */
}
```

---

## 🧩 6. Implicit vs Explicit Grids

* **Explicit grid**: defined by `grid-template-rows` and `grid-template-columns`.
* **Implicit grid**: auto-created when items overflow beyond the defined structure.

```css
grid-auto-rows: 150px;
```

✅ Sets default height for new rows added automatically.

---

## 🧩 7. Aligning Items in Grid

Grid provides powerful alignment options.

| Property        | Description               |
| --------------- | ------------------------- |
| `justify-items` | Aligns items horizontally |
| `align-items`   | Aligns items vertically   |
| `place-items`   | Shorthand for both        |

### Example:

```css
.container {
  justify-items: center;
  align-items: center;
}
```

---

## 🧩 8. Aligning the Entire Grid

| Property          | Description                              |
| ----------------- | ---------------------------------------- |
| `justify-content` | Moves grid horizontally inside container |
| `align-content`   | Moves grid vertically inside container   |
| `place-content`   | Shorthand for both                       |

---

## 🧩 9. Grid Template Areas (Named Layouts)

You can name sections of your layout and assign them to grid items.

### Example:

```css
.container {
  display: grid;
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer";
  grid-template-columns: 1fr 3fr;
  grid-template-rows: auto 1fr auto;
  gap: 10px;
}

.header { grid-area: header; background: #6c5ce7; }
.sidebar { grid-area: sidebar; background: #00cec9; }
.main { grid-area: main; background: #fab1a0; }
.footer { grid-area: footer; background: #0984e3; }
```

```html
<div class="container">
  <div class="header">Header</div>
  <div class="sidebar">Sidebar</div>
  <div class="main">Main Content</div>
  <div class="footer">Footer</div>
</div>
```

✅ Easy to visualize and manage complex layouts.

---

## 🧩 10. Auto-Fit and Auto-Fill for Responsive Grids

These are *magic tools* for responsive grids.

### Example:

```css
.container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
}
```

✅ Items automatically wrap and resize depending on screen width — perfect for responsive galleries.

---

## 🧩 11. Mini Project — Responsive Image Gallery

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grid Gallery</title>
<style>
  body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    background: #f5f5f5;
  }

  .gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 15px;
    padding: 20px;
  }

  .gallery img {
    width: 100%;
    border-radius: 10px;
  }
</style>
</head>
<body>

<div class="gallery">
  <img src="https://picsum.photos/400?random=1" alt="">
  <img src="https://picsum.photos/400?random=2" alt="">
  <img src="https://picsum.photos/400?random=3" alt="">
  <img src="https://picsum.photos/400?random=4" alt="">
  <img src="https://picsum.photos/400?random=5" alt="">
</div>

</body>
</html>
```

✅ Automatically adapts to screen size using `auto-fit` + `minmax`.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Basic Grid

Create a 3x3 grid with equal boxes and gaps.

### 🧠 Exercise 2 — Spanning Element

Make one box span 2 columns and 2 rows.

### 🧠 Exercise 3 — Named Areas

Build a simple page layout using `grid-template-areas`.

### 🧠 Exercise 4 — Responsive Gallery

Use `auto-fit` and `minmax()` to create a flexible grid that works on mobile and desktop.

---

## ✅ **Summary**

| Property                        | Purpose                      |
| ------------------------------- | ---------------------------- |
| `display: grid`                 | Enables grid layout          |
| `grid-template-columns/rows`    | Defines structure            |
| `gap`                           | Adds space between items     |
| `grid-column/row`               | Manually position items      |
| `grid-area`                     | Assigns items to named areas |
| `justify-items` / `align-items` | Align content inside cells   |
| `auto-fit` / `auto-fill`        | Creates responsive layouts   |

---

## 💡 Pro Tips

* Use **Grid for 2D layouts** (rows + columns).
* Combine **Grid + Flexbox** — use Grid for page structure, Flexbox for content alignment inside.
* Use `minmax(200px, 1fr)` for adaptive grid columns.
* Visualize your grid using browser DevTools — most browsers show grid overlays.

---

