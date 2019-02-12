# Add seed data here. Seed your database with `rake db:seed`

maroon = Artist.create(name: "Maroon 5")
pearl_jam = Artist.create(name: "Pearl Jam")
taylor_swift = Artist.create(name: "Taylor Swift")

girls_like_you = Song.create(name: "Girls Like You", artist_id: maroon)
alive = Song.create(name: "Alive", artist_id: pearl_jam)
shake_it_off = Song.create(name: "Shake it off", artist_id: taylor_swift)

rock = Genre.create(name: "Rock", song_id: alive)
pop = Genre.create(name: "Pop", song_id: shake_it_off)
