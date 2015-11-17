# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coordinator_role = Role.find_or_create_by(role: "coordinator")
teacher_role = Role.find_or_create_by(role: "teacher")

user = User.create_with(password: "hc031190").find_or_create_by(email: "elo.henrique@gmail.com")

teacher = Teacher.find_or_create_by(name: "Henrique Faria", user: user)
teacher.roles << teacher_role if teacher.roles.empty?
