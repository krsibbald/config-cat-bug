# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SEED_USER_ARRAY =
[
  {
    first_name: "Katharine",
    last_name: "Sibbald",
    email: 'katharine.sibbald@xplortechnologies.com'
  },
  {
    first_name: 'Katharine',
    last_name: "should be false",
    email: 'should.be.false@xplortechnologies.com'
  },
  {
    first_name: 'Katharine',
    last_name: "should be true",
    email: 'should.be.true@xplortechnologies.com'
  },
  {
    first_name: 'Katharine',
    last_name: "change after app starts",
    email: 'change.after.app.starts@xplortechnologies.com'
  }
]

SEED_USER_ARRAY.each do |user_hash|
  User.find_or_create_by( user_hash )
end
