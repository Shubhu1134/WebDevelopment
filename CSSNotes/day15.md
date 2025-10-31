
---

# 🧪 **Day 15 — CSS Filters & Blend Modes**

---

## 🎯 **Learning Objectives**

By the end of this day, you’ll be able to:

* Apply CSS filters like **blur**, **grayscale**, **brightness**, and more.
* Combine multiple filters for advanced effects.
* Use **blend modes** to control how layers interact.
* Create **frosted glass** and **overlay** effects.
* Understand **performance and accessibility** considerations.

---

## 🧩 1. CSS Filters Overview

The `filter` property lets you apply **visual effects** to elements — images, backgrounds, or even text.

### Syntax:

```css
filter: effect(value);
```

You can chain multiple effects:

```css
filter: blur(5px) brightness(1.2) contrast(1.1);
```

---

## 🧩 2. Common CSS Filter Functions

| Filter                        | Description             | Example                                              |
| ----------------------------- | ----------------------- | ---------------------------------------------------- |
| `blur(px)`                    | Softens the image       | `filter: blur(5px);`                                 |
| `brightness(%)`               | Lightens or darkens     | `filter: brightness(120%);`                          |
| `contrast(%)`                 | Adjusts contrast        | `filter: contrast(90%);`                             |
| `grayscale(%)`                | Converts to grayscale   | `filter: grayscale(100%);`                           |
| `sepia(%)`                    | Applies warm brown tone | `filter: sepia(80%);`                                |
| `invert(%)`                   | Inverts colors          | `filter: invert(100%);`                              |
| `saturate(%)`                 | Boosts colors           | `filter: saturate(150%);`                            |
| `hue-rotate(deg)`             | Shifts hue              | `filter: hue-rotate(90deg);`                         |
| `drop-shadow(x y blur color)` | Adds shadow             | `filter: drop-shadow(4px 4px 10px rgba(0,0,0,0.5));` |

---

## 🧩 3. Example: Applying Filters

```html
<img src="photo.jpg" class="filtered">
```

```css
.filtered {
  width: 300px;
  filter: brightness(110%) contrast(120%) saturate(140%);
}
```

✅ Enhances the photo with vibrant color and brightness.

---

## 🧩 4. Interactive Filter Example

You can add hover effects using filters:

```css
img:hover {
  filter: grayscale(100%) blur(2px);
  transition: 0.5s;
}
```

✅ On hover, the image becomes black-and-white and slightly blurred.

---

## 🧩 5. Drop Shadow Filter vs Box Shadow

| Property                | Works On      | Syntax                                    | Notes                                           |
| ----------------------- | ------------- | ----------------------------------------- | ----------------------------------------------- |
| `box-shadow`            | Element box   | `box-shadow: 2px 2px 10px gray;`          | Works for rectangular shapes                    |
| `filter: drop-shadow()` | Image content | `filter: drop-shadow(4px 4px 6px black);` | Follows **image shape** (supports transparency) |

✅ Use `drop-shadow()` for PNG or SVG icons — it respects their outlines!

---

## 🧩 6. Combining Multiple Filters

```css
img {
  filter: brightness(120%) contrast(110%) blur(2px);
}
```

✅ You can stack multiple filters together — they apply **in order**.

---

## 🧩 7. CSS Blend Modes

Blend modes define **how two layers mix together**, similar to Photoshop blending.

Use the `mix-blend-mode` or `background-blend-mode` property.

---

### 🔹 `mix-blend-mode`

Applies blending between an element and the **background behind it**.

```css
h1 {
  mix-blend-mode: overlay;
}
```

✅ The text color interacts with whatever is behind it.

---

### 🔹 `background-blend-mode`

Applies blending between **background layers** (image + gradient).

```css
div {
  background-image: 
    url('city.jpg'),
    linear-gradient(rgba(255,0,0,0.5), rgba(0,0,0,0.5));
  background-blend-mode: multiply;
}
```

✅ Creates a red-tinted cinematic overlay effect.

---

## 🧩 8. Common Blend Modes

| Blend Mode    | Description                    |
| ------------- | ------------------------------ |
| `normal`      | Default                        |
| `multiply`    | Darkens the base layer         |
| `screen`      | Lightens the base layer        |
| `overlay`     | Combines dark & light contrast |
| `darken`      | Keeps darker colors            |
| `lighten`     | Keeps lighter colors           |
| `color-burn`  | Increases contrast             |
| `color-dodge` | Brightens highlights           |
| `difference`  | Inverts differences            |
| `exclusion`   | Softer difference effect       |

---

## 🧩 9. Frosted Glass Effect (Backdrop Filter)

The `backdrop-filter` property applies effects **behind** a translucent layer — used in **modern glassmorphism** UIs.

```html
<div class="glass">
  <h2>Glassmorphic Box</h2>
</div>
```

```css
.glass {
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.3);
  border-radius: 15px;
  padding: 30px;
  width: 300px;
  color: white;
}
body {
  background: url('bg.jpg') no-repeat center/cover;
}
```

✅ The background blurs **behind** the glass box, not the box itself.

---

## 🧩 10. Blend Mode + Filter Combo Example

```html
<div class="hero">
  <h1>Blended Beauty</h1>
</div>
```

```css
.hero {
  height: 100vh;
  background: 
    linear-gradient(rgba(255,0,150,0.5), rgba(0,200,255,0.5)),
    url('city.jpg') center/cover;
  background-blend-mode: overlay;
  filter: brightness(90%) contrast(110%);
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  font-size: 3rem;
}
```

✅ Soft neon overlay with cinematic tone.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1:

Apply different filters (`grayscale`, `sepia`, `hue-rotate`) to the same image — observe the differences.

### 🧠 Exercise 2:

Create a hover animation where an image becomes colorful when hovered (`grayscale → none`).

### 🧠 Exercise 3:

Design a frosted glass login box using `backdrop-filter`.

### 🧠 Exercise 4:

Experiment with `background-blend-mode` using an image + gradient.

### 🧠 Exercise 5:

Use `mix-blend-mode` on text to blend it stylishly into the background.

---

## ✅ **Summary**

| Concept                 | Description                                     |
| ----------------------- | ----------------------------------------------- |
| `filter`                | Adds effects like blur, brightness, or contrast |
| `drop-shadow()`         | Shadow that follows shape                       |
| `mix-blend-mode`        | Blends foreground and background                |
| `background-blend-mode` | Blends multiple background layers               |
| `backdrop-filter`       | Blurs elements behind a transparent layer       |

---

## 💡 **Pro Tips**

* Use **small blur values** for subtle glassmorphism.
* Combine **brightness + contrast** for vivid results.
* Avoid overusing filters — they can impact performance.
* Always test on multiple browsers (Safari, Chrome handle blending differently).
* Use [**CSS Filter Generator**](https://cssgenerator.org/filter-css-generator.html) for visual experimentation.

---

## 🔮 **Mini Project — Glassmorphic Card**

```html
<div class="card">
  <h2>Glass Effect</h2>
  <p>Modern CSS Magic</p>
</div>

<style>
body {
  background: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e') center/cover;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card {
  background: rgba(255, 255, 255, 0.15);
  backdrop-filter: blur(12px);
  border: 1px solid rgba(255, 255, 255, 0.25);
  border-radius: 20px;
  padding: 40px;
  text-align: center;
  color: white;
  box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}
</style>
```

✅ A clean, **glass-like card** with backdrop blur and soft shadows — pure CSS!

---

