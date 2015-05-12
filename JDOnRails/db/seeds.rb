# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Band.create(band_name: "JD")
Band.create(band_name: "JD and Scott")
Band.create(band_name: "Debris")
Band.create(band_name: "Black Moon Tonic")
Band.create(band_name: "Desperados")

Gig.create(show: "Tree House Lounge", show_date: "April 25th", band_id: 2)

Story.create(news: "This week, watch us on YouTube!", band_id: 1)

About.create(description: "JD has several musical avenues these days. He is playing most frequently with Scott Davidow - some acoustic numbers with Scott adding electric lead and rhythm - and with Black Moon Tonic, a local band playing fun music, both originals and a wide range of covers.", band_id: 1)
About.create(description: "JD also occasionally plays with the band he's played with for a very long time, Debris. They started in school and share a love of early punk, rock, and pop, with some occasional twang.", band_id: 1)
About.create(description: "And JD also fills in with two combos on the one-off shows they tend toward - Black Oktagon (with the irrepressable Dr. Robinson) and the perennial favorites from Del Ray, the Desperados.", band_id: 1)
About.create(description: "Debris is cool, they formed at JMU a long time ago!", band_id: 3)
About.create(description: "Guitar duo JD and Scott play music that ignites the soul with selections from the last five decades along with occasional original songs.", band_id: 2)

Email.create(email_address: "whiteisnick@gmail.com")

