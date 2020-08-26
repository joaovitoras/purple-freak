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

Lead.create([
  {
    email: "cirlenejuliani@gmail.com",
    signed_at: DateTime.parse("2020-08-22 11:15:50 -0300"),
    full_name: "Cirlene Marcondes saudades",
    profession: "Professora",
  },
  {
    email: "fernandeshsc@gmail.com",
    signed_at: DateTime.parse("2020-08-22 11:09:20 -0300"),
    full_name: "Helena S C Fernandes",
    profession: "Professora",
  },
  {
    email: "matoscamilo11@gmail.com",
    signed_at: DateTime.parse("2020-08-22 10:48:00 -0300"),
    full_name: "Andreia matos Camilo de Souza Gabriel.",
    profession: "Professora",
  },
  {
    email: "j.t.biomedica@gmail.com",
    signed_at: DateTime.parse("2020-08-22 10:23:29 -0300"),
    full_name: "Jéssica Tereza Guedes de Oliveira Moraes",
    profession: "Biomédica",
  },
  {
    email: "dinhagusmao@hotmail.com",
    signed_at: DateTime.parse("2020-08-22 10:16:22 -0300"),
    full_name: "Sandra Cristina Gusmão Silva",
    profession: "Professora",
  },
  {
    email: "leonorfreitasrodrigues@hotmail.com",
    signed_at: DateTime.parse("2020-08-22 10:06:33 -0300"),
    full_name: "Leonor Amélia Freitas Rodrigues",
    profession: "Professora",
  },
  {
    email: "elena.sjc@supersan.com.br",
    signed_at: DateTime.parse("2020-08-22 09:23:43 -0300"),
    full_name: "Elena Kimie Tateishi",
    profession: "Administradora",
  },
  {
    email: "andreaiamanda@outlook.com",
    signed_at: DateTime.parse("2020-08-22 09:12:53 -0300"),
    full_name: "Andréa Regina Pascoal Rui",
    profession: "Auxiliar de Serviços Gerais",
  },
  {
    email: "iolandagrconfec@hotmail.com",
    signed_at: DateTime.parse("2019-10-07 00:26:24 -0300"),
    full_name: "IOLANDA RAMOS GONÇALVES",
    profession: "Professora",
  },
  {
    email: "svmaltasantos@gmail.com",
    signed_at: DateTime.parse("2020-08-22 09:06:26 -0300"),
    full_name: "Sílvia Valéria de Oliveira Malta Santos",
    profession: "Professora",
  },
  {
    email: "luciaugusto2016@gmail.com",
    signed_at: DateTime.parse("2020-08-22 09:02:43 -0300"),
    full_name: "Luciana Vieira Augusto",
    profession: "Professora",
  },
  {
    email: "leyylahkassia@gmail.com",
    signed_at: DateTime.parse("2020-08-22 09:00:18 -0300"),
    full_name: "Leila De Cassia Prado",
    profession: "Professora",
  },
  {
    email: "silvanapmoraes@hotmail.com",
    signed_at: DateTime.parse("2020-08-22 08:25:18 -0300"),
    full_name: "Silvana Aparecida Procópio de Moraes",
    profession: "Professora",
  },
  {
    email: "daisemqc@gmail.com",
    signed_at: DateTime.parse("2020-08-22 08:15:59 -0300"),
    full_name: "Daise Milene Quiles Camargo Airoldi",
    profession: "Professora",
  },
  {
    email: "fa.kakrauss@gmail.com",
    signed_at: DateTime.parse("2020-08-22 08:12:56 -0300"),
    full_name: "Fabiana Khalil Abbas krauss",
    profession: "Pedagoga",
  },
  {
    email: "karinamuller@yahoo.com.br",
    signed_at: DateTime.parse("2020-08-22 08:10:21 -0300"),
    full_name: "Karina Mara Muller Rufino",
    profession: "professora",
  },
  {
    email: "marlykuriki65@gmail.com",
    signed_at: DateTime.parse("2020-08-22 07:39:18 -0300"),
    full_name: "Marly kuriki",
    profession: "Professora",
  },
  {
    email: "silvanacarlasiqueira@gmail.com",
    signed_at: DateTime.parse("2020-08-22 07:06:51 -0300"),
    full_name: "Silvana Ribeiro",
    profession: "Professora",
  },
  {
    email: "roselene1601@gmail.com",
    signed_at: DateTime.parse("2020-08-22 02:32:58 -0300"),
    full_name: "Roselene Aparecida Leite Felix de Oliveira",
    profession: "professora",
  },
  {
    email: "marilu.cursino@uol.com.br",
    signed_at: DateTime.parse("2020-08-22 00:50:11 -0300"),
    full_name: "Marilu G C Figueiredo",
    profession: "Do lar",
  },
  {
    email: "sazinhaprof@gmail.com",
    signed_at: DateTime.parse("2020-08-22 00:32:52 -0300"),
    full_name: "Samanta da Silva",
    profession: "Pedagoga",
  },
  {
    email: "elianeeueumesma@gmail.com",
    signed_at: DateTime.parse("2020-08-22 00:23:15 -0300"),
    full_name: "Eliane Bustamante Moreira",
    profession: "Professora",
  },
  {
    email: "claudia.vilela@servidor.educacao.sp.gov.br",
    signed_at: DateTime.parse("2020-08-22 00:14:27 -0300"),
    full_name: "Cláudia Renata Santos Vilela",
    profession: "Professora",
  },
  {
    email: "elainefelixleitee@ymail.com",
    signed_at: DateTime.parse("2020-08-21 23:56:21 -0300"),
    full_name: "Elaine Aparecida Félix LEITE",
    profession: "Professora",
  },
  {
    email: "bethguadalupe@hotmail.com",
    signed_at: DateTime.parse("2020-08-21 23:38:22 -0300"),
    full_name: "Elizabet Guadalupe Teixeira",
    profession: "Professora",
  },
  {
    email: "deboramacielkimura@gmail.com",
    signed_at: DateTime.parse("2020-08-21 23:28:03 -0300"),
    full_name: "Débora da Paz Maciel Kimura",
    profession: "Professora",
  },
  {
    email: "dricassia@hotmail.com",
    signed_at: DateTime.parse("2020-08-21 23:19:26 -0300"),
    full_name: "Adriana Cassia Silva Kurita",
    profession: "Professora",
  },
  {
    email: "aitagaki@uol.com.br",
    signed_at: DateTime.parse("2020-08-21 23:11:49 -0300"),
    full_name: "Armando Riuti Itagaki",
    profession: "Aposentado",
  },
  {
    email: "luanacard13@gmail.com",
    signed_at: DateTime.parse("2020-08-21 23:10:37 -0300"),
    full_name: "Luana Cardoso Santos",
    profession: "Pedagoga",
  }
])

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
