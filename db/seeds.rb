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

    {name: "Home Jersey", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687872349/team2_l7ibk8.png", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687872358/team3_xfakyq.png", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687872369/team4_kv2vud.png", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687872316/team5_dqaa8x.png"]},
   
    {name: "Away Jersey", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687871015/MWAMBA_RUGBY_-_FRONT_sogptt.png", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687871015/MWAMBA_RUGBY_-_FRONT_sogptt.png", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687871040/MWAMBA_RUGBY_-_BACK_spbtbi.png", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687871027/MWAMBA_RUGBY_-_FRONT_LEFT_vzton9.png"]},
  
    {name: "Reversible Bucket Hat", photo: "https://res.cloudinary.com/dakiak4mc/image/upload/v1687870655/WhatsApp_Image_2023-06-26_at_9.59.53_PM_mpixts.jpg", rotating_images: ["https://res.cloudinary.com/dakiak4mc/image/upload/v1687870666/WhatsApp_Image_2023-06-26_at_9.59.54_PM_1_wllxtv.jpg", "https://res.cloudinary.com/dakiak4mc/image/upload/v1687870667/WhatsApp_Image_2023-06-26_at_9.59.55_PM_rxlu5c.jpg" ,"https://res.cloudinary.com/dakiak4mc/image/upload/v1687870655/WhatsApp_Image_2023-06-26_at_9.59.53_PM_mpixts.jpg"]}


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