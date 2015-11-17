# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create_with(password: "hc031190").find_or_create_by(email: "elo.henrique@gmail.com")
user2 = User.create_with(password: "hdsabkj031190").find_or_create_by(email: "juliano@gmail.com")
user3 = User.create_with(password: "hc031dsabkdns90").find_or_create_by(email: "sergio@gmail.com")

teacher = Teacher.create_with(user: user, roles: ["teacher"]).find_or_create_by(name: "Henrique Faria")
teacher2 = Teacher.create_with(user: user2, roles: ["teacher"]).find_or_create_by(name: "Juliano")
teacher3 = Teacher.create_with(user: user3, roles: ["teacher"]).find_or_create_by(name: "Sergio")

software_eng = Course.find_or_create_by(name: "Eng. de Software")
computer_science = Course.find_or_create_by(name: "Computer Science")

distributed_kg = KnowledgeGroup.find_or_create_by(name: "Distributed Systems")
db_kg = KnowledgeGroup.find_or_create_by(name: "Database")

web = Grade.find_or_create_by(name: "Redes", knowledge_group: distributed_kg)
ds = Grade.find_or_create_by(name: "Sistemas Distribuidos", knowledge_group: distributed_kg)
db = Grade.find_or_create_by(name: "SGBDs", knowledge_group: db_kg)
advanced_sql = Grade.find_or_create_by(name: "SQL Avancado", knowledge_group: db_kg)
no_sql = Grade.find_or_create_by(name: "NoSQL", knowledge_group: db_kg)

knowledge_groups_ids = KnowledgeGroup.pluck(:id)
Teacher.all.each do |teacher|
  teacher.knowledge_group_ids = knowledge_groups_ids
  teacher.save
end
