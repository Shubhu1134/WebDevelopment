
---

# 🗓️ **Day 6 — HTML Tables and Data Presentation**

---

## 🎯 Learning Objectives

By the end of today, you’ll be able to:

* Create clean, semantic HTML tables.
* Use `<thead>`, `<tbody>`, and `<tfoot>` effectively.
* Merge cells using `rowspan` and `colspan`.
* Add captions, headers, and accessibility features.
* Style tables for readability and responsiveness.

---

## 🧱 1. The Basic Table Structure

HTML tables are made up of rows (`<tr>`) and cells (`<td>` or `<th>`).

### Example

```html
<table border="1">
  <tr>
    <th>Language</th>
    <th>Usage</th>
  </tr>
  <tr>
    <td>HTML</td>
    <td>Structure</td>
  </tr>
  <tr>
    <td>CSS</td>
    <td>Styling</td>
  </tr>
</table>
```

### Result

| Language | Usage     |
| -------- | --------- |
| HTML     | Structure |
| CSS      | Styling   |

---

## 🧩 2. Table Elements and Their Roles

| Tag         | Description                                    |
| ----------- | ---------------------------------------------- |
| `<table>`   | Defines the table                              |
| `<tr>`      | Table row                                      |
| `<th>`      | Table header cell (bold + centered by default) |
| `<td>`      | Table data cell                                |
| `<caption>` | Adds a title for the table                     |
| `<thead>`   | Groups header rows                             |
| `<tbody>`   | Groups body rows                               |
| `<tfoot>`   | Groups footer rows                             |

---

## 🧮 3. Table with Caption, Header, Body & Footer

```html
<table border="1">
  <caption>Monthly Sales Report</caption>

  <thead>
    <tr>
      <th>Month</th>
      <th>Revenue</th>
      <th>Profit</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>January</td>
      <td>$12,000</td>
      <td>$3,000</td>
    </tr>
    <tr>
      <td>February</td>
      <td>$15,000</td>
      <td>$4,500</td>
    </tr>
  </tbody>

  <tfoot>
    <tr>
      <th>Total</th>
      <th>$27,000</th>
      <th>$7,500</th>
    </tr>
  </tfoot>
</table>
```

---

## 🧩 4. Merging Cells — `colspan` and `rowspan`

### 🔹 `colspan`

Merges columns horizontally.

```html
<td colspan="2">Merged Columns</td>
```

### 🔹 `rowspan`

Merges rows vertically.

```html
<td rowspan="2">Merged Rows</td>
```

### Example

```html
<table border="1">
  <tr>
    <th rowspan="2">Department</th>
    <th colspan="2">Employees</th>
  </tr>
  <tr>
    <th>Male</th>
    <th>Female</th>
  </tr>
  <tr>
    <td>Engineering</td>
    <td>25</td>
    <td>15</td>
  </tr>
</table>
```

---

## 🎨 5. Styling Tables with CSS

Tables can be styled for better presentation.

```html
<style>
  table {
    width: 60%;
    border-collapse: collapse;
    margin: 20px 0;
  }
  th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
  }
  th {
    background-color: #f4f4f4;
  }
  tr:nth-child(even) {
    background-color: #fafafa;
  }
  caption {
    font-weight: bold;
    margin-bottom: 10px;
  }
</style>
```

---

## 📱 6. Responsive Tables

### Problem

Tables can overflow on small screens.

### Solution 1 — Scrollable Container

```html
<div style="overflow-x:auto;">
  <table> ... </table>
</div>
```

### Solution 2 — Stacked View (using CSS media queries)

```css
@media (max-width: 600px) {
  table, thead, tbody, th, td, tr {
    display: block;
  }
}
```

---

## 🧩 7. Accessibility and Best Practices

✅ Use `<th scope="col">` or `scope="row"` to help screen readers.
✅ Add `caption` to describe table content.
✅ Avoid excessive rowspan/colspan combinations.

Example:

```html
<th scope="col">Price</th>
<th scope="row">January</th>
```

---

## 🧪 8. Practice Exercises

### 🧠 Exercise 1 — Student Grades Table

Create a table with columns for:

* Name
* Subject
* Marks
* Grade

### 🧠 Exercise 2 — Product List

Include columns for Product Name, Category, Price, Availability, and Ratings.

### 🧠 Exercise 3 — Invoice Table

Add columns for Item, Quantity, Price per unit, Total Price, and use `tfoot` for the grand total.

---

## 🧩 9. Mini Project — Employee Performance Dashboard

**Goal:** Build a data-rich employee table with merged cells and a footer summary.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Performance Dashboard</title>
  <style>
    table {
      width: 80%;
      border-collapse: collapse;
      margin: 20px auto;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 10px;
      text-align: center;
    }
    thead {
      background-color: #f0f0f0;
    }
    tfoot {
      background-color: #e8e8e8;
      font-weight: bold;
    }
  </style>
</head>
<body>

<h1 style="text-align:center;">Employee Performance Dashboard</h1>

<table>
  <caption>Quarter 1 Performance Review 2025</caption>
  <thead>
    <tr>
      <th rowspan="2">Employee Name</th>
      <th colspan="3">Performance Metrics</th>
      <th rowspan="2">Average Score</th>
    </tr>
    <tr>
      <th>Quality</th>
      <th>Efficiency</th>
      <th>Teamwork</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Shubh Ji</td>
      <td>90%</td>
      <td>88%</td>
      <td>95%</td>
      <td>91%</td>
    </tr>
    <tr>
      <td>Aryan</td>
      <td>85%</td>
      <td>80%</td>
      <td>89%</td>
      <td>85%</td>
    </tr>
  </tbody>

  <tfoot>
    <tr>
      <td colspan="4">Team Average</td>
      <td>88%</td>
    </tr>
  </tfoot>
</table>

</body>
</html>
```

---

## ✅ Summary

| Concept                         | Description                       |
| ------------------------------- | --------------------------------- |
| `<table>`                       | Defines a table structure         |
| `<thead>`, `<tbody>`, `<tfoot>` | Organize header, body, and footer |
| `<th>` / `<td>`                 | Define header and data cells      |
| `colspan`, `rowspan`            | Merge columns / rows              |
| `caption`                       | Adds a descriptive title          |
| Accessibility                   | Use `scope` and semantic tags     |

---

N