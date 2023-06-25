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
    {name: "Home Jersey", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg"]},
    {name: "Away Jersey", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg"]},
    {name: "Hat", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687665209/chino-rocha-v_sciNJhbnM-unsplash_fsmr8t.jpg"]}


])


categories = Category.create([
    {name: "kiddie", product_id: 1, price: 2000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "adult", product_id: 1, price: 4000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "kiddie", product_id: 2, price: 2000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "adult", product_id: 2, price: 4000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "kiddie", product_id: 3, price: 2000, sizes: ["small", "medium", "large", "extra large"]},
    {name: "adult", product_id: 3, price: 4000, sizes: ["small", "medium", "large", "extra large"]}

])

puts "Seeding done!"