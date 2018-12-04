# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroying SkillsUsers..."
SkillsUser.destroy_all
p "Destroying Users..."
User.destroy_all
# p "Destroying Skills..."
# Skill.destroy_all

p "Creating Skills...."
football = Skill.create!(name: "Football")
basketball = Skill.create!(name: "Basketball")
foot = Skill.create!(name: "Foot", parent: football)
soccer = Skill.create!(name: "Soccer", parent: football)
basket = Skill.create!(name: "Basket", parent: basketball)

p "Creating Users...."
jules = User.create!(email: "jules@agorize.org", password: "secret", points: 100)
pierre = User.create!(email: "pierre@agorize.org", password: "secret", points: 200)
julian = User.create!(email: "julian@agorize.org", password: "secret", points: 100)
aida = User.create!(email: "aida@agorize.org", password: "secret", points: 50)
monique = User.create!(email: "monique@agorize.org", password: "secret", points: 10)

p "Creating SkillsUsers...."
SkillsUser.create!(skill: football, user: jules)
SkillsUser.create!(skill: football, user: pierre)
SkillsUser.create!(skill: foot, user: julian)
SkillsUser.create!(skill: basketball, user: aida)
SkillsUser.create!(skill: soccer, user: monique)

