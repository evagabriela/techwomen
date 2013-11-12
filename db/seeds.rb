require 'faker'
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
case Rails.env
when "development"
  User.create!( email: 'user1@test.com', username: 'Test User 1', password: '12345678', password_confirmation: '12345678', location: "San Francisco, CA", company: "Tech World", job_title: "Queen Bee", technologies: "Ruby, Python, HTML5, CSS", blerb: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", facebook: "https//www.facebook.com/user", linkedin: "https//www.linkedin.com/user", blog: "https//www.blog.com/user", github: "https//www.github.com/user", personal_site: "https//www.personal_site.com/user", other_site: "https//www.othersite.com/user")

  User.create!( email: 'user2@test.com', username: 'User 2', password: '12345678', password_confirmation: '12345678', location: "San Francisco, CA", company: "Tech Inc.", job_title: "CTO", technologies: "Ruby, Python, HTML5, CSS", blerb: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", facebook: "https//www.facebook.com/user2", linkedin: "https//www.linkedin.com/user2", blog: "https//www.blog.com/user2", github: "https//www.github.com/user2", personal_site: "https//www.personal_site.com/user2", other_site: "https//www.othersite.com/user2")

  20.times do
    email = Faker::Internet.email
    username = Faker::Name.name
    password = '12345678'
    password_confirmation = '12345678'
    location = Faker::Address.city
    company = Faker::Company.bs
    job_title = Faker::Name.title
    technologies = "Ruby, Python, Javascript, HTML5, CSS"
    blerb = Faker::Lorem.paragraph(random_sentences_to_add = 5)
    facebook = Faker::Internet.url,
    linkedin = Faker::Internet.url
    blog = Faker::Internet.url
    github = Faker::Internet.url
    personal_site = Faker::Internet.url
    other_site = Faker::Internet.url

    User.create!( email: email , username: username, password: '12345678', password_confirmation: '12345678', location: location, company: company, job_title: job_title, technologies: "Ruby, Python, HTML5, CSS", blerb: blerb, facebook: facebook, linkedin: linkedin, blog: blog, github: github, personal_site: personal_site, other_site: other_site)
  end

  admin1 = User.create!( email: 'admin1@test.com', username: 'Admin User 1', password: '12345678', password_confirmation: '12345678', location: "San Francisco, CA", company: "Tech Universe", job_title: "Admin of All The Things", technologies: "Ruby, Javascript, HTML5, CSS", blerb: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", facebook: "https//www.facebook.com/admin", linkedin: "https//www.linkedin.com/admin", blog: "https//www.blog.com/admin", github: "https//www.github.com/admin", personal_site: "https//www.personal_site.com/admin", other_site: "https//www.othersite.com/admin")

  admin1.toggle!(:admin)

when "production"
 CareerPath.create!(job_title: ,
salary_range: ,
:description: ,
:day_in_the_life: )

end
