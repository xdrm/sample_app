namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "admin",
                         email: "admin@admin.com",
                         password: "111111",
                         password_confirmation: "111111",
                         admin: true)
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end