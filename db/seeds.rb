# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  @emails = %w( sergey.berdnikovich anastasia.charushina anton.dziga konstantin.ilchenko alexander.karmes stanislav.knyazev alexander.koshelapov yulia.oletskaya konstantin.savon anastasia.shaternik sergey.starikov viktor.voinilovich)
  @emails.each { |email| User.create(email: email) }