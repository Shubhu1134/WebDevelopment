

---

# 🧮 **Day 13 — CSS Variables & Custom Properties**

---

## 🎯 **Learning Objectives**

By the end of this session, you’ll be able to:

* Understand what CSS variables are and why they’re useful.
* Declare and use custom properties effectively.
* Use **global** and **local** scopes for variables.
* Apply **fallback values** for better compatibility.
* Create **themes (dark/light)** using CSS variables.
* Manipulate variables dynamically (with JavaScript).

---

## 🧩 1. What Are CSS Variables?

CSS Variables (also called **Custom Properties**) are user-defined values that can be reused throughout your stylesheets.

They make CSS **easier to maintain, theme, and update**.

### Syntax

```css
--variable-name: value;
```

Use it with:

```css
property: var(--variable-name);
```

---

### Example

```css
:root {
  --main-color: #3498db;
  --text-color: #2d3436;
}

h1 {
  color: var(--main-color);
}

p {
  color: var(--text-color);
}
```

✅ All headings and paragraphs now use consistent, centralized colors.

---

## 🧩 2. Scope of Variables

### 1️⃣ **Global Scope**

Defined in the `:root` selector — accessible everywhere.

```css
:root {
  --font-main: 'Poppins', sans-serif;
}
```

### 2️⃣ **Local Scope**

Defined inside specific elements — only apply within that context.

```css
.card {
  --card-bg: white;
  background: var(--card-bg);
}
```

✅ Variables can **override each other** when nested.

---

## 🧩 3. Using Fallback Values

If a variable isn’t defined, you can set a fallback:

```css
p {
  color: var(--undefined-color, black);
}
```

✅ Ensures your design still works even if the variable fails.

---

## 🧩 4. Dynamic Theming Example (Light/Dark Mode)

### HTML

```html
<body class="light-theme">
  <button id="toggle-btn">Toggle Theme</button>
  <h1>Welcome to Themed Page</h1>
  <p>Switch between light and dark themes!</p>
</body>
```

### CSS

```css
:root {
  --bg-color: white;
  --text-color: black;
  --accent-color: #0984e3;
}

.dark-theme {
  --bg-color: #2d3436;
  --text-color: #dfe6e9;
  --accent-color: #74b9ff;
}

body {
  background: var(--bg-color);
  color: var(--text-color);
  font-family: Arial, sans-serif;
  transition: background 0.3s, color 0.3s;
}

button {
  background: var(--accent-color);
  color: var(--bg-color);
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}
```

### JavaScript (Optional)

```html
<script>
const btn = document.getElementById('toggle-btn');
btn.addEventListener('click', () => {
  document.body.classList.toggle('dark-theme');
});
</script>
```

✅ One click changes the entire color palette!

---

## 🧩 5. Variables with Units

You can even store units inside variables.

```css
:root {
  --spacing: 16px;
  --radius: 8px;
}

.card {
  padding: var(--spacing);
  border-radius: var(--radius);
}
```

✅ Super handy for maintaining consistent spacing and border radii.

---

## 🧩 6. Nested & Overridden Variables

```css
:root {
  --main-color: royalblue;
}

.container {
  --main-color: coral;
  color: var(--main-color);
}
```

✅ The `.container` uses its **local** version instead of the global one.

---

## 🧩 7. CSS Variables vs. Preprocessor Variables (e.g., SCSS)

| Feature             | CSS Variables | SCSS Variables      |
| ------------------- | ------------- | ------------------- |
| **Runtime change**  | ✅ Yes         | ❌ No                |
| **Browser support** | ✅ Native      | ❌ Needs compilation |
| **Dynamic theming** | ✅ Easy        | ❌ Hard              |
| **Scope**           | Dynamic       | Lexical (fixed)     |

✅ CSS variables are more powerful for **live theming and interactivity**.

---

## 🧩 8. Example — Themed Cards

```html
<div class="card">
  <h2>Card Title</h2>
  <p>This is a themed card using CSS variables.</p>
</div>
```

```css
:root {
  --card-bg: #f5f6fa;
  --card-text: #2f3640;
  --card-shadow: rgba(0,0,0,0.2);
}

.card {
  background: var(--card-bg);
  color: var(--card-text);
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 10px var(--card-shadow);
  width: 300px;
  margin: 50px auto;
  text-align: center;
}
```

✅ Change theme colors in one place — everything updates automatically.

---

## 🧩 9. Real-World Use Case: Design Tokens

Many large-scale design systems (like Google’s Material Design or Tailwind CSS) use **CSS variables as design tokens** for:

* Colors
* Font sizes
* Spacing
* Shadows
* Animation durations

This ensures **consistency** and **easy maintenance**.

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1

Define global variables for:

* Primary color
* Secondary color
* Font size
* Padding

Use them across a web page.

---

### 🧠 Exercise 2

Build a **dark/light theme switcher** using CSS variables (and JS toggle if desired).

---

### 🧠 Exercise 3

Experiment with **local overrides**:
Define `--card-bg` differently for each card to create multi-theme cards.

---

### 🧠 Exercise 4

Create a **design token file** using `:root` to define brand colors, font stacks, and spacing scale.

---

## ✅ **Summary**

| Concept           | Description                |
| ----------------- | -------------------------- |
| `--var-name`      | Declares a variable        |
| `var(--var-name)` | Uses a variable            |
| `:root`           | Global scope               |
| Fallback          | `var(--x, default)`        |
| Local scope       | Variable inside a selector |
| Live updates      | Works dynamically with JS  |

---

## 💡 **Pro Tips**

* Keep all core variables in one place (usually in a `:root` block).
* Use clear, consistent naming like `--color-primary`, `--font-base`.
* Use variables for **colors, spacing, radius, timing**, etc.
* For advanced themes, you can even change variables **based on media queries**.

```css
@media (prefers-color-scheme: dark) {
  :root {
    --bg-color: #2d3436;
    --text-color: #dfe6e9;
  }
}
```

✅ Auto-switches to dark mode if the system preference is dark!

---
