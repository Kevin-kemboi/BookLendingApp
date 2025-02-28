# db/seeds.rb
Book.destroy_all # Clear existing books

books = [
  { title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "9780446310789", image_url: "https://picsum.photos/400/300?random=1" },
  { title: "1984", author: "George Orwell", isbn: "9780451524935", image_url: "https://picsum.photos/400/300?random=2" },
  { title: "Pride and Prejudice", author: "Jane Austen", isbn: "9780141439518", image_url: "https://picsum.photos/400/300?random=3" },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "9780743273565", image_url: "https://picsum.photos/400/300?random=4" },
  { title: "The Catcher in the Rye", author: "J.D. Salinger", isbn: "9780316769488", image_url: "https://picsum.photos/400/300?random=5" },
  { title: "Lord of the Rings", author: "J.R.R. Tolkien", isbn: "9780544003415", image_url: "https://picsum.photos/400/300?random=6" },
  { title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", isbn: "9780590353427", image_url: "https://picsum.photos/400/300?random=7" },
  { title: "The Hobbit", author: "J.R.R. Tolkien", isbn: "9780345339683", image_url: "https://picsum.photos/400/300?random=8" },
  { title: "Fahrenheit 451", author: "Ray Bradbury", isbn: "9781451673319", image_url: "https://picsum.photos/400/300?random=9" },
  { title: "Brave New World", author: "Aldous Huxley", isbn: "9780060850524", image_url: "https://picsum.photos/400/300?random=10" },
  { title: "The Alchemist", author: "Paulo Coelho", isbn: "9780062315007", image_url: "https://picsum.photos/400/300?random=11" },
  { title: "Charlotte's Web", author: "E.B. White", isbn: "9780064400558", image_url: "https://picsum.photos/400/300?random=12" },
  { title: "The Diary of a Young Girl", author: "Anne Frank", isbn: "9780553296983", image_url: "https://picsum.photos/400/300?random=13" },
  { title: "Animal Farm", author: "George Orwell", isbn: "9780451526342", image_url: "https://picsum.photos/400/300?random=14" },
  { title: "The Outsiders", author: "S.E. Hinton", isbn: "9780142407332", image_url: "https://picsum.photos/400/300?random=15" }
]

books.each do |book|
  Book.create!(book)
end

puts "Seeded #{Book.count} books."