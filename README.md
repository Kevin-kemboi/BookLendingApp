LibraryAppStyled
LibraryAppStyled License
LibraryAppStyled is a sophisticated library management system built with Ruby on Rails, designed to manage books with an elegant, modern interface. Featuring a gradient background, genre-based card colors, smooth animations, and a responsive design, this project offers a visually stunning and user-friendly experience.
Features
Fixed Navbar: Seamless navigation with Home, Add Book, and Dark Mode toggle.

Dynamic Page Titles: Clear h1 titles on every page for enhanced usability.

Responsive Grid: Adaptive book display using CSS Grid.

Genre-Based Colors: Distinct card backgrounds (Fiction: #f0faff, Technology: #fff0f0, Self-Development: #f0f0ff).

Animations:
Hover: Cards lift with image zoom.

Click: Vertical card flip before redirects.

Load: Smooth page fade-in.

Modern Buttons: Interactive buttons with hover scaling and ripple effects.

Dark Mode: Toggleable with local storage persistence.

Typography: Playfair Display for titles, Inter for body text.

Functionality: Full CRUD, search, borrowing system, and history tracking.

Screenshots
(Add your screenshots here)  
Index Page: [Insert screenshot URL]  

Book Details: [Insert screenshot URL]  

Add/Edit Book: [Insert screenshot URL]

Installation
Prerequisites
Ruby 3.0+ (e.g., 3.2.2)

Rails 7.0+

Node.js & Yarn

SQLite

Steps
Clone the Repository
bash

git clone https://github.com/[your-username]/LibraryAppStyled.git
cd LibraryAppStyled

Install Dependencies
bash

bundle install
yarn install

Set Up Database
bash

rails db:create
rails db:migrate
rails db:seed

Run the Server
bash

rails server

Open http://localhost:3000 in your browser.

Usage
Browse Books: View the collection, search by title/author/ISBN, and toggle dark mode.

Manage Books: Add, edit, or delete books via the navbar or details page.

Borrow Books: Track borrowing history and return books seamlessly.

