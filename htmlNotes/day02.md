### day -2
---

# 🗓️ **Day 2 — Working with Text, Headings, and Lists**

---

## 🎯 Learning Objectives

By the end of Day 2, you’ll be able to:

* Use headings properly and semantically.
* Create and structure paragraphs effectively.
* Format inline text (bold, italic, emphasis, etc.).
* Use HTML lists (ordered, unordered, and description).
* Understand best practices for text accessibility and hierarchy.

---

## 🧱 1. Understanding HTML Text Elements

Text is the foundation of most web content.
HTML provides different **elements** to organize and style it meaningfully.

---

## 🧩 2. Headings

### 🔹 Syntax:

```html
<h1>Main Heading</h1>
<h2>Subheading</h2>
<h3>Section Heading</h3>
<h4>Sub-section</h4>
<h5>Minor Heading</h5>
<h6>Smallest Heading</h6>
```

### 🧠 Key Notes:

* HTML provides **six levels** of headings: `<h1>` to `<h6>`.
* `<h1>` is the most important; `<h6>` is the least.
* Use **only one `<h1>` per page** for SEO and accessibility.
* Don’t use headings just for size — that’s CSS’s job.

### Example:

```html
<h1>HTML Mastery Course</h1>
<h2>Day 2: Working with Text</h2>
<h3>Introduction to Headings</h3>
```

---

## 🧾 3. Paragraphs

Use the `<p>` tag to group text into paragraphs.

```html
<p>HTML is the standard markup language for creating web pages. It defines the structure of a page and allows embedding of text, images, and links.</p>
```

**Tips:**

* Browsers automatically add space above and below paragraphs.
* Avoid using `<br>` for spacing; use `<p>` for separate ideas.

---

## ✍️ 4. Line Breaks and Horizontal Rules

Sometimes you need to break a line without starting a new paragraph.

```html
<p>This is line one.<br>This is line two.</p>
```

To separate sections visually:

```html
<hr>
```

---

## 🎨 5. Inline Text Formatting

HTML provides several inline elements to emphasize or style specific text portions.

| Tag        | Purpose                             | Example                      |
| ---------- | ----------------------------------- | ---------------------------- |
| `<b>`      | Bold text (visual only)             | `<b>Important!</b>`          |
| `<strong>` | Important text (semantic emphasis)  | `<strong>Warning!</strong>`  |
| `<i>`      | Italic text (visual only)           | `<i>Word</i>`                |
| `<em>`     | Emphasized text (semantic emphasis) | `<em>Note</em>`              |
| `<u>`      | Underlined text                     | `<u>highlighted</u>`         |
| `<mark>`   | Highlighted text                    | `<mark>exam question</mark>` |
| `<small>`  | Smaller text                        | `<small>fine print</small>`  |
| `<del>`    | Strikethrough (deleted text)        | `<del>Old price</del>`       |
| `<ins>`    | Inserted/underlined text            | `<ins>New content</ins>`     |
| `<sub>`    | Subscript                           | `H<sub>2</sub>O`             |
| `<sup>`    | Superscript                         | `x<sup>2</sup>`              |
| `<code>`   | Inline code snippet                 | `<code>console.log()</code>` |

### Example:

```html
<p>This is <strong>important</strong> and should be <em>noticed</em> by the user.</p>
<p>Water formula: H<sub>2</sub>O</p>
<p>Math expression: E = mc<sup>2</sup></p>
```

---

## 📋 6. Lists in HTML

Lists organize data or text into readable points.

### 🔹 Unordered List (`<ul>`)

Displays bullet points.

```html
<ul>
  <li>HTML</li>
  <li>CSS</li>
  <li>JavaScript</li>
</ul>
```

### 🔹 Ordered List (`<ol>`)

Displays numbered items.

```html
<ol>
  <li>Wake up</li>
  <li>Code</li>
  <li>Sleep</li>
</ol>
```

#### Attributes:

* `type` – changes numbering style:

  ```html
  <ol type="A">
    <li>Option A</li>
    <li>Option B</li>
  </ol>
  ```
* `start` – specifies starting number:

  ```html
  <ol start="5">
    <li>Fifth</li>
    <li>Sixth</li>
  </ol>
  ```

### 🔹 Nested Lists

Lists can be nested inside each other.

```html
<ul>
  <li>Frontend
    <ul>
      <li>HTML</li>
      <li>CSS</li>
    </ul>
  </li>
  <li>Backend</li>
</ul>
```

### 🔹 Description List (`<dl>`)

Used for terms and definitions.

```html
<dl>
  <dt>HTML</dt>
  <dd>HyperText Markup Language</dd>
  <dt>CSS</dt>
  <dd>Cascading Style Sheets</dd>
</dl>
```

---

## ⚙️ 7. Semantic Use of Formatting

Prefer **semantic tags** (`<strong>`, `<em>`) over purely visual ones (`<b>`, `<i>`), because:

* They improve **accessibility** for screen readers.
* They help **SEO** engines understand content importance.

---

## 🧪 8. Practice Exercises

### Exercise 1 — Headings & Paragraphs

Create a new file `day2.html` and:

* Write a main heading (`h1`) for “HTML Learning Journal”.
* Add 2 subheadings (`h2`), like “Introduction” and “Why HTML Matters”.
* Write paragraphs explaining each.

### Exercise 2 — Inline Formatting

Add a paragraph using:

* `<strong>`, `<em>`, `<mark>`, and `<code>` tags.
  Example:

```html
<p>Learning <strong>HTML</strong> is the <em>first step</em> to becoming a <mark>web developer</mark>.</p>
```

### Exercise 3 — Lists

Create an ordered list of your **daily learning goals**, and a nested unordered list for **topics** under each goal.

---

## 🧩 9. Quick Quiz

1. How many heading levels exist in HTML?
2. Which tag defines a paragraph?
3. Difference between `<b>` and `<strong>`?
4. What tag is used for a numbered list?
5. What is the correct syntax for a definition list?

---

## 🏁 10. Mini Project: “My Learning Journal”

**Goal:** Build a simple text-based webpage summarizing your learning journey so far.

**Instructions:**

1. File name: `learning-journal.html`
2. Include:

   * Main heading: “My HTML Learning Journal”
   * A paragraph introduction.
   * Subheadings for “Day 1” and “Day 2”.
   * Under each, list what you learned using `<ul>` or `<ol>`.
   * Use `<strong>`, `<em>`, `<mark>` for emphasis.
   * Add a small note at the end with `<small>`.

### Example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My HTML Learning Journal</title>
</head>
<body>
  <h1>My HTML Learning Journal</h1>
  <p>Welcome to my learning journal! Here I’m documenting everything I learn about HTML.</p>

  <h2>Day 1: Basics</h2>
  <ul>
    <li>Created my first HTML page</li>
    <li>Learned about tags, elements, and attributes</li>
    <li>Used comments and structured content</li>
  </ul>

  <h2>Day 2: Text and Lists</h2>
  <ol>
    <li>Used headings from <code>h1</code> to <code>h6</code></li>
    <li>Formatted text using <strong>bold</strong> and <em>emphasis</em></li>
    <li>Practiced lists and nested structures</li>
  </ol>

  <hr>
  <p><small>Created by Shubh Ji as part of the HTML Mastery Course.</small></p>
</body>
</html>
```

---

## ✅ Summary

| Concept           | Description                                     |
| ----------------- | ----------------------------------------------- |
| Headings          | `<h1>`–`<h6>` define structure and hierarchy    |
| Paragraphs        | `<p>` groups text content                       |
| Inline text       | `<strong>`, `<em>`, `<mark>`, `<code>`, etc.    |
| Lists             | `<ul>`, `<ol>`, `<dl>` organize information     |
| Semantic emphasis | Prefer `<strong>`/`<em>` for meaning, not style |

---
