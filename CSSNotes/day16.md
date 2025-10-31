
---

# 🔄 **Day 16 — CSS Transitions & Transforms**

---

## 🎯 **Learning Objectives**

By the end of today’s session, you’ll be able to:

* Apply smooth transitions to hover effects.
* Use 2D and 3D transforms (`translate`, `rotate`, `scale`, `skew`).
* Combine multiple transforms.
* Control timing with `transition-timing-function`.
* Create realistic hover animations and interactive cards.

---

## 🧩 1. CSS Transitions — Introduction

A **transition** allows property changes to occur **gradually** instead of instantly.

### Basic Syntax

```css
transition: property duration timing-function delay;
```

### Example

```css
button {
  background: #2196f3;
  transition: background 0.3s ease;
}

button:hover {
  background: #0d47a1;
}
```

✅ When hovered, the background color changes smoothly over 0.3 seconds.

---

## 🧩 2. Transition Properties

| Property                     | Description         | Example                                    |
| ---------------------------- | ------------------- | ------------------------------------------ |
| `transition-property`        | Property to animate | `transition-property: transform;`          |
| `transition-duration`        | Time for animation  | `transition-duration: 0.5s;`               |
| `transition-timing-function` | Motion style        | `transition-timing-function: ease-in-out;` |
| `transition-delay`           | Start delay         | `transition-delay: 0.2s;`                  |

---

### Common Timing Functions

| Function                       | Description                        |
| ------------------------------ | ---------------------------------- |
| `linear`                       | Constant speed                     |
| `ease`                         | Default, starts slow → fast → slow |
| `ease-in`                      | Starts slow, ends fast             |
| `ease-out`                     | Starts fast, ends slow             |
| `ease-in-out`                  | Slow start & end                   |
| `cubic-bezier(x1, y1, x2, y2)` | Custom control curve               |

---

### Multiple Transitions Example

```css
.box {
  width: 100px;
  height: 100px;
  background: coral;
  transition: width 0.3s, height 0.3s, background 0.5s;
}
.box:hover {
  width: 150px;
  height: 150px;
  background: teal;
}
```

✅ Three properties animate at once with smooth timing.

---

## 🧩 3. CSS Transforms — Introduction

The **`transform`** property allows you to **move, scale, rotate, or skew** elements.

### Basic Syntax

```css
transform: function(value);
```

---

### Common Transform Functions

| Function              | Description                  | Example                             |
| --------------------- | ---------------------------- | ----------------------------------- |
| `translate(x, y)`     | Moves element                | `transform: translate(50px, 20px);` |
| `scale(x, y)`         | Resizes element              | `transform: scale(1.2, 1.2);`       |
| `rotate(deg)`         | Rotates element              | `transform: rotate(45deg);`         |
| `skew(x, y)`          | Skews element                | `transform: skew(10deg, 5deg);`     |
| `matrix(a,b,c,d,e,f)` | Custom transformation matrix | *(advanced)*                        |

---

## 🧩 4. Translate (Move Elements)

```css
.box:hover {
  transform: translate(50px, 0);
}
```

✅ Moves the element 50px to the right when hovered.

---

## 🧩 5. Scale (Resize Elements)

```css
img:hover {
  transform: scale(1.2);
  transition: 0.3s;
}
```

✅ Zoom-in effect — commonly used for image galleries.

---

## 🧩 6. Rotate (Spin Elements)

```css
.box:hover {
  transform: rotate(45deg);
}
```

✅ Rotates the element clockwise by 45 degrees.

---

## 🧩 7. Skew (Tilt Elements)

```css
.box:hover {
  transform: skew(10deg, 5deg);
}
```

✅ Creates a tilted or italicized perspective.

---

## 🧩 8. Combining Multiple Transforms

You can chain multiple transformations together:

```css
.box:hover {
  transform: scale(1.2) rotate(10deg) translateY(-10px);
}
```

✅ Order matters — transformations apply in sequence.

---

## 🧩 9. Transform Origin

By default, transforms rotate or scale around the **center**.
You can change this using `transform-origin`.

```css
transform-origin: top left;
transform: rotate(45deg);
```

✅ Rotates around the top-left corner instead of the center.

---

## 🧩 10. 3D Transforms (Preview)

Add depth using 3D transforms:

```css
.cube {
  transform: rotateY(45deg) translateZ(50px);
}
```

You can combine with:

* `rotateX(deg)`
* `rotateY(deg)`
* `translateZ(px)`
* `perspective()`

✅ We’ll explore this deeper in the animation section (Day 17).

---

## 🧩 11. Transition + Transform Together (Interactive Example)

```html
<div class="card"></div>
```

```css
.card {
  width: 150px;
  height: 150px;
  background: linear-gradient(45deg, #2196f3, #21cbf3);
  border-radius: 15px;
  transition: transform 0.4s ease, box-shadow 0.4s ease;
}
.card:hover {
  transform: translateY(-10px) scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}
```

✅ A smooth “lift-up” card hover effect — simple yet elegant.

---

## 🧩 12. Hover Button Animation Example

```html
<button class="btn">Hover Me</button>

<style>
.btn {
  background: #ff6f61;
  color: white;
  padding: 15px 30px;
  font-size: 18px;
  border: none;
  border-radius: 8px;
  transition: all 0.3s ease;
  cursor: pointer;
}

.btn:hover {
  transform: scale(1.1);
  background: #ff3d00;
  box-shadow: 0 8px 15px rgba(0,0,0,0.2);
}
</style>
```

✅ The button smoothly grows and brightens when hovered.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1:

Make a box that grows, rotates, and changes color smoothly when hovered.

### 🧠 Exercise 2:

Create a photo gallery where images zoom in on hover.

### 🧠 Exercise 3:

Make a navigation bar with links that lift slightly when hovered.

### 🧠 Exercise 4:

Design a card flip animation using `rotateY(180deg)`.

### 🧠 Exercise 5:

Experiment with different `transition-timing-function` values and see the motion difference.

---

## ✅ **Summary**

| Concept            | Description                               |
| ------------------ | ----------------------------------------- |
| `transition`       | Adds smooth changes to properties         |
| `transform`        | Moves, rotates, scales, or skews elements |
| `translate()`      | Moves the element                         |
| `scale()`          | Zooms in/out                              |
| `rotate()`         | Rotates element                           |
| `skew()`           | Tilts element                             |
| `transform-origin` | Sets pivot point for transform            |

---

## 💡 **Pro Tips**

* Only animatable properties (like `transform`, `color`, `opacity`) can be transitioned.
* Combine **transitions** and **transforms** for performance-friendly animations.
* Avoid animating layout properties (like `width`, `height`) too often — they cause reflows.
* Use **GPU-accelerated transforms** (`translateZ(0)`) for smoother animations.
* Keep animations subtle for professional UI design.

---

## 🔮 **Mini Project — Interactive Profile Card**

```html
<div class="profile-card">
  <img src="https://i.pravatar.cc/150" alt="Avatar">
  <h3>Shubh Ji</h3>
  <p>Frontend Developer</p>
</div>

<style>
body {
  background: #f0f2f5;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  font-family: 'Poppins', sans-serif;
}

.profile-card {
  width: 220px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
  text-align: center;
  padding: 20px;
  transition: transform 0.4s ease, box-shadow 0.4s ease;
}

.profile-card:hover {
  transform: translateY(-10px) scale(1.05);
  box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

.profile-card img {
  border-radius: 50%;
  transition: transform 0.4s ease;
}

.profile-card:hover img {
  transform: rotate(5deg) scale(1.1);
}
</style>
```

✅ Clean and interactive — uses both **transition** and **transform** for a modern card hover animation.

---
