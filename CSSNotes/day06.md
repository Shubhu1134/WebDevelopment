
Welcome to **Day 6** of your **Complete CSS Mastery Course** — where your pages start *looking stunning!*

Today’s focus: **Backgrounds and Gradients** — the visual foundation of beautiful layouts. You’ll learn how to control colors, images, patterns, and gradients like a pro.

---

# 🗓️ **Day 6 — CSS Backgrounds & Gradients**

---

## 🎯 **Learning Objectives**

By the end of this lesson, you’ll be able to:

* Apply **background colors and images** properly.
* Control **position, size, repeat, and attachment**.
* Create stunning **linear and radial gradients**.
* Combine **multiple backgrounds** for layered effects.
* Use gradients as **button styles, overlays, and hero backgrounds**.

---

## 🧩 1. The `background` Property

The `background` property in CSS controls everything about the element’s background — including **color**, **image**, **position**, **repeat**, and **size**.

You can use individual background properties or the **shorthand** version.

---

### 🎨 Example: Basic Background Color

```css
body {
  background-color: #f0f8ff;
}
```

✅ Simple and clean. You can use named colors, HEX, RGB, or HSL.

---

## 🧩 2. Background Images

Use the `background-image` property to apply an image behind your content.

```css
body {
  background-image: url('background.jpg');
}
```

---

### 🧠 Common Properties:

| Property                | Description                                                       |
| ----------------------- | ----------------------------------------------------------------- |
| `background-image`      | Sets image                                                        |
| `background-repeat`     | Repeats or not (`repeat`, `no-repeat`, `repeat-x`, `repeat-y`)    |
| `background-position`   | Sets image position (`top`, `center`, `bottom`, or coordinates)   |
| `background-size`       | Controls how image fits (`auto`, `cover`, `contain`, `100% 100%`) |
| `background-attachment` | Scroll behavior (`scroll`, `fixed`, `local`)                      |

---

### Example — Centered Background Image

```css
body {
  background-image: url('banner.jpg');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
```

✅ Common for **hero sections** and **landing pages**.

---

## 🧩 3. `background-size` Deep Dive

| Value       | Description                                          |
| ----------- | ---------------------------------------------------- |
| `auto`      | Default — original size                              |
| `cover`     | Scales image to fully cover element (may crop)       |
| `contain`   | Fits image inside without cropping (may leave space) |
| `100% 100%` | Stretches image (may distort)                        |

---

### Example Comparison

```css
.hero-cover {
  background: url('mountain.jpg') no-repeat center/cover;
}
.hero-contain {
  background: url('mountain.jpg') no-repeat center/contain;
}
```

---

## 🧩 4. `background-attachment`

This controls whether the background image **scrolls** with the page.

| Value    | Description                  |
| -------- | ---------------------------- |
| `scroll` | Moves with content (default) |
| `fixed`  | Stays fixed in place         |
| `local`  | Scrolls with element content |

### Example:

```css
.banner {
  background-image: url('city.jpg');
  background-attachment: fixed;
  background-size: cover;
  background-position: center;
}
```

🧠 **Pro Tip:** Combine `background-attachment: fixed` with a large hero image for a **parallax effect**.

---

## 🧩 5. Background Shorthand Property

Combine multiple background settings into a single line:

```css
background: url('bg.jpg') no-repeat center/cover fixed #333;
```

✅ Order: `image` → `repeat` → `position` / `size` → `attachment` → `color`.

---

## 🧩 6. Multiple Backgrounds

You can layer multiple backgrounds by separating them with commas.

```css
div {
  background-image: url('texture.png'), url('pattern.svg');
  background-repeat: repeat, no-repeat;
  background-position: top left, center;
}
```

* The **first image** is on top.
* Each layer can have its own properties.

---

## 🧩 7. CSS Gradients Overview

Gradients are **image-like backgrounds** created purely with CSS (no files needed!).
They are great for buttons, banners, and smooth transitions.

There are two main types:

1. **Linear Gradient**
2. **Radial Gradient**

---

## 🧩 8. Linear Gradient

```css
background: linear-gradient(direction, color1, color2, ...);
```

### Example:

```css
button {
  background: linear-gradient(to right, #ff7e5f, #feb47b);
}
```

🧠 **Directions:**

* `to right`, `to left`, `to top`, `to bottom`
* Or use **degrees**: `45deg`, `135deg`

---

### Example — Custom Stops

```css
background: linear-gradient(90deg, red 0%, orange 50%, yellow 100%);
```

✅ Adds precise color transitions.

---

## 🧩 9. Radial Gradient

```css
background: radial-gradient(shape size at position, colors...);
```

### Example:

```css
div {
  background: radial-gradient(circle, #ff9a9e, #fad0c4);
}
```

### Variants:

* `circle` or `ellipse`
* Position with `at center`, `at top left`, etc.

---

## 🧩 10. Repeating Gradients

Create repeating patterns with:

* `repeating-linear-gradient()`
* `repeating-radial-gradient()`

### Example:

```css
div {
  background: repeating-linear-gradient(45deg, #74b9ff, #74b9ff 10px, #0984e3 10px, #0984e3 20px);
}
```

---

## 🧩 11. Gradient Overlay on Images

You can layer gradients on top of background images for beautiful effects.

```css
.hero {
  background: 
    linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
    url('nature.jpg') center/cover no-repeat;
  color: white;
  text-align: center;
  padding: 150px 20px;
}
```

✅ Commonly used for **hero banners** and **overlay text**.

---

## 🧩 12. Project — Gradient Card UI

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gradient Card</title>
<style>
  body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(to right, #6a11cb, #2575fc);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .card {
    background: white;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
    padding: 40px;
    width: 350px;
    text-align: center;
  }

  .btn {
    background: linear-gradient(90deg, #ff9966, #ff5e62);
    border: none;
    color: white;
    padding: 10px 20px;
    border-radius: 25px;
    cursor: pointer;
    transition: 0.3s;
  }

  .btn:hover {
    background: linear-gradient(90deg, #ff5e62, #ff9966);
  }
</style>
</head>
<body>
  <div class="card">
    <h2>Gradient Magic</h2>
    <p>CSS gradients make your designs stand out without extra images!</p>
    <button class="btn">Explore More</button>
  </div>
</body>
</html>
```

---

## 🧪 Practice Exercises

### 🧠 Exercise 1 — Image Background

Create a full-screen hero section with:

* A background image
* `background-size: cover`
* `background-attachment: fixed`

---

### 🧠 Exercise 2 — Gradient Buttons

Make 3 buttons with different gradient styles:

* Linear
* Radial
* Repeating

---

### 🧠 Exercise 3 — Multiple Backgrounds

Layer a texture image over a gradient background.

---

## ✅ Summary

| Concept                 | Description                                 |
| ----------------------- | ------------------------------------------- |
| `background-color`      | Sets background color                       |
| `background-image`      | Adds an image                               |
| `background-size`       | `cover`, `contain`, etc.                    |
| `background-attachment` | Fixed or scroll                             |
| Gradients               | Color transitions with `linear` or `radial` |
| Multiple backgrounds    | Combine layers for advanced visuals         |

---

