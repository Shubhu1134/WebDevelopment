

---

# 🗓️ **Day 2 — CSS Text Styling & Typography**

---

## 🎯 **Learning Objectives**

By the end of today’s lesson, you’ll be able to:

* Use **font-related CSS properties** effectively.
* Apply **Google Fonts** and custom web fonts.
* Control **text spacing, alignment, and decoration**.
* Use **advanced typography features** like shadows and transformations.
* Understand **best practices for readable UI text**.

---

## 🧩 1. Font Properties Overview

Let’s start with the core CSS properties that control text appearance.

| Property       | Description                       | Example                           |
| -------------- | --------------------------------- | --------------------------------- |
| `font-family`  | Defines the typeface              | `font-family: Arial, sans-serif;` |
| `font-size`    | Sets text size                    | `font-size: 18px;`                |
| `font-weight`  | Controls thickness                | `font-weight: bold;`              |
| `font-style`   | Makes text italic or normal       | `font-style: italic;`             |
| `font-variant` | Small caps or normal              | `font-variant: small-caps;`       |
| `line-height`  | Controls vertical spacing         | `line-height: 1.5;`               |
| `font`         | Shorthand for all font properties | `font: italic bold 16px Arial;`   |

### Example:

```css
p {
  font-family: "Poppins", sans-serif;
  font-size: 18px;
  font-weight: 500;
  line-height: 1.6;
}
```

---

## 🧩 2. Font Family Stack (Fallbacks)

Always define multiple font options — in case a user’s browser doesn’t support one.

```css
h1 {
  font-family: "Roboto", "Helvetica Neue", Arial, sans-serif;
}
```

Here’s what happens:

* The browser tries **Roboto** first.
* If unavailable, it tries **Helvetica Neue**.
* If that fails, it goes to **Arial**, then **sans-serif**.

---

## 🧩 3. Using Google Fonts

Google Fonts gives you 1000+ free, professional web fonts.

### Steps:

1. Go to [https://fonts.google.com](https://fonts.google.com)
2. Choose your desired font (e.g., **Poppins**)
3. Copy the `<link>` code from Google Fonts.
4. Add it to your `<head>` section.

**Example:**

```html
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
```

Then use it in CSS:

```css
body {
  font-family: 'Poppins', sans-serif;
}
```

---

## 🧩 4. Text Color and Background

Control the **color** and **background color** of your text:

```css
h2 {
  color: #2c3e50;
  background-color: #ecf0f1;
}
```

> Tip: Use color contrast tools (like contrast-ratio.com) to ensure readability.

---

## 🧩 5. Text Alignment & Transformation

| Property         | Purpose                   | Example                      |
| ---------------- | ------------------------- | ---------------------------- |
| `text-align`     | Align text                | `text-align: center;`        |
| `text-transform` | Change case               | `text-transform: uppercase;` |
| `text-indent`    | Indent first line         | `text-indent: 50px;`         |
| `direction`      | Control writing direction | `direction: rtl;`            |

### Example:

```css
h1 {
  text-align: center;
  text-transform: uppercase;
}
```

---

## 🧩 6. Text Decoration & Styling

| Property          | Effect                      | Example                          |
| ----------------- | --------------------------- | -------------------------------- |
| `text-decoration` | Underline / overline / none | `text-decoration: underline;`    |
| `text-shadow`     | Adds shadow effect          | `text-shadow: 2px 2px 5px gray;` |
| `letter-spacing`  | Space between letters       | `letter-spacing: 2px;`           |
| `word-spacing`    | Space between words         | `word-spacing: 10px;`            |
| `white-space`     | Control line breaks         | `white-space: nowrap;`           |

### Example:

```css
p {
  text-decoration: underline;
  letter-spacing: 1.5px;
  word-spacing: 5px;
}
```

---

## 🧩 7. Line Height, Spacing, and Readability

Good typography balances space and text flow.

```css
p {
  line-height: 1.6;
  letter-spacing: 0.5px;
  word-spacing: 2px;
}
```

> ✨ Tip:
>
> * Use **1.4–1.8** line-height for paragraphs.
> * Avoid using too many different fonts in one project.

---

## 🧩 8. Font Shorthand Property

Instead of writing multiple properties separately, use **font shorthand**.

```css
font: italic small-caps bold 18px/1.5 'Poppins', sans-serif;
```

Order:
`font-style font-variant font-weight font-size/line-height font-family`

---

## 🧩 9. Text Overflow & Wrapping

When text overflows its container:

```css
p {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
```

This will cut long text and add `...` at the end — often used in cards or product titles.

---

## 🧩 10. Practical Example — Typography in Action

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Day 2 - CSS Typography</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background-color: #f8f9fa;
      color: #333;
      line-height: 1.6;
      margin: 50px;
    }

    h1 {
      text-align: center;
      text-transform: uppercase;
      color: #2c3e50;
    }

    p {
      font-size: 18px;
      text-align: justify;
      text-indent: 40px;
    }

    .quote {
      font-style: italic;
      color: #555;
      text-align: center;
      text-shadow: 2px 2px 4px #ccc;
      margin-top: 20px;
    }

    .highlight {
      background-color: #ffeaa7;
      padding: 5px;
    }
  </style>
</head>
<body>

  <h1>Typography Makes Design Speak</h1>

  <p>
    Good typography enhances readability, builds hierarchy, and adds personality to your content.
    <span class="highlight">Font selection</span> and spacing decisions impact how your message is perceived.
  </p>

  <p class="quote">
    “Typography is the craft of endowing human language with a durable visual form.” — Robert Bringhurst
  </p>

</body>
</html>
```

---

## 🧪 **Practice Exercises**

### 🧠 Exercise 1 — Basic Styling

Create a webpage with headings and paragraphs using:

* Different font families
* Font weights
* Font styles

---

### 🧠 Exercise 2 — Quote Design

Design a block quote with:

* Centered italic text
* Background color
* Text shadow

---

### 🧠 Exercise 3 — Google Fonts Practice

Use **2 different Google Fonts**:

* One for headings
* One for paragraph text

---

## ✅ **Summary**

| Concept                                  | Description                 |
| ---------------------------------------- | --------------------------- |
| `font-family`                            | Defines typeface            |
| `font-size`, `font-weight`, `font-style` | Control size and appearance |
| `text-align`, `text-transform`           | Manage alignment and case   |
| `text-decoration`, `text-shadow`         | Enhance visual appeal       |
| Google Fonts                             | Import custom fonts easily  |
| Line height & spacing                    | Improve readability         |

---
