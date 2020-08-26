# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#
# Leads
#

Lead.create(
  full_name: "Leticia Calderaro",
  signed_at: Time.current,
  email: "leticia@mail.com",
  profession: "Blogueira",
)

#
# StudentTestimony
#

StudentTestimony.create(
  kind: "text",
  text: "É bem cansativo. Acordo de madrugada para estudar porque é o horário que a internet está menos pior.",
  full_name: "Mayara Cordeiro",
  email: "mayara@mail.com",
)

StudentTestimony.create(
  kind: "text",
  text: "É bem complicado.",
  full_name: "Lucas Aquino",
  email: "lucas@mail.com",
)

StudentTestimony.create(
  kind: "text",
  text: "Vou mandar gif e não da",
  full_name: "João Vitor",
  email: "joao@mail.com",
)

StudentTestimony.create(
  kind: "youtube",
  url: "https://www.youtube.com/watch?v=Ggl91hrzE1c",
  full_name: "Renato Caiam",
  email: "caiam@mail.com",
)

#
# FamousTestimony
#

FamousTestimony.create(
  url: "https://www.youtube.com/watch?v=EkPLPATsbz8",
  full_name: "Menino do cachorro",
  enabled: true,
)


#
# Partner
#

Partner.create(
  name: "Quero Educação",
  url: "https://sobre.quero.com/",
  enabled: true,
)
