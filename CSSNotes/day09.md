

---

# 🗓️ **Day 9 — Mastering CSS Flexbox**

---

## 🎯 **Learning Objectives**

By the end of today’s class, you’ll be able to:

* Understand how Flexbox works and its purpose.
* Use `display: flex` to create flexible layouts.
* Align items horizontally and vertically with precision.
* Control wrapping, ordering, and spacing between elements.
* Build real-world layouts (like navbars, cards, and galleries).

---

## 🧩 1. What is Flexbox?

**Flexbox** is a one-dimensional layout system for arranging elements **in a row or column**, giving you **control over spacing, alignment, and order** — without complex floats or positioning.

### To activate Flexbox:

```css
.container {
  display: flex;
}
```

Now all direct children of `.container` become **flex items**.

---

## 🧩 2. Main Axis vs Cross Axis

* **Main Axis** → Direction of flex items (controlled by `flex-direction`)
* **Cross Axis** → Perpendicular to the main axis

| Direction | Main Axis    | Cross Axis   |
| --------- | ------------ | ------------ |
| `row`     | left → right | top → bottom |
| `column`  | top → bottom | left → right |

---

## 🧩 3. The `flex-direction` Property

Defines how flex items are placed in the container.

```css
.container {
  display: flex;
  flex-direction: row; /* row | row-reverse | column | column-reverse */
}
```

### Example:

```html
<div class="container">
  <div class="item">1</div>
  <div class="item">2</div>
  <div class="item">3</div>
</div>
```

```css
.container {
  display: flex;
  flex-direction: row;
}

.item {
  background: #74b9ff;
  padding: 20px;
  margin: 10px;
  color: white;
}
```

---

## 🧩 4. `justify-content` (Horizontal Alignment)

Controls **alignment along the main axis**.

| Value           | Description                            |
| --------------- | -------------------------------------- |
| `flex-start`    | Items packed at start (default)        |
| `flex-end`      | Items packed at end                    |
| `center`        | Items centered                         |
| `space-between` | Equal space *between* items            |
| `space-around`  | Equal space *around* items             |
| `space-evenly`  | Equal space *between and around* items |

### Example:

```css
.container {
  display: flex;
  justify-content: space-around;
}
```

---

## 🧩 5. `align-items` (Vertical Alignment)

Controls **alignment along the cross axis**.

| Value        | Description                               |
| ------------ | ----------------------------------------- |
| `stretch`    | Items stretch to fill container (default) |
| `flex-start` | Aligns items to top/start                 |
| `flex-end`   | Aligns items to bottom/end                |
| `center`     | Centers vertically                        |

### Example:

```css
.container {
  display: flex;
  align-items: center;
  height: 200px;
}
```

---

## 🧩 6. `flex-wrap` (Wrapping Items)

By default, Flexbox items try to fit in one line.
`flex-wrap` allows them to wrap into multiple lines.

```css
.container {
  display: flex;
  flex-wrap: wrap; /* nowrap | wrap | wrap-reverse */
}
```

✅ Use this when creating **responsive rows of cards**.

---

## 🧩 7. `align-content` (Align Multiple Rows)

Used when **items wrap into multiple lines**.
Controls spacing between lines along the **cross-axis**.

```css
.container {
  display: flex;
  flex-wrap: wrap;
  align-content: space-between;
}
```

---

## 🧩 8. Combining Flexbox Properties

```css
.container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}
```

✅ Common in **navigation bars** or **header layouts**.

---

## 🧩 9. Flex Item Properties

Each item in a flex container can also be individually controlled.

| Property      | Description                             |
| ------------- | --------------------------------------- |
| `order`       | Changes the visual order                |
| `flex-grow`   | Defines how much an item should grow    |
| `flex-shrink` | Defines how much an item should shrink  |
| `flex-basis`  | Initial size before growing/shrinking   |
| `align-self`  | Overrides align-items for a single item |

---

### Example:

```css
.item1 { flex-grow: 2; }
.item2 { flex-grow: 1; }
.item3 { order: -1; }
```

✅ The first item takes **twice the space**, and the third item appears **first**.

---

## 🧩 10. The `flex` Shorthand

A shorthand for `flex-grow`, `flex-shrink`, and `flex-basis`.

```css
.item {
  flex: 1 1 200px; /* grow | shrink | basis */
}
```

✅ Example: `flex: 1` means it grows equally with other items.

---

## 🧩 11. Vertical & Horizontal Centering (The Holy Grail)

```css
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}
```

✅ Centers content **perfectly** both vertically and horizontally — no hacks needed!

---

## 🧩 12. Mini Project — Responsive Card Layout

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flexbox Cards</title>
<style>
  body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    background: #f1f2f6;
  }

  .container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    padding: 40px;
  }

  .card {
    background: white;
    border-radius: 10px;
    padding: 20px;
    width: 250px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  }

  .card h3 {
    margin-top: 0;
  }
</style>
</head>
<body>

<div class="container">
  <div class="card"><h3>Card 1</h3><p>Some text...</p></div>
  <div class="card"><h3>Card 2</h3><p>Some text...</p></div>
  <div class="card"><h3>Card 3</h3><p>Some text...</p></div>
  <div class="card"><h3>Card 4</h3><p>Some text...</p></div>
</div>

</body>
</html>
```

✅ Works beautifully on all screen sizes — thanks to `flex-wrap`.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Navbar

Create a navigation bar with logo on left and links on right using Flexbox.

### 🧠 Exercise 2 — Equal Height Boxes

Create 3 boxes side by side that all take equal height and width.

### 🧠 Exercise 3 — Reordering

Make one flex item appear first using `order`.

---

## ✅ **Summary**

| Property          | Purpose                          |
| ----------------- | -------------------------------- |
| `display: flex`   | Turns container into a flexbox   |
| `flex-direction`  | Defines layout direction         |
| `justify-content` | Aligns items horizontally        |
| `align-items`     | Aligns items vertically          |
| `flex-wrap`       | Allows items to wrap             |
| `align-content`   | Aligns wrapped rows              |
| `order`           | Reorders items                   |
| `flex-grow`       | Controls how much an item grows  |
| `align-self`      | Aligns a single item differently |

---

## 💡 Pro Tips

* Use **Flexbox for 1D layouts**, **Grid for 2D layouts**.
* Use `gap` instead of `margin` for consistent spacing.
* Combine `flex-wrap` and `justify-content` for responsive grids.

---

