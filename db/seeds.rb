# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(
  first_name: "Katharine",
  last_name: "Sibbald",
  email: 'katharine.sibbald@xplortechnologies.com'
)

User.find_or_create_by(
  first_name: 'Katharine',
  last_name: "should be false",
  email: 'should.be.false@xplortechnologies.com'
)

User.find_or_create_by(
  first_name: 'Katharine',
  last_name: "should be true",
  email: 'should.be.true@xplortechnologies.com'
)
