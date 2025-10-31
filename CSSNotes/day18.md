
---

# 🎢 **Day 18 — Advanced Animations & Parallax Effects**

---

## 🎯 **Learning Objectives**

By the end of this module, you’ll be able to:

* Build **multi-layer parallax** scrolling effects
* Combine **transform**, **perspective**, and **3D rotation**
* Animate using **CSS variables** and **custom properties**
* Chain complex animations for storytelling pages
* Use performance-friendly motion design techniques

---

## 🧩 1️⃣ Understanding Parallax

**Parallax effect** = foreground and background moving at different speeds → illusion of depth.
Commonly seen in hero sections, portfolios, or scroll-based storytelling sites.

---

## 🧩 2️⃣ Simple Parallax with `background-attachment: fixed`

```html
<section class="hero"></section>

<style>
.hero {
  height: 100vh;
  background-image: url('mountains.jpg');
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
}
</style>
```

✅ Background stays fixed while content scrolls → creates depth.

---

## 🧩 3️⃣ Multi-Layer Parallax Effect

```html
<div class="parallax">
  <div class="layer layer-back"></div>
  <div class="layer layer-mid"></div>
  <div class="layer layer-front"></div>
</div>

<style>
body { margin: 0; overflow-x: hidden; height: 200vh; }

.parallax {
  position: relative;
  height: 100vh;
  perspective: 1px;
  overflow-x: hidden;
  overflow-y: auto;
  transform-style: preserve-3d;
}

.layer {
  position: absolute;
  top: 0; left: 0;
  width: 100%; height: 100%;
  background-size: cover;
  background-position: center;
}

.layer-back  { background-image: url('sky.jpg');    transform: translateZ(-2px) scale(3); }
.layer-mid   { background-image: url('mountains.jpg'); transform: translateZ(-1px) scale(2); }
.layer-front { background-image: url('forest.png'); }
</style>
```

✅ Each layer moves differently as you scroll, giving a 3D illusion.

---

## 🧩 4️⃣ Perspective & 3D Transformations

```html
<div class="card">
  <div class="inner">
    <h2>Hello 3D</h2>
  </div>
</div>

<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  perspective: 800px;
}
.card {
  width: 200px; height: 200px;
  background: linear-gradient(135deg, #ff9a9e, #fad0c4);
  transform-style: preserve-3d;
  animation: spin 6s linear infinite;
}
@keyframes spin {
  0%   { transform: rotateY(0deg); }
  100% { transform: rotateY(360deg); }
}
</style>
```

✅ A continuously spinning 3D card.

---

## 🧩 5️⃣ Animate with CSS Variables

```html
<div class="circle"></div>

<style>
:root { --rotate: 0deg; }

.circle {
  width: 100px; height: 100px;
  background: conic-gradient(red, yellow, lime, cyan, blue, magenta, red);
  border-radius: 50%;
  animation: spin 4s linear infinite;
}

@keyframes spin {
  0%   { transform: rotate(var(--rotate)); }
  100% { transform: rotate(calc(var(--rotate) + 360deg)); }
}
</style>
```

✅ Demonstrates how variables can make animations flexible and reusable.

---

## 🧩 6️⃣ Scroll-Triggered Parallax (CSS-Only Trick)

```html
<section class="scroll"></section>

<style>
.scroll {
  height: 200vh;
  background: linear-gradient(to bottom, #000, #111);
}
.scroll::before {
  content: '';
  position: sticky;
  top: 0;
  display: block;
  height: 100vh;
  background: url('stars.jpg') center / cover no-repeat;
  transform: scale(1.2);
}
</style>
```

✅ The stars stay fixed as you scroll through darkness — a space-like effect.

---

## 🧩 7️⃣ Combining Animations

Create layered motions: background slides, text fades, icons rotate.

```css
@keyframes slideIn  { from { transform: translateX(-100px); opacity: 0; } to { transform: translateX(0); opacity: 1; } }
@keyframes fadeUp   { from { transform: translateY(50px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }

.hero h1 { animation: slideIn 1s ease forwards; }
.hero p  { animation: fadeUp 1.2s ease forwards 0.3s; }
```

✅ Text enters smoothly from different directions.

---

## 🧩 8️⃣ Parallax Hero with Animated Overlay

```html
<section class="parallax-hero">
  <h1>Explore the Depth</h1>
</section>

<style>
.parallax-hero {
  position: relative;
  height: 100vh;
  background: url('forest.jpg') center/cover fixed;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  font-size: 3rem;
  text-shadow: 0 0 20px #000;
}
.parallax-hero::after {
  content: '';
  position: absolute;
  inset: 0;
  background: rgba(0,0,0,0.3);
  animation: fadeOverlay 6s ease-in-out infinite alternate;
}
@keyframes fadeOverlay {
  from { background: rgba(0,0,0,0.1); }
  to   { background: rgba(0,0,0,0.6); }
}
</style>
```

✅ Subtle fading overlay + parallax = cinematic intro.

---

## 🧩 9️⃣ Performance Tips

* Prefer `transform` and `opacity` for smooth motion.
* Avoid animating `top`, `left`, `width`, `height`.
* Use `will-change: transform;` for heavy animations.
* Keep `animation-duration` ≤ 2 s for micro-interactions.
* Consider reducing motion for accessibility (`@media (prefers-reduced-motion)`).

---

## 🧪 **Practice Exercises**

1. Create a **3D rotating product card** (like an e-commerce preview).
2. Build a **scroll-based parallax landing page** with 3 layers.
3. Animate a **sunrise scene** — sky color + moving sun.
4. Design a **spinning loader** with perspective rotation.
5. Combine **fade-in text + parallax background** for a hero banner.

---

## ✅ **Summary**

| Concept                        | Description                  |
| ------------------------------ | ---------------------------- |
| `perspective`                  | Gives depth to 3D space      |
| `transform-style: preserve-3d` | Enables nested 3D            |
| `translateZ()`                 | Moves element closer/farther |
| `background-attachment: fixed` | Static background parallax   |
| `will-change`                  | Performance optimization     |

---

## 🎨 **Mini Project — Animated Parallax Showcase**

```html
<section class="showcase">
  <h1>CSS 3D & Parallax Showcase</h1>
</section>

<style>
body, html { margin: 0; padding: 0; height: 100%; overflow-x: hidden; }

.showcase {
  height: 100vh;
  background: url('city.jpg') center/cover fixed;
  color: white;
  font-size: 3rem;
  display: flex;
  justify-content: center;
  align-items: center;
  text-shadow: 0 0 20px #000;
  animation: zoomIn 10s ease-in-out infinite alternate;
}

@keyframes zoomIn {
  from { transform: scale(1); }
  to   { transform: scale(1.2); }
}
</style>
```

✅ A full-screen cinematic effect combining **zoom + parallax**.

---
