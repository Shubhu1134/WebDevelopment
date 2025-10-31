
---

# 🗓️ **Day 4 — HTML Structure & Semantic Layout**

---

## 🎯 Learning Objectives

By the end of Day 4, you’ll be able to:

* Structure a web page with logical sections.
* Use **semantic HTML5 elements** for better readability and SEO.
* Understand the difference between `<div>` and semantic containers.
* Create layouts with headers, navigation, articles, and footers.
* Apply nesting, grouping, and sectioning principles effectively.

---

## 🧱 1. What is HTML Structure?

Every webpage has a **structure** — just like a skeleton that defines where content lives.

Here’s the base layout you’ve already seen:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Basic Structure</title>
</head>
<body>
  <!-- Page content here -->
</body>
</html>
```

Now, we’ll go deeper into how to **organize** that content semantically.

---

## 🧩 2. The `<div>` Element

The `<div>` is a **generic container** used to group content.
It has **no semantic meaning** — but is useful for styling and layout (especially with CSS).

### 🔹 Example:

```html
<div class="container">
  <div class="header">Header Section</div>
  <div class="content">Main Content Here</div>
  <div class="footer">Footer Section</div>
</div>
```

**Usage:**

* When you just need a grouping container.
* Avoid overusing `<div>` when a semantic tag exists for the same purpose.

---

## 🧩 3. Semantic HTML5 Elements

HTML5 introduced **semantic elements** — tags that describe their *meaning* rather than just structure.

### 🧠 Why Semantic HTML Matters

* **Improves accessibility** (screen readers understand it better)
* **Boosts SEO** (search engines know your content purpose)
* **Makes code more readable and maintainable**

---

## 🏗️ 4. Core Semantic Elements

Here’s a list of key HTML5 layout tags and their use cases:

| Tag                         | Purpose                                  | Typical Content         |
| --------------------------- | ---------------------------------------- | ----------------------- |
| `<header>`                  | Intro or navigation for a page/section   | Logo, menu, title       |
| `<nav>`                     | Main navigation links                    | Menus, navbars          |
| `<main>`                    | Central content unique to the page       | Articles, media         |
| `<section>`                 | Thematic grouping of content             | Blog sections, services |
| `<article>`                 | Independent piece of content             | Blog post, news item    |
| `<aside>`                   | Side content related to the main content | Ads, sidebars           |
| `<footer>`                  | Closing section for a page/section       | Copyright, contact info |
| `<figure>` / `<figcaption>` | Media and its description                | Images, diagrams        |

---

## 📘 5. Example: Semantic Page Layout

Let’s build a full, structured page using semantic HTML.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Semantic Page Example</title>
</head>
<body>

  <header>
    <h1>My Blog</h1>
    <nav>
      <a href="#home">Home</a> |
      <a href="#articles">Articles</a> |
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <main>
    <section id="articles">
      <article>
        <h2>Understanding HTML Semantics</h2>
        <p>Semantic HTML makes web pages more meaningful and accessible.</p>
      </article>

      <article>
        <h2>Why Structure Matters</h2>
        <p>Properly structured HTML improves SEO and maintainability.</p>
      </article>
    </section>

    <aside>
      <h3>Related Links</h3>
      <ul>
        <li><a href="#">W3C Guidelines</a></li>
        <li><a href="#">HTML5 Best Practices</a></li>
      </ul>
    </aside>
  </main>

  <footer>
    <p>&copy; 2025 Shubh Ji. All rights reserved.</p>
  </footer>

</body>
</html>
```

---

## 🔎 6. The `<main>` Element

* Represents the *central content* of your page.
* Should **only appear once** per page.
* Excludes headers, footers, and sidebars.

```html
<main>
  <h2>Welcome to My Portfolio</h2>
  <p>Here are my featured projects.</p>
</main>
```

---

## 🧭 7. `<header>` and `<footer>`

Both can be used **inside or outside** `<article>`, `<section>`, etc.

### Example:

```html
<article>
  <header>
    <h2>My Journey in Web Development</h2>
    <p>Posted on October 29, 2025</p>
  </header>

  <p>I started coding in HTML and CSS before learning JavaScript...</p>

  <footer>
    <p>Author: <strong>Shubh Ji</strong></p>
  </footer>
</article>
```

---

## 🗂️ 8. `<section>` vs `<article>`

| Element     | When to Use                                                                    |
| ----------- | ------------------------------------------------------------------------------ |
| `<section>` | For grouping related content under one theme (e.g. “Services”)                 |
| `<article>` | For self-contained content that can stand alone (e.g. blog post, news article) |

Example:

```html
<section>
  <h2>Our Services</h2>
  <article>
    <h3>Web Development</h3>
    <p>We build responsive websites.</p>
  </article>
  <article>
    <h3>App Development</h3>
    <p>We create cross-platform mobile apps.</p>
  </article>
</section>
```

---

## 🧩 9. `<aside>` — The Sidebar

```html
<aside>
  <h3>Recent Posts</h3>
  <ul>
    <li><a href="#">Learn HTML5 in 7 Days</a></li>
    <li><a href="#">Semantic vs Non-semantic</a></li>
  </ul>
</aside>
```

Typically used for:

* Related content
* Ads
* Side notes
* Navigation links

---

## ⚙️ 10. Nesting and Hierarchy

HTML should follow **logical nesting** — elements inside their parent container.

❌ Wrong:

```html
<p><h2>Heading inside a paragraph</h2></p>
```

✅ Correct:

```html
<section>
  <h2>Proper Nesting</h2>
  <p>This content is properly nested within a section.</p>
</section>
```

---

## 🧪 11. Practice Exercises

### Exercise 1 — Simple Page Structure

Create `day4.html` that includes:

* `<header>` with title and nav links
* `<main>` with two `<section>`s
* Each section contains `<article>`s
* `<aside>` for related info
* `<footer>` with copyright

### Exercise 2 — Blog Layout

Build a blog layout with:

* Blog title in `<header>`
* Two articles with individual footers
* Sidebar using `<aside>`

---

## 🧩 12. Quick Quiz

1. What is the purpose of `<main>`?
2. Which tag is best for navigation links?
3. What’s the difference between `<section>` and `<article>`?
4. Can `<header>` and `<footer>` appear inside `<article>`?
5. Why should you use semantic tags over `<div>`?

---

## 🏁 13. Mini Project — “Personal Portfolio Structure”

**Goal:** Create a fully structured page using semantic HTML.

**Instructions:**

1. File: `portfolio-structure.html`
2. Include:

   * Header (name, tagline, nav)
   * Main (sections: About, Projects, Contact)
   * Each project in `<article>`
   * Sidebar (`<aside>`) with links or achievements
   * Footer (copyright)

### Example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shubh Ji Portfolio Structure</title>
</head>
<body>

  <header>
    <h1>Shubh Ji</h1>
    <p>Software Developer | Web Enthusiast</p>
    <nav>
      <a href="#about">About</a> |
      <a href="#projects">Projects</a> |
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <main>
    <section id="about">
      <h2>About Me</h2>
      <p>I’m a software developer passionate about creating impactful web applications.</p>
    </section>

    <section id="projects">
      <h2>Projects</h2>
      <article>
        <h3>Portfolio Website</h3>
        <p>A personal website built with HTML and CSS.</p>
      </article>
      <article>
        <h3>Task Tracker App</h3>
        <p>A productivity tool for managing daily tasks efficiently.</p>
      </article>
    </section>

    <aside>
      <h3>Achievements</h3>
      <ul>
        <li>Completed 100 Days of Code</li>
        <li>Open Source Contributor</li>
      </ul>
    </aside>
  </main>

  <footer>
    <p>&copy; 2025 Shubh Ji | All Rights Reserved</p>
  </footer>

</body>
</html>
```

---

## ✅ Summary

| Concept       | Description                                                           |
| ------------- | --------------------------------------------------------------------- |
| `<div>`       | Generic container with no semantic meaning                            |
| Semantic Tags | `<header>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>` |
| Accessibility | Helps screen readers and SEO engines understand content               |
| Best Practice | Use semantic tags instead of too many `<div>`s                        |

---

W