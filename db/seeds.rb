puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "stress ball", value: 1, dev: Dev.first, company: Company.first)
Freebie.create(item_name: "basketball", value: 12, company: Company.second, dev: Dev.second)
Freebie.create(item_name: "baseball", value: 15, company: Company.third, dev: Dev.third)
Freebie.create(item_name: "trading card", value: 20, company: Company.fourth, dev: Dev.first)
Freebie.create(item_name: "mac book", value: 200, company: Company.second, dev: Dev.first)

puts "Seeding done!"
