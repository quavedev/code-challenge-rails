# Seeds the database from backend/seed.json.
# Run with: bin/rails db:seed
#
# The JSON shape matches the Python version of this challenge:
#   { "communities": [{ "name": ... }], "people": [{ "firstName": ..., "lastName": ..., "title": ?, "companyName": ? }] }
#
# People are assigned to communities in round-robin order (same as seed_data.py).

require "json"

seed_path = Rails.root.join("seed.json")
abort "seed.json not found at #{seed_path}" unless File.exist?(seed_path)

data = JSON.parse(File.read(seed_path))

if Community.any?
  puts "Database already contains data. Skipping seed."
  return
end

communities = Array(data["communities"]).map do |row|
  Community.create!(name: row["name"])
end

people = Array(data["people"])
people.each_with_index do |row, i|
  community = communities[i % communities.length]
  Person.create!(
    first_name: row["firstName"],
    last_name: row["lastName"],
    title: row["title"],
    company_name: row["companyName"],
    community: community
  )
end

puts "Seeded #{communities.size} communities and #{people.size} people."
