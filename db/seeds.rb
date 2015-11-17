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

web = Grade.create_with(knowledge_group: distributed_kg, course: software_eng).find_or_create_by(name: "Redes")
web_cs = Grade.create_with(knowledge_group: distributed_kg, course: computer_science).find_or_create_by(name: "Redes")
ds = Grade.create_with(knowledge_group: distributed_kg, course: software_eng).find_or_create_by(name: "Sistemas Distribuidos")
ds_cs = Grade.create_with(knowledge_group: distributed_kg, course: computer_science).find_or_create_by(name: "Sistemas Distribuidos")
db = Grade.create_with(knowledge_group: db_kg, course: software_eng).find_or_create_by(name: "SGBDs")
db_cs = Grade.create_with(knowledge_group: db_kg, course: computer_science).find_or_create_by(name: "SGBDs")
advanced_sql = Grade.create_with(knowledge_group: db_kg, course: computer_science).find_or_create_by(name: "SQL Avancado")
no_sql = Grade.create_with(knowledge_group: db_kg, course: software_eng).find_or_create_by(name: "NoSQL")

knowledge_groups_ids = KnowledgeGroup.pluck(:id)
Teacher.all.each do |teacher|
  teacher.knowledge_group_ids = knowledge_groups_ids
  teacher.save
end

web_class = Klass.create_with(workload: 64).find_or_create_by(grade: web)
ds_class = Klass.create_with(workload: 64).find_or_create_by(grade: ds)
db_class = Klass.create_with(workload: 64).find_or_create_by(grade: db)
web_class_cs = Klass.create_with(workload: 64).find_or_create_by(grade: web_cs)
ds_class_cs = Klass.create_with(workload: 64).find_or_create_by(grade: ds_cs)
db_class_cs = Klass.create_with(workload: 64).find_or_create_by(grade: db_cs)
advanced_sql_class = Klass.create_with(workload: 32).find_or_create_by(grade: advanced_sql)
no_sql_class = Klass.create_with(workload: 32).find_or_create_by(grade: no_sql)

KlassSchedule.find_or_create_by(klass: web_class, week_day: 2, starts_at: "18:50:00", finishs_at: "20:20:00")
KlassSchedule.find_or_create_by(klass: web_class, week_day: 4, starts_at: "18:50:00", finishs_at: "20:20:00")
