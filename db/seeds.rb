# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




skills = ['HTML', 'JavaScript', 'CSS', 'Bootstrap', 'Ruby', 'Ruby on Rails', 'Sinatra', 'C#', 'Python', 'PhotoShop', 'Illustrator', 'UX/UI', 'PHP', 'Java', 'C++', 'ORACLE']

# s = Skill.create(name: 'html')


skills.each do |s_name| 
    Skill.find_or_create_by(name: s_name)
end