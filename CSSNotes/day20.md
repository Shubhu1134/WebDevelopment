🔥 Congratulations, **Shubh ji!**
You’ve officially reached **Day 20 — the Final Day** of your **Complete CSS Mastery Course** 🎉

This is where you **combine everything** you’ve learned — HTML, CSS, Flexbox, Grid, Animations, Responsive Design, and BEM — to build a **real-world responsive website project** 🌍

Let’s make your learning journey *real* with a **complete website project from scratch**!

---

# 🏁 **Day 20 — Final Project: Build a Complete Responsive Website**

---

## 🎯 **Objective**

By the end of this day, you’ll have built a **fully responsive, professional portfolio website** using clean HTML + CSS architecture — including:

* A responsive **navbar & hero section**
* A **services grid**
* A **portfolio/gallery section**
* An **about section**
* A **contact form**
* Smooth **animations & hover effects**
* Organized structure following **BEM methodology**

---

## 🧱 **Project Overview**

**Project Name:** `Modern Portfolio Website`
**Tech Used:** HTML5 + CSS3 (Flexbox, Grid, Animations, Variables, BEM)
**Duration:** 1 Day (approx 5–6 hours hands-on)
**Folder Structure:**

```
project/
├── index.html
├── css/
│   ├── base.css
│   ├── layout.css
│   ├── components.css
│   ├── utilities.css
│   └── theme.css
└── images/
```

---

## 🧩 **Step 1: HTML Structure (index.html)**

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modern Portfolio</title>
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="css/layout.css">
  <link rel="stylesheet" href="css/components.css">
</head>
<body>

  <!-- Header -->
  <header class="header">
    <nav class="nav container">
      <h1 class="nav__logo">Shubh Ji</h1>
      <ul class="nav__menu">
        <li><a href="#home" class="nav__link">Home</a></li>
        <li><a href="#about" class="nav__link">About</a></li>
        <li><a href="#services" class="nav__link">Services</a></li>
        <li><a href="#portfolio" class="nav__link">Portfolio</a></li>
        <li><a href="#contact" class="nav__link">Contact</a></li>
      </ul>
    </nav>
  </header>

  <!-- Hero -->
  <section id="home" class="hero">
    <div class="hero__content container">
      <h2 class="hero__title">Hi, I'm Shubh Ji 👋</h2>
      <p class="hero__subtitle">A Passionate Software Developer & Designer</p>
      <a href="#portfolio" class="btn btn--primary">View Work</a>
    </div>
  </section>

  <!-- About -->
  <section id="about" class="about container">
    <h2 class="section__title">About Me</h2>
    <p class="about__text">
      I’m a creative developer with a focus on clean code, modern design, and smooth user experiences.
    </p>
  </section>

  <!-- Services -->
  <section id="services" class="services container">
    <h2 class="section__title">Services</h2>
    <div class="services__grid">
      <div class="service-card">
        <h3 class="service-card__title">Web Design</h3>
        <p class="service-card__desc">Modern, minimalistic designs with user-friendly interfaces.</p>
      </div>
      <div class="service-card">
        <h3 class="service-card__title">Web Development</h3>
        <p class="service-card__desc">Responsive, fast, and scalable websites built with best practices.</p>
      </div>
      <div class="service-card">
        <h3 class="service-card__title">UI/UX Consulting</h3>
        <p class="service-card__desc">Helping brands design seamless digital experiences.</p>
      </div>
    </div>
  </section>

  <!-- Portfolio -->
  <section id="portfolio" class="portfolio container">
    <h2 class="section__title">My Work</h2>
    <div class="portfolio__grid">
      <div class="portfolio__item"></div>
      <div class="portfolio__item"></div>
      <div class="portfolio__item"></div>
    </div>
  </section>

  <!-- Contact -->
  <section id="contact" class="contact container">
    <h2 class="section__title">Contact Me</h2>
    <form class="contact__form">
      <input type="text" placeholder="Your Name" required>
      <input type="email" placeholder="Your Email" required>
      <textarea placeholder="Your Message"></textarea>
      <button type="submit" class="btn btn--primary">Send Message</button>
    </form>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <p>© 2025 Shubh Ji | Crafted with ❤️</p>
  </footer>

</body>
</html>
```

---

## 🎨 **Step 2: Base CSS (css/base.css)**

```css
* { margin: 0; padding: 0; box-sizing: border-box; }

:root {
  --primary: #007BFF;
  --dark: #222;
  --light: #f9f9f9;
  --text: #444;
  --max-width: 1100px;
}

body {
  font-family: 'Poppins', sans-serif;
  background: var(--light);
  color: var(--text);
  line-height: 1.6;
}

.container {
  max-width: var(--max-width);
  margin: 0 auto;
  padding: 0 20px;
}

.section__title {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 1rem;
}
```

---

## ⚙️ **Step 3: Layout CSS (css/layout.css)**

```css
/* Header */
.header {
  background: white;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  position: sticky;
  top: 0;
  z-index: 1000;
}
.nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 0;
}
.nav__menu {
  display: flex;
  list-style: none;
  gap: 1.5rem;
}
.nav__link {
  text-decoration: none;
  color: var(--text);
  transition: color 0.3s;
}
.nav__link:hover {
  color: var(--primary);
}

/* Hero */
.hero {
  background: linear-gradient(to right, #007BFF, #00C6FF);
  color: white;
  text-align: center;
  padding: 100px 20px;
}
.hero__title { font-size: 2.5rem; }
.hero__subtitle { font-size: 1.2rem; margin: 10px 0 20px; }

/* Footer */
.footer {
  background: var(--dark);
  color: white;
  text-align: center;
  padding: 1rem;
}
```

---

## 🧩 **Step 4: Components CSS (css/components.css)**

```css
/* Buttons */
.btn {
  display: inline-block;
  padding: 10px 30px;
  border-radius: 5px;
  text-decoration: none;
  transition: all 0.3s ease;
}
.btn--primary {
  background: var(--primary);
  color: white;
}
.btn--primary:hover {
  background: #0056b3;
}

/* Services Grid */
.services__grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
}
.service-card {
  background: white;
  padding: 20px;
  border-radius: 10px;
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.service-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

/* Portfolio Grid */
.portfolio__grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}
.portfolio__item {
  background: #ddd;
  height: 200px;
  border-radius: 10px;
  transition: transform 0.4s;
}
.portfolio__item:hover {
  transform: scale(1.05);
}

/* Contact Form */
.contact__form {
  display: flex;
  flex-direction: column;
  gap: 15px;
  max-width: 500px;
  margin: 0 auto;
}
.contact__form input,
.contact__form textarea {
  padding: 12px;
  border-radius: 8px;
  border: 1px solid #ccc;
  resize: none;
}
```

---

## 🧩 **Step 5: Responsive Design**

```css
@media (max-width: 768px) {
  .nav__menu {
    flex-direction: column;
    align-items: center;
  }
  .hero__title {
    font-size: 2rem;
  }
}
```

---

## 🌈 **Step 6: Add Subtle Animations**

```css
.hero__content {
  animation: fadeInUp 1.5s ease forwards;
}
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(50px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
```

---

## 🧠 **Step 7: Deploy & Test**

* Test on multiple screen sizes (mobile, tablet, desktop).
* Use Lighthouse or PageSpeed Insights for performance testing.
* Deploy on GitHub Pages, Netlify, or Vercel for free.

---

## 🎨 **Optional Enhancements**

* Dark Mode toggle using CSS variables
* Scroll-based reveal animations
* Contact form using Formspree or EmailJS
* Smooth scroll navigation
* Add favicon and SEO meta tags

---

## ✅ **Final Project Checklist**

| Feature           | Status |
| ----------------- | ------ |
| Responsive Navbar | ✅      |
| Hero Section      | ✅      |
| About Section     | ✅      |
| Services Grid     | ✅      |
| Portfolio Gallery | ✅      |
| Contact Form      | ✅      |
| Footer            | ✅      |
| Animations        | ✅      |
| BEM Naming        | ✅      |
| Responsive        | ✅      |

---

## 🏆 **You Did It!**

