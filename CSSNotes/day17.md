

---

# 🎞️ **Day 17 — CSS Animations & Keyframes**

---

## 🎯 **Learning Objectives**

By the end of this day, you’ll be able to:

* Create custom animations using `@keyframes`.
* Control animation timing, iteration, and direction.
* Chain multiple animations.
* Combine animations with transforms.
* Build realistic and smooth motion effects.

---

## 🧩 1. What Are CSS Animations?

While **transitions** animate from one state to another (e.g. hover),
**animations** can **continuously change** styles over time — even loop infinitely.

---

## 🧩 2. The `@keyframes` Rule

Defines **stages of animation** — from `0%` (start) to `100%` (end).

### Example

```css
@keyframes move {
  from { transform: translateX(0); }
  to { transform: translateX(200px); }
}

.box {
  animation: move 2s ease-in-out;
}
```

✅ The `.box` moves 200px to the right in 2 seconds.

---

## 🧩 3. Full Animation Syntax

```css
animation: name duration timing-function delay iteration-count direction fill-mode;
```

| Property                    | Description       | Example                          |
| --------------------------- | ----------------- | -------------------------------- |
| `animation-name`            | Keyframes name    | `slide`                          |
| `animation-duration`        | How long it runs  | `2s`                             |
| `animation-timing-function` | Speed curve       | `ease-in-out`                    |
| `animation-delay`           | Wait before start | `1s`                             |
| `animation-iteration-count` | How many times    | `infinite`                       |
| `animation-direction`       | Play direction    | `normal`, `reverse`, `alternate` |
| `animation-fill-mode`       | Keeps final state | `forwards`                       |
| `animation-play-state`      | Pause/resume      | `running`, `paused`              |

---

## 🧩 4. Example — Bouncing Ball Animation

```html
<div class="ball"></div>

<style>
.ball {
  width: 50px;
  height: 50px;
  background: #ff5722;
  border-radius: 50%;
  position: relative;
  animation: bounce 1s ease-in-out infinite alternate;
}

@keyframes bounce {
  from {
    transform: translateY(0);
  }
  to {
    transform: translateY(200px);
  }
}
</style>
```

✅ The ball smoothly bounces up and down forever.

---

## 🧩 5. Using Keyframe Percentages

```css
@keyframes pulse {
  0%   { transform: scale(1); }
  50%  { transform: scale(1.2); }
  100% { transform: scale(1); }
}
```

✅ Pulses smoothly from small → big → small.

---

## 🧩 6. Looping Animations

Use `animation-iteration-count: infinite;`
or shorthand:

```css
animation: pulse 2s ease-in-out infinite;
```

✅ Repeats forever — perfect for glowing or bouncing effects.

---

## 🧩 7. Animation Direction

| Value               | Description                            |
| ------------------- | -------------------------------------- |
| `normal`            | Plays forward each time                |
| `reverse`           | Plays backward                         |
| `alternate`         | Alternates between forward and reverse |
| `alternate-reverse` | Starts reversed then alternates        |

---

### Example

```css
animation: bounce 1s ease-in-out infinite alternate;
```

✅ Moves up and down — a realistic, continuous bounce.

---

## 🧩 8. Animation Fill Modes

| Value       | Description                                 |
| ----------- | ------------------------------------------- |
| `none`      | Reverts to original styles                  |
| `forwards`  | Keeps end style after finish                |
| `backwards` | Applies start style before animation begins |
| `both`      | Keeps both start & end styles               |

---

### Example

```css
.box {
  animation: fadeIn 2s ease forwards;
}
@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}
```

✅ Element fades in and stays visible (doesn’t disappear after).

---

## 🧩 9. Multiple Animations on One Element

```css
.box {
  animation: move 2s linear infinite alternate, colorChange 4s ease-in-out infinite;
}

@keyframes move {
  from { transform: translateY(0); }
  to { transform: translateY(-50px); }
}

@keyframes colorChange {
  0% { background: red; }
  50% { background: yellow; }
  100% { background: red; }
}
```

✅ Moves and changes color simultaneously.

---

## 🧩 10. Chained Animation Example (Slide + Fade)

```css
@keyframes slideFade {
  0% {
    opacity: 0;
    transform: translateY(30px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

.element {
  animation: slideFade 1s ease forwards;
}
```

✅ Smooth "fade and slide up" effect — perfect for page load animations.

---

## 🧩 11. Delays and Staggered Animations

```css
.card:nth-child(1) { animation-delay: 0s; }
.card:nth-child(2) { animation-delay: 0.2s; }
.card:nth-child(3) { animation-delay: 0.4s; }
```

✅ Great for revealing multiple elements one by one — like a fade-in gallery or list.

---

## 🧩 12. Real Example — Glowing Button Animation

```html
<button class="glow">Click Me</button>

<style>
.glow {
  padding: 15px 40px;
  border: none;
  border-radius: 8px;
  background: #6200ea;
  color: white;
  font-size: 18px;
  cursor: pointer;
  animation: neon 1.5s ease-in-out infinite alternate;
}

@keyframes neon {
  from {
    box-shadow: 0 0 5px #6200ea, 0 0 10px #6200ea;
  }
  to {
    box-shadow: 0 0 20px #b388ff, 0 0 40px #b388ff;
  }
}
</style>
```

✅ Creates a pulsating neon button that glows softly.

---

## 🧩 13. Pausing Animations

You can pause or resume animations using JavaScript or CSS:

```css
.box:hover {
  animation-play-state: paused;
}
```

✅ Animation freezes when hovered.

---

## 🧩 14. Animation Performance Tips

* Prefer `transform` and `opacity` animations (GPU-accelerated).
* Avoid animating layout properties (like `width`, `height`).
* Use `will-change` to optimize performance.
* Keep durations short (0.3s–2s range).

Example:

```css
.card {
  will-change: transform, opacity;
}
```

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1:

Create a **pulsing heart** animation using `scale()`.

### 🧠 Exercise 2:

Animate a **loading spinner** using `rotate()`.

### 🧠 Exercise 3:

Make a **fading text banner** using `opacity` and `translateY`.

### 🧠 Exercise 4:

Design a **bouncing ball** with `alternate` motion.

### 🧠 Exercise 5:

Build a **shimmering button** using gradient + `background-position` animation.

---

## ✅ **Summary**

| Concept                     | Description                          |
| --------------------------- | ------------------------------------ |
| `@keyframes`                | Defines animation stages             |
| `animation`                 | Shorthand for all animation settings |
| `animation-duration`        | Total time of animation              |
| `animation-iteration-count` | Number of repeats                    |
| `animation-direction`       | Forward/reverse/alternate            |
| `animation-fill-mode`       | Keeps end styles                     |
| `animation-play-state`      | Controls play/pause                  |

---

## 💡 **Pro Tips**

* Combine **transitions** and **animations** for layered effects.
* Always use **ease-in-out** for natural motion.
* Use **animation-delay** for staggering elements.
* Keep motion consistent with your brand’s “feel.”
* Test animations on mobile — slow devices can exaggerate effects.

---

## 🔮 **Mini Project — Floating Card Animation**

```html
<div class="floating-card">
  <h2>Floating Card</h2>
  <p>CSS Animation Magic ✨</p>
</div>

<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: linear-gradient(135deg, #89f7fe, #66a6ff);
  font-family: 'Poppins', sans-serif;
}

.floating-card {
  background: white;
  padding: 40px;
  border-radius: 15px;
  text-align: center;
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
  animation: float 3s ease-in-out infinite alternate;
}

@keyframes float {
  0% { transform: translateY(0); }
  100% { transform: translateY(-20px); }
}
</style>
```

✅ A soft “floating” animation — perfect for hero sections or profile cards.

---

