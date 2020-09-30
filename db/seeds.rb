# frozen_string_literal: true

require 'faker'
# add 3 users

3.times do |_i|
  User.create(name: Faker::Internet.username)
end
# add 20 tags

20.times do |_i|
  Tag.create(name: Faker::Company.industry)
end
# add 500 companies

500.times do |_i|
  company = Company.create(name: Faker::Company.name)
  # add tags to company
  5.times do |_j|
    TagCompany.create(company_id: company.id, tag_id: Faker::Number.between(from: 1, to: 20))
  end
  # add 30 contacts
  30.times do |_j|
    Contact.create(name: Faker::Name.name,
                   phone: Faker::PhoneNumber.cell_phone,
                   user_id: Faker::Number.between(from: 1, to: 3),
                   company_id: company.id)
  end
end
