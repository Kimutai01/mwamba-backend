# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


blogs = Blog.create([
    {title: "The Best Blog", author: "John Doe", excerpt: "This is the best blog ever!"},
    {title: "The Worst Blog", author: "Jane Doe", excerpt: "This is the worst blog ever!"}
])
