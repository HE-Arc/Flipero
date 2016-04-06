# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

4.times do |n|
  Article.create(name: "article #{n+1}", description: "This is the description for the beautiful article #{n+1}", price: "1#{n}", image: File.new(File.expand_path("../../public/seedImg/#{n}.jpg", __FILE__)))
  
  User.create(email: "user#{n+1}@flipero.ch", password: "12345678")

  sale = Sale.create(article_id: "#{n+1}", user_id: "#{n+1}", price: "11#{n}", date_start: DateTime.now, date_end: 1.week.from_now)

  SaleEndJob.set(wait: 1.week).perform_later(sale)
end

#a = articles.find(1)
#a.image_file_name =
#articles.find(2).image_file_name = File.open(File.expand_path("../../public/seedingImages/1f64_pi_power_necktie.jpg", __FILE__))
#a.save!

