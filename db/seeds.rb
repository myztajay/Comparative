# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

andyCat = Compare.create(img1_url: "http://d39kbiy71leyho.cloudfront.net/wp-content/uploads/2016/05/09170020/cats-politics-TN.jpg",
img2_url: "http://writm.com/wp-content/uploads/2016/08/Cat-hd-wallpapers.jpg", img1_pts:0, img2_pts:0, headline:"CutestCat", user_id:1)


bobValley =  Compare.create(img1_url: "https://www.isixsigma.com/wp-content/uploads/images/stories/migrated/graphics/203a.gif",
img2_url: "https://betterleadership.files.wordpress.com/2010/02/change.jpg?w=500&h=403", img1_pts:0, img2_pts:0, headline:"Valley of despare", user_id:2)


# possible user seed
# email: "andy@test.com", created_at: "2016-12-24 16:51:02", updated_at: "2016-12-24 16:51:02", username: "Andyomatic"
# email: "bob@test.com", created_at: "2016-12-24 16:51:50", updated_at: "2016-12-24 16:51:50", username: "Bobomatic"