
---

# 🧊 **Day 12 — CSS Transforms, 3D & Parallax Effects**

---

## 🎯 **Learning Objectives**

By the end of this day, you’ll:

* Understand the power of **2D and 3D transforms**.
* Use `translate`, `scale`, `rotate`, and `skew`.
* Create 3D depth using `perspective`.
* Build **3D card flip** and **rotating cube** effects.
* Implement **parallax scrolling** using only CSS.

---

## 🧩 1. What Are CSS Transforms?

Transforms let you **visually manipulate** elements in 2D or 3D space without changing their document layout.

Syntax:

```css
transform: function(value);
```

Multiple transformations:

```css
transform: rotate(20deg) scale(1.5) translateX(50px);
```

---

## 🧩 2. 2D Transform Functions

| Function          | Description         | Example                             |
| ----------------- | ------------------- | ----------------------------------- |
| `translate(x, y)` | Moves element       | `transform: translate(50px, 20px);` |
| `rotate(angle)`   | Rotates element     | `transform: rotate(45deg);`         |
| `scale(x, y)`     | Resizes element     | `transform: scale(1.2, 1.2);`       |
| `skew(x, y)`      | Skews element       | `transform: skew(20deg, 10deg);`    |
| `matrix()`        | Combines transforms | Rarely used manually                |

---

### Example:

```html
<div class="box"></div>

<style>
.box {
  width: 100px;
  height: 100px;
  background: tomato;
  transition: transform 0.5s ease;
}
.box:hover {
  transform: rotate(45deg) scale(1.2);
}
</style>
```

✅ The box rotates and grows when hovered.

---

## 🧩 3. Transform Origin

By default, transforms happen around the **center** of an element.
You can change this using `transform-origin`.

```css
transform-origin: top left;
```

Example:

```css
.box:hover {
  transform-origin: bottom right;
  transform: rotate(45deg);
}
```

---

## 🧩 4. 3D Transform Basics

3D transforms use **X**, **Y**, and **Z axes**.
You must define a **perspective** for the 3D effect to be visible.

### 3D Functions

| Function         | Description            |
| ---------------- | ---------------------- |
| `rotateX(deg)`   | Rotates around X-axis  |
| `rotateY(deg)`   | Rotates around Y-axis  |
| `rotateZ(deg)`   | Rotates around Z-axis  |
| `translateZ(px)` | Moves forward/backward |
| `scaleZ(n)`      | Scales along Z-axis    |

---

## 🧩 5. Using Perspective

Perspective defines how far the viewer is from the object — smaller value = more depth.

Apply on the **parent element**:

```css
.container {
  perspective: 800px;
}
```

---

## 🧩 6. Example — 3D Rotating Card Flip

```html
<div class="card">
  <div class="card-inner">
    <div class="card-front">Front</div>
    <div class="card-back">Back</div>
  </div>
</div>

<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: #f1f2f6;
}

.card {
  width: 200px;
  height: 300px;
  perspective: 1000px;
}

.card-inner {
  width: 100%;
  height: 100%;
  position: relative;
  transform-style: preserve-3d;
  transition: transform 0.8s;
}

.card:hover .card-inner {
  transform: rotateY(180deg);
}

.card-front,
.card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  border-radius: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 24px;
  color: white;
}

.card-front {
  background: #0984e3;
}

.card-back {
  background: #00b894;
  transform: rotateY(180deg);
}
</style>
```

✅ A smooth 3D **card flip** animation.

---

## 🧩 7. Example — 3D Rotating Cube

```html
<div class="cube">
  <div class="face front">Front</div>
  <div class="face back">Back</div>
  <div class="face left">Left</div>
  <div class="face right">Right</div>
  <div class="face top">Top</div>
  <div class="face bottom">Bottom</div>
</div>

<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: #2d3436;
}

.cube {
  position: relative;
  width: 100px;
  height: 100px;
  transform-style: preserve-3d;
  transform: rotateX(-20deg) rotateY(20deg);
  animation: spin 5s infinite linear;
}

.face {
  position: absolute;
  width: 100px;
  height: 100px;
  background: rgba(9, 132, 227, 0.8);
  border: 2px solid white;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  font-weight: bold;
}

.front  { transform: translateZ(50px); }
.back   { transform: rotateY(180deg) translateZ(50px); }
.right  { transform: rotateY(90deg) translateZ(50px); }
.left   { transform: rotateY(-90deg) translateZ(50px); }
.top    { transform: rotateX(90deg) translateZ(50px); }
.bottom { transform: rotateX(-90deg) translateZ(50px); }

@keyframes spin {
  from { transform: rotateX(0) rotateY(0); }
  to { transform: rotateX(360deg) rotateY(360deg); }
}
</style>
```

✅ Creates a rotating 3D cube using pure CSS!

---

## 🧩 8. Parallax Scrolling Effect (Pure CSS)

Parallax = background moves slower than the foreground for a 3D feel.

```html
<section class="parallax"></section>
<section class="content">
  <h2>Welcome to Parallax</h2>
  <p>Scroll down to feel the depth.</p>
</section>

<style>
body, html {
  margin: 0;
  height: 100%;
  overflow-x: hidden;
}

.parallax {
  background-image: url('https://picsum.photos/1200/800');
  height: 100vh;
  background-attachment: fixed;
  background-size: cover;
  background-position: center;
}

.content {
  height: 100vh;
  background: white;
  text-align: center;
  padding-top: 50px;
}
</style>
```

✅ A beautiful **scroll-based parallax effect** using only CSS.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1

Create a box that rotates and scales on hover with a shadow effect.

### 🧠 Exercise 2

Design a **3D card flip** with front and back information.

### 🧠 Exercise 3

Create a **rotating cube** and label each side.

### 🧠 Exercise 4

Build a **parallax landing page** with at least 3 sections.

---

## ✅ **Summary**

| Concept                        | Description                               |
| ------------------------------ | ----------------------------------------- |
| `transform`                    | Moves, rotates, scales, or skews elements |
| `transform-origin`             | Defines rotation/scaling point            |
| `perspective`                  | Adds 3D depth                             |
| `transform-style: preserve-3d` | Enables 3D child rendering                |
| `backface-visibility`          | Hides flipped side                        |
| `background-attachment: fixed` | Used in parallax effect                   |

---

## 💡 **Pro Tips**

* Keep animations subtle — too much movement can feel chaotic.
* Use `will-change: transform;` for smoother 3D animations.
* Combine `transform` with `transition` for elegant effects.
* Use CSS 3D effects for **cards, modals, image galleries**, and **UI depth**.

---

