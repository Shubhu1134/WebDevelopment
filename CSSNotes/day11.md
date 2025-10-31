
---

# 🎞️ **Day 11 — CSS Transitions & Animations**

---

## 🎯 **Learning Objectives**

By the end of this session, you’ll be able to:

* Create smooth hover and state-change effects using `transition`.
* Build multi-step animations using `@keyframes`.
* Understand `animation` properties (duration, delay, timing, iteration, etc.).
* Combine transformations and animations for engaging UI.
* Build practical animated elements like buttons, loaders, and modals.

---

## 🧩 1. What Are CSS Transitions?

**Transitions** let you **smoothly change** CSS property values over a specified time instead of jumping instantly.

### Syntax

```css
transition: property duration timing-function delay;
```

### Example

```css
button {
  background: #0984e3;
  color: white;
  padding: 10px 20px;
  border: none;
  transition: background 0.3s ease;
}

button:hover {
  background: #74b9ff;
}
```

✅ The color changes **gradually** instead of instantly.

---

## 🧩 2. Transition Properties

| Property                     | Description                       |
| ---------------------------- | --------------------------------- |
| `transition-property`        | The CSS property to animate       |
| `transition-duration`        | How long it takes                 |
| `transition-timing-function` | Speed curve (e.g. ease, linear)   |
| `transition-delay`           | Wait time before animation starts |

---

### Example:

```css
.box {
  width: 100px;
  height: 100px;
  background: coral;
  transition: width 0.5s ease-in-out 0.2s;
}

.box:hover {
  width: 200px;
}
```

✅ Smoothly expands the box with a slight delay.

---

## 🧩 3. Common Timing Functions

| Function                       | Description                      |
| ------------------------------ | -------------------------------- |
| `ease`                         | Starts slow, ends slow (default) |
| `linear`                       | Constant speed                   |
| `ease-in`                      | Starts slow                      |
| `ease-out`                     | Ends slow                        |
| `ease-in-out`                  | Starts and ends slow             |
| `cubic-bezier(x1, y1, x2, y2)` | Custom curve                     |

### Example:

```css
transition-timing-function: cubic-bezier(0.25, 1, 0.5, 1);
```

---

## 🧩 4. Multiple Transitions

You can animate multiple properties at once:

```css
transition: width 0.5s, background 0.3s ease-in;
```

---

## 🧩 5. Transform + Transition (Perfect Combo)

Transformations let you **move, scale, rotate, or skew** elements.

| Function          | Description    |
| ----------------- | -------------- |
| `translate(x, y)` | Move element   |
| `scale(x, y)`     | Resize element |
| `rotate(deg)`     | Rotate element |
| `skew(x, y)`      | Skew element   |

### Example:

```css
.card {
  transition: transform 0.4s ease, box-shadow 0.4s ease;
}
.card:hover {
  transform: scale(1.05) translateY(-5px);
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}
```

✅ Common hover effect for cards and buttons.

---

## 🧩 6. Introduction to CSS Animations

For more complex motion than transitions, use **`@keyframes`** to define step-by-step changes.

### Example:

```css
@keyframes bounce {
  0%   { transform: translateY(0); }
  50%  { transform: translateY(-30px); }
  100% { transform: translateY(0); }
}
```

Apply the animation:

```css
.ball {
  animation: bounce 1s ease infinite;
}
```

✅ Loops forever with a smooth bouncing effect.

---

## 🧩 7. Animation Properties

| Property                    | Description                                                    |
| --------------------------- | -------------------------------------------------------------- |
| `animation-name`            | The `@keyframes` name                                          |
| `animation-duration`        | How long it runs                                               |
| `animation-timing-function` | Speed curve                                                    |
| `animation-delay`           | When it starts                                                 |
| `animation-iteration-count` | Number of repeats (`1`, `infinite`)                            |
| `animation-direction`       | `normal`, `reverse`, `alternate`                               |
| `animation-fill-mode`       | State before/after animation (`forwards`, `backwards`, `both`) |

---

### Example:

```css
@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

.modal {
  animation: fadeIn 1s ease forwards;
}
```

✅ The modal fades in smoothly and stays visible.

---

## 🧩 8. Shorthand Example

```css
animation: moveRight 2s ease-in-out 0s infinite alternate;
```

→ `name duration timing delay iteration direction`

---

## 🧩 9. Pausing & Controlling Animation

```css
animation-play-state: paused; /* or running */
```

✅ Useful for pausing animations on hover or focus.

---

## 🧩 10. Mini Project — Loading Spinner

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CSS Spinner</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: #dfe6e9;
  }

  .loader {
    width: 80px;
    height: 80px;
    border: 8px solid #b2bec3;
    border-top: 8px solid #0984e3;
    border-radius: 50%;
    animation: spin 1s linear infinite;
  }

  @keyframes spin {
    to { transform: rotate(360deg); }
  }
</style>
</head>
<body>

  <div class="loader"></div>

</body>
</html>
```

✅ A smooth, infinite spinning loader — all pure CSS.

---

## 🧩 11. Bonus — Animated Button Hover

```css
.btn {
  background: #6c5ce7;
  color: white;
  padding: 15px 30px;
  border: none;
  border-radius: 30px;
  transition: all 0.4s ease;
}

.btn:hover {
  transform: scale(1.1);
  background: #a29bfe;
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}
```

✅ Subtle motion enhances user feedback.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Transition

Make a div that changes background color and grows when hovered.

### 🧠 Exercise 2 — Keyframes

Create an animation that moves a ball left to right continuously.

### 🧠 Exercise 3 — Fade-in Section

Animate a section to fade in when page loads.

### 🧠 Exercise 4 — Infinite Loader

Make your own creative loader using `border`, `rotate`, or `scale`.

---

## ✅ **Summary**

| Concept                 | Description                          |
| ----------------------- | ------------------------------------ |
| `transition`            | Smoothly changes between states      |
| `@keyframes`            | Defines animation steps              |
| `animation`             | Runs custom multi-step animations    |
| `transform`             | Moves, rotates, or scales an element |
| `timing-function`       | Controls speed curve                 |
| `infinite`, `alternate` | Control looping and direction        |

---

## 💡 **Pro Tips**

* Avoid overusing motion — use it to **guide attention**, not distract.
* Combine `transform` with `opacity` for the smoothest performance (GPU-accelerated).
* Use `will-change: transform;` for complex animations to optimize rendering.
* For consistency, keep animation durations between `0.2s–0.6s`.

---

