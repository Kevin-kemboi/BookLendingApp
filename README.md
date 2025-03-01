# LibraryAppStyled

## 📚 Overview
LibraryAppStyled is a modern and elegant **library management system** built with **Ruby on Rails**. It provides a user-friendly interface to manage books, track borrowing history, and enhance user experience with a sleek UI, smooth animations, and dark mode support.

---

## ✨ Features

### 🖥️ **User Interface Enhancements**
- **Fixed Navbar**: Provides seamless navigation with **Home**, **Add Book**, and **Dark Mode Toggle**.
- **Dynamic Page Titles**: Clear H1 titles on every page for usability and SEO.
- **Responsive Grid Layout**: Adapts beautifully on all screen sizes.
- **Genre-Based Card Colors**:
  - 📘 **Fiction**: `#f0faff` (light blue)
  - 💡 **Technology**: `#fff0f0` (light pink)
  - 📖 **Self-Development**: `#f0f0ff` (light purple)
- **Modern Animations**:
  - **Hover**: Cards lift and zoom.
  - **Click**: Cards flip before redirecting.
  - **Page Load**: Smooth fade-in effect.
- **Interactive Buttons**: Animated buttons with hover scaling & ripple effects.
- **Dark Mode**: Toggleable dark mode with local storage persistence.
- **Typography**: Uses *Playfair Display* for titles and *Inter* for body text.

### 🔍 **Functionality**
- Full **CRUD operations** (Create, Read, Update, Delete) for books.
- **Search** by title, author, or ISBN.
- **Borrowing System**: Track borrowing history and return books easily.

---

## 📸 Screenshots

| **Page**         | **Preview** |
|------------------|------------|
| Index Page      | ![Index](https://github.com/[your-username]/LibraryAppStyled/blob/main/assets/index.png?raw=true) |
| Book Details    | ![Details](https://github.com/[your-username]/LibraryAppStyled/blob/main/assets/show.png?raw=true) |
| Add/Edit Book   | ![Form](https://github.com/[your-username]/LibraryAppStyled/blob/main/assets/form.png?raw=true) |

---

## 🚀 Installation

### 📌 **Prerequisites**
- **Ruby** 3.0+ (e.g., `3.2.2`)
- **Rails** 7.0+
- **Node.js & Yarn**
- **SQLite**

### ⚙ **Setup**
```bash
# Clone the Repository
git clone https://github.com/[your-username]/LibraryAppStyled.git
cd LibraryAppStyled

# Install Dependencies
bundle install
yarn install

# Set Up Database
rails db:create
rails db:migrate
rails db:seed

# Run the Server
rails server
```
**Access the app at:** `http://localhost:3000`

---

## 📂 File Structure
```
LibraryAppStyled/
├── app/
│   ├── controllers/
│   │   ├── books_controller.rb
│   │   ├── borrowings_controller.rb
│   ├── models/
│   │   ├── book.rb
│   │   ├── borrowing.rb
│   ├── views/
│   │   ├── books/
│   │   │   ├── index.html.erb
│   │   │   ├── show.html.erb
│   │   │   ├── new.html.erb
│   │   │   ├── edit.html.erb
│   │   │   ├── _form.html.erb
│   │   ├── layouts/
│   │   │   ├── application.html.erb
├── db/
│   ├── migrate/
│   │   ├── create_books.rb
│   │   ├── create_borrowings.rb
│   │   ├── add_genre_to_books.rb
│   ├── seeds.rb
├── config/
│   ├── routes.rb
│   ├── database.yml
├── Gemfile
├── README.md
```

---

## 📌 Development

### 🚀 Running Locally
```bash
rails server
```
Visit: `http://localhost:3000`

### 📊 Seeding Database
```bash
rails db:seed
```
This populates the app with **10 sample books** across **Fiction, Technology, and Self-Development** genres.

### 🎨 Customization
- **Background Gradient**: Modify it in `application.html.erb` under `<body>`.
- **Animations**: Edit `keyframes` (e.g., `flipCard`) in `application.html.erb`.
- **Genres**: Add new genres in `seeds.rb` and style them in `application.html.erb`.

---

## 🤝 Contributing

1. **Fork the repo**: [Fork Here](https://github.com/[your-username]/LibraryAppStyled/fork)
2. **Create a branch**:
   ```bash
   git checkout -b feature-name
   ```
3. **Commit your changes**:
   ```bash
   git commit -m "Add feature-name"
   ```
4. **Push the branch**:
   ```bash
   git push origin feature-name
   ```
5. **Open a Pull Request!** 🚀

---

## 📜 License
This project is **MIT Licensed** - see the [LICENSE](LICENSE) file for details.

---

## 🌟 Acknowledgments
- **Built with**: Ruby on Rails & Tailwind CSS
- **Inspired by**: Open Library
- **Fonts Used**: Playfair Display & Inter

⭐ **Star this repo if you love it!** ⭐

🐛 **For bugs or ideas, open an issue!**

