


# 🗓️ **Day 3 — Links, Images & Multimedia**

---

## 🎯 Learning Objectives

By the end of this day, you’ll be able to:

* Create and style hyperlinks using the `<a>` tag.
* Add images with proper accessibility and performance optimization.
* Embed videos and audio directly into your webpage.
* Use modern HTML5 multimedia elements like `<figure>`, `<video>`, and `<audio>`.
* Understand best practices for responsive and SEO-friendly media.

---

## 🧱 1. The `<a>` Tag — Links and Navigation

The `<a>` (anchor) tag creates **hyperlinks**, connecting one page to another, or even specific sections of the same page.

### 🔹 Basic Syntax

```html
<a href="https://www.google.com">Visit Google</a>
```

**Output:**
👉 [Visit Google](https://www.google.com)

### 🔹 Key Attributes

| Attribute  | Description                                                  | Example                                                  |
| ---------- | ------------------------------------------------------------ | -------------------------------------------------------- |
| `href`     | URL or file path                                             | `<a href="about.html">About</a>`                         |
| `target`   | Where to open link                                           | `_self`, `_blank`, `_parent`, `_top`                     |
| `title`    | Tooltip text                                                 | `<a href="#" title="Click to learn more">Learn More</a>` |
| `download` | Download the file instead of opening                         | `<a href="resume.pdf" download>Download Resume</a>`      |
| `rel`      | Defines relationship; use `noopener noreferrer` for security | `<a href="https://..." target="_blank" rel="noopener">`  |

### 🔹 Opening in a New Tab

```html
<a href="https://github.com/shubhji" target="_blank" rel="noopener noreferrer">
  Visit My GitHub
</a>
```

---

## 🧭 2. Internal and External Links

### 🔹 External Links

Link to another website:

```html
<a href="https://developer.mozilla.org/">MDN Web Docs</a>
```

### 🔹 Internal Links

Link to another page on your website:

```html
<a href="about.html">About Us</a>
```

### 🔹 Anchor Links (Jump within a page)

```html
<a href="#contact">Go to Contact Section</a>

<!-- Later in the same page -->
<h2 id="contact">Contact</h2>
```

---

## 🖼️ 3. Images in HTML

The `<img>` tag embeds images into a webpage.

### 🔹 Basic Syntax

```html
<img src="images/logo.png" alt="Company Logo">
```

### 🔹 Attributes

| Attribute          | Description                                   |
| ------------------ | --------------------------------------------- |
| `src`              | Image path or URL                             |
| `alt`              | Alternative text for accessibility (required) |
| `width` / `height` | Specify image size (in px or %)               |
| `title`            | Tooltip when hovering                         |
| `loading="lazy"`   | Defers loading until image is visible         |

### 🔹 Example:

```html
<img src="profile.jpg" alt="Shubh Ji Profile Photo" width="200" height="200" loading="lazy">
```

### ⚠️ Best Practices:

* Always include `alt` for accessibility.
* Use `loading="lazy"` for better performance.
* Prefer modern formats: `.webp` or `.avif`.
* Avoid using large unoptimized images.

---

## 🖼️ 4. The `<figure>` and `<figcaption>` Elements

Used for self-contained images with captions.

```html
<figure>
  <img src="sunset.jpg" alt="Sunset over the beach">
  <figcaption>Beautiful sunset captured during summer vacation.</figcaption>
</figure>
```

**Benefits:**

* Improves semantics and accessibility.
* Groups image and its caption meaningfully.

---

## 🎬 5. Embedding Videos

The `<video>` element allows embedding of local or external videos.

### 🔹 Basic Syntax

```html
<video src="video.mp4" controls></video>
```

### 🔹 Common Attributes

| Attribute          | Description                             |
| ------------------ | --------------------------------------- |
| `controls`         | Displays play/pause and volume controls |
| `autoplay`         | Starts automatically (must be muted)    |
| `loop`             | Restarts after ending                   |
| `muted`            | Starts without sound                    |
| `poster`           | Thumbnail image before video starts     |
| `width` / `height` | Size of the video                       |

### 🔹 Example:

```html
<video width="500" controls poster="thumbnail.jpg">
  <source src="intro.mp4" type="video/mp4">
  <source src="intro.webm" type="video/webm">
  Your browser does not support HTML5 video.
</video>
```

---

## 🎵 6. Embedding Audio

The `<audio>` element works similarly to `<video>`.

### 🔹 Basic Syntax

```html
<audio src="song.mp3" controls></audio>
```

### 🔹 With Multiple Sources

```html
<audio controls>
  <source src="music.mp3" type="audio/mpeg">
  <source src="music.ogg" type="audio/ogg">
  Your browser does not support the audio element.
</audio>
```

### 🔹 Useful Attributes

* `controls`
* `autoplay`
* `loop`
* `muted`

---

## 🧩 7. Embedding External Media (YouTube, SoundCloud, etc.)

You can use the `<iframe>` element to embed videos from platforms like YouTube.

### Example:

```html
<iframe 
  width="560" 
  height="315" 
  src="https://www.youtube.com/embed/dQw4w9WgXcQ" 
  title="YouTube video player" 
  frameborder="0" 
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
  allowfullscreen>
</iframe>
```

---

## 🧪 8. Practice Exercises

### Exercise 1 — Links

1. Create a file `day3.html`.
2. Add three types of links:

   * External (to MDN or W3Schools)
   * Internal (to another page)
   * Anchor (scroll to section within the same page)

### Exercise 2 — Images

1. Insert at least 3 images:

   * One local
   * One from a URL
   * One using `<figure>` and `<figcaption>`
2. Use proper `alt` text and `loading="lazy"`.

### Exercise 3 — Multimedia

1. Embed an audio clip and a short video.
2. Use attributes like `controls`, `loop`, and `poster`.
3. Add captions if relevant.

---

## 🧩 9. Quick Quiz

1. What does the `<a>` tag stand for?
2. Which attribute opens a link in a new tab?
3. Why is `alt` important for images?
4. What tag is used to embed a video?
5. Which attribute makes media restart automatically?

---

## 🏁 10. Mini Project — “My Media Portfolio”

**Goal:** Create a page that showcases media content — your photo, favorite video, and music sample.

**Instructions:**

1. File: `my-media-portfolio.html`
2. Include:

   * A main heading: “My Media Portfolio”
   * A paragraph introducing yourself
   * A list of your social media links (`<a>` tags)
   * A profile picture (`<img>`)
   * A `<figure>` with caption
   * An embedded YouTube video
   * An `<audio>` player
3. Use comments and proper indentation.

### Example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Media Portfolio</title>
</head>
<body>
  <h1>My Media Portfolio</h1>
  <p>Hi, I’m <strong>Shubh Ji</strong>. Here’s a showcase of some of my favorite media elements.</p>

  <!-- Social Links -->
  <p>
    <a href="https://github.com/shubhji" target="_blank">GitHub</a> |
    <a href="https://linkedin.com/in/shubhji" target="_blank">LinkedIn</a>
  </p>

  <!-- Profile Image -->
  <figure>
    <img src="profile.jpg" alt="Shubh Ji" width="200" loading="lazy">
    <figcaption>This is me at a tech conference!</figcaption>
  </figure>

  <!-- Favorite Video -->
  <h2>Featured Video</h2>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/yourvideoid" 
    title="YouTube video player" frameborder="0" allowfullscreen>
  </iframe>

  <!-- Favorite Music -->
  <h2>My Favorite Song</h2>
  <audio controls>
    <source src="song.mp3" type="audio/mpeg">
    Your browser does not support the audio element.
  </audio>

  <hr>
  <p><small>Created by Shubh Ji — Day 3 of HTML Mastery Course.</small></p>
</body>
</html>
```

---

## ✅ Summary

| Concept                     | You Learned                                 |
| --------------------------- | ------------------------------------------- |
| `<a>`                       | Create internal, external, and anchor links |
| `<img>`                     | Embed images with alt text and lazy loading |
| `<figure>` / `<figcaption>` | Add semantic image captions                 |
| `<video>` / `<audio>`       | Embed multimedia                            |
| `<iframe>`                  | Embed third-party media like YouTube        |

---

