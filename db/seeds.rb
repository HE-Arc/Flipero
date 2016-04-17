# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = ['Star Wars R2-D2 Carry-On Luggage', 'Pi Power Necktie', 'meh. Mug', 'BB-8™ App-Enabled Droid™ by Sphero', ]
#"article #{n+1}"
4.times do |n|
  Article.create(name: articles[n], description: "This is the description for the beautiful article #{n+1}", price: "1#{n}", image: File.new(File.expand_path("../../public/seedImg/#{n}.jpg", __FILE__)))

  User.create(email: "bot#{n+1}@flipero.ch", password: "12345678", first_name: "Bot", last_name: "b_number #{n+1}", address: "a random address", credits: 1000)
  User.create(email: "user#{n+1}@flipero.ch", password: "12345678", first_name: "User", last_name: "number #{n+1}", address: "a random address", credits: 1000)


  sale = Sale.create(article_id: "#{n+1}", user_id: "#{n+1}", price: "11#{n}", date_start: DateTime.now, date_end: 1.week.from_now)
  SaleEndJob.set(wait: 1.week).perform_later(sale)
end

