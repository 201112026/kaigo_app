namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(shubetu: "riyousha",
                         name: "Example User",
                         email: "example@railstutorial.jp",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)
    99.times do |n|
      shubetu= "riyousha"
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(shubetu: shubetu,
                   name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

  end
end