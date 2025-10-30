 ### Day 1

This will include:

* 📖 Theory (detailed explanations)
* 💻 Code examples
* 🧠 Practice exercises
* 🏁 Mini project

---

# 🗓️ **Day 1 — Getting Started with HTML**

---

## 🎯 Learning Objectives

By the end of Day 1, you’ll be able to:

* Explain what HTML is and how it works with browsers.
* Create a basic HTML document structure.
* Use fundamental tags (`html`, `head`, `body`, `title`, `h1`, `p`).
* Understand the difference between **tags**, **elements**, and **attributes**.
* Use comments and whitespace properly.

---

## 🧠 1. What Is HTML?

**HTML** stands for **HyperText Markup Language**.

It’s a **markup** language (not a programming language) that defines the **structure** of web pages using **elements** called *tags*.

Every web page you visit — whether it’s YouTube, Wikipedia, or ChatGPT — is built on HTML.

**Key points:**

* HTML tells the browser *what* content is on the page.
* CSS tells the browser *how* it should look.
* JavaScript tells the browser *how* it should behave.

---

## ⚙️ 2. The Browser and the Web

When you open a webpage:

1. Your browser sends an HTTP request to a web server.
2. The server responds with an HTML file.
3. The browser reads the HTML and renders it visually.

👉 Think of the browser as a **translator** that converts HTML code into what you see.

---

## 🧩 3. Basic HTML Structure

Every HTML page follows a standard skeleton.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My First HTML Page</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p>This is my very first web page using HTML.</p>
  </body>
</html>
```

### Explanation:

| Part              | Purpose                                     |
| ----------------- | ------------------------------------------- |
| `<!DOCTYPE html>` | Tells the browser this is an HTML5 document |
| `<html>`          | Root element containing everything          |
| `<head>`          | Contains metadata (data about the page)     |
| `<title>`         | Title shown on browser tab                  |
| `<body>`          | Contains the visible page content           |
| `<h1>`            | Heading tag                                 |
| `<p>`             | Paragraph tag                               |

---

## 🧱 4. HTML Elements and Tags

### Element:

An **HTML element** consists of an **opening tag**, **content**, and a **closing tag**.

```html
<p>This is a paragraph.</p>
```

### Empty Elements:

Some elements don’t have closing tags — for example:

```html
<br> <!-- line break -->
<img src="logo.png" alt="Website Logo">
<hr> <!-- horizontal rule -->
```

---

## 🧾 5. Attributes

Attributes provide **extra information** about elements.
They are written inside the opening tag.

Example:

```html
<a href="https://www.google.com" target="_blank">Go to Google</a>
```

| Attribute         | Description                |
| ----------------- | -------------------------- |
| `href`            | The URL the link points to |
| `target="_blank"` | Opens link in a new tab    |

---

## 💬 6. Comments and Whitespace

Comments are ignored by browsers — use them for documentation.

```html
<!-- This is a comment -->
<p>This text will be visible.</p>
```

Whitespace (spaces, tabs, line breaks) inside HTML is mostly ignored — use it to keep code readable.

---

## 🧪 7. Practice Exercises

1. **Exercise 1 – Create your first webpage**

   * Open VS Code.
   * Create a file named `day1.html`.
   * Write a full HTML5 structure.
   * Add a title “Day 1 – My First Page”.
   * Add:

     * One heading (`h1`)
     * One paragraph (`p`)
     * A line break (`<br>`)
     * A horizontal line (`<hr>`)

2. **Exercise 2 – Add Attributes**

   * Add a link to your favorite website.
   * Add an image using `<img>` tag.
   * Include proper `alt` text.

3. **Exercise 3 – Comments**

   * Write comments explaining each section of your code.

---

## 🧰 8. Common Mistakes (and Fixes)

| Mistake                  | What’s Wrong                             | Fix                                       |
| ------------------------ | ---------------------------------------- | ----------------------------------------- |
| `<html>` missing         | Browser may not interpret HTML correctly | Always start with `<html>`                |
| `<p>` not closed         | Content may display incorrectly          | Close tags properly                       |
| Wrong attribute spelling | Tag may not work                         | Check correct syntax (`href`, not `herf`) |
| Forgetting quotes        | Causes parsing errors                    | Always use `" "` around attribute values  |

---

## 🧩 9. Quick Quiz

1. What does HTML stand for?
2. What’s the purpose of `<!DOCTYPE html>`?
3. Which tag defines the title in a web page?
4. Write the correct syntax for a link opening in a new tab.
5. What’s the difference between `<h1>` and `<p>`?

---

## 🏁 10. Mini Project: “My Introduction Page”

**Goal:** Create a simple webpage that introduces yourself.

**Instructions:**

1. Create a new file `my-intro.html`.
2. Add a proper HTML5 structure.
3. Include:

   * A main heading: your name.
   * A subheading: your role (e.g., “Software Developer”).
   * A short bio paragraph.
   * A link to your GitHub or LinkedIn.
   * An image (`img`) of your choosing.
   * Comments labeling each section.

Example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shubh Ji - My Introduction</title>
</head>
<body>
  <!-- Header Section -->
  <h1>Shubh Ji</h1>
  <h2>Software Developer</h2>

  <!-- About Section -->
  <p>Hello! I'm Shubh Ji, a passionate software developer learning full-stack web development. This is my first HTML page!</p>

  <!-- Image Section -->
  <img src="profile.jpg" alt="My Photo" width="200">

  <!-- Link Section -->
  <p>Connect with me on 
     <a href="https://github.com/yourusername" target="_blank">GitHub</a>
  </p>
</body>
</html>
```

---

## ✅ Summary

| Concept        | You Learned                       |
| -------------- | --------------------------------- |
| HTML Structure | `<html>`, `<head>`, `<body>`      |
| Basic Tags     | `<h1>`, `<p>`, `<br>`, `<hr>`     |
| Attributes     | `href`, `src`, `alt`, `target`    |
| Comments       | `<!-- ... -->`                    |
| Syntax         | Nesting and closing tags properly |

