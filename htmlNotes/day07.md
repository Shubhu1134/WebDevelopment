

# 🗓️ **Day 7 — Multimedia in HTML (Audio, Video & Embedding Content)**

---

## 🎯 Learning Objectives

By the end of today, you’ll be able to:

* Use `<audio>` and `<video>` tags effectively.
* Control playback (autoplay, loop, mute, etc.).
* Embed YouTube and external videos.
* Add captions and subtitles for accessibility.
* Understand MIME types and source fallbacks.

---

## 🧱 1. The `<audio>` Element

HTML5 introduced the `<audio>` element for embedding sound clips, music, or podcasts directly into webpages.

### 🔹 Basic Syntax

```html
<audio src="sound.mp3" controls></audio>
```

### 🔹 Recommended Format

It’s best to provide **multiple sources** for browser compatibility.

```html
<audio controls>
  <source src="audio.mp3" type="audio/mpeg">
  <source src="audio.ogg" type="audio/ogg">
  Your browser does not support the audio element.
</audio>
```

### 🔹 Attributes

| Attribute  | Description                                              | Example                  |
| ---------- | -------------------------------------------------------- | ------------------------ |
| `controls` | Displays play/pause UI                                   | `<audio controls>`       |
| `autoplay` | Starts automatically                                     | `<audio autoplay>`       |
| `loop`     | Repeats continuously                                     | `<audio loop>`           |
| `muted`    | Starts with sound off                                    | `<audio muted>`          |
| `preload`  | Hints how much data to load (`none`, `metadata`, `auto`) | `<audio preload="auto">` |

---

## 🎵 Example

```html
<h2>Relaxing Background Music</h2>
<audio controls loop>
  <source src="relaxing.mp3" type="audio/mpeg">
  <source src="relaxing.ogg" type="audio/ogg">
  Your browser doesn’t support audio playback.
</audio>
```

---

## 🎬 2. The `<video>` Element

Used to embed video files directly in a webpage — no plugin required!

### 🔹 Basic Syntax

```html
<video src="movie.mp4" controls></video>
```

### 🔹 Multiple Sources for Compatibility

```html
<video width="640" height="360" controls>
  <source src="movie.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>
```

### 🔹 Key Attributes

| Attribute         | Description                 | Example                        |
| ----------------- | --------------------------- | ------------------------------ |
| `controls`        | Adds play/pause/volume UI   | `<video controls>`             |
| `autoplay`        | Starts automatically        | `<video autoplay>`             |
| `loop`            | Replays automatically       | `<video loop>`                 |
| `muted`           | Mutes video on start        | `<video muted>`                |
| `poster`          | Thumbnail image before play | `<video poster="preview.jpg">` |
| `width`, `height` | Defines video dimensions    | `<video width="500">`          |

---

## 🎥 Example

```html
<h2>Demo Video</h2>
<video width="500" controls poster="thumbnail.jpg">
  <source src="demo.mp4" type="video/mp4">
  <source src="demo.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>
```

---

## 🎞️ 3. Adding Captions and Subtitles

Accessibility matters — subtitles help people with hearing impairments.

```html
<video controls>
  <source src="movie.mp4" type="video/mp4">
  <track src="subtitles.vtt" kind="subtitles" srclang="en" label="English">
</video>
```

### 📄 The `.vtt` File (WebVTT format)

Example of `subtitles.vtt`:

```
WEBVTT

00:00:00.000 --> 00:00:05.000
Welcome to the HTML Multimedia lesson!

00:00:06.000 --> 00:00:10.000
You will learn how to use audio, video, and embeds.
```

---

## 🌐 4. Embedding YouTube Videos

Use the `<iframe>` tag to embed external video content.

```html
<iframe width="560" height="315"
  src="https://www.youtube.com/embed/tgbNymZ7vqY"
  title="YouTube video player"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>
```

### 🧠 Notes

* You can copy the **Embed code** directly from the YouTube “Share” option.
* Change the `width` and `height` to make it responsive.

---

## 🧭 5. Embedding Other Media (Maps, PDFs, etc.)

### 🔹 Google Maps Embed

```html
<iframe
  src="https://www.google.com/maps/embed?pb=!1m18!..."
  width="600"
  height="450"
  style="border:0;"
  allowfullscreen=""
  loading="lazy">
</iframe>
```

### 🔹 Embedding a PDF

```html
<embed src="document.pdf" type="application/pdf" width="100%" height="500px">
```

### 🔹 Embedding an External Webpage

```html
<iframe src="https://www.example.com" width="100%" height="400"></iframe>
```

---

## 🧠 6. MIME Types Reference

| Format      | Type         |
| ----------- | ------------ |
| MP3         | `audio/mpeg` |
| OGG (Audio) | `audio/ogg`  |
| MP4         | `video/mp4`  |
| OGG (Video) | `video/ogg`  |
| WebM        | `video/webm` |

---

## 🧪 7. Practice Exercises

### 🧠 Exercise 1 — Background Audio

Create an audio player with looping background music and mute by default.

### 🧠 Exercise 2 — Video Showcase

Embed a video with a poster image, subtitles, and controls.

### 🧠 Exercise 3 — YouTube & Map Embeds

Add one YouTube video and one Google Map to a webpage using `<iframe>`.

---

## 🎯 8. Mini Project — “Multimedia Portfolio Section”

**Goal:** Create a webpage with audio, video, and embedded external content.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Multimedia Portfolio</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    section {
      margin-bottom: 40px;
    }
    iframe {
      border-radius: 8px;
    }
  </style>
</head>
<body>

  <h1>🎧 Shubh Ji’s Multimedia Portfolio</h1>

  <section>
    <h2>🎵 Audio Track</h2>
    <audio controls loop>
      <source src="intro.mp3" type="audio/mpeg">
      Your browser doesn’t support audio playback.
    </audio>
  </section>

  <section>
    <h2>🎬 Featured Video</h2>
    <video width="600" controls poster="preview.jpg">
      <source src="project-demo.mp4" type="video/mp4">
      <source src="project-demo.ogg" type="video/ogg">
      Your browser does not support HTML5 video.
    </video>
  </section>

  <section>
    <h2>📺 YouTube Integration</h2>
    <iframe width="560" height="315"
      src="https://www.youtube.com/embed/dQw4w9WgXcQ"
      title="Project Video"
      frameborder="0"
      allowfullscreen>
    </iframe>
  </section>

  <section>
    <h2>🗺️ My Location</h2>
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18..."
      width="600"
      height="400"
      style="border:0;"
      allowfullscreen=""
      loading="lazy">
    </iframe>
  </section>

</body>
</html>
```

---

## ✅ Summary

| Concept       | Description                               |
| ------------- | ----------------------------------------- |
| `<audio>`     | Embed sound/music                         |
| `<video>`     | Embed video clips                         |
| `<iframe>`    | Embed YouTube, Maps, or other pages       |
| `<track>`     | Add captions/subtitles                    |
| MIME Types    | Define supported file formats             |
| Accessibility | Always use captions, labels, and controls |

---

