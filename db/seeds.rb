# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."

blogs = Blog.create([
    {title: "The Best Blog", author: "John Doe", excerpt: "This is the best blog ever!"},
    {title: "The Worst Blog", author: "Jane Doe", excerpt: "This is the worst blog ever!"}
])


products = Product.create([
    {name: "Home Jersey", photo: "https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", rotating_images: ["https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", "https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"]},
    {name: "Product 2", photo: "https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", rotating_images: ["https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", "https://images.unsplash.com/photo-1612835362596-4b0b2b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMGJsb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"]},

])


categories = Category.create([
    {name: "kiddie", product_id: 1, price: 2000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "adult", product_id: 1, price: 4000, sizes: ["small", "medium", "large", "extra large"]}
])

puts "Seeding done!"