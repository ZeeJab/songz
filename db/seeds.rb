# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.delete_all
Artist.delete_all
Album.delete_all

a1 = Artist.create(:name => "Burial", :remote_photo_url => 'http://hypetrak.101medialablimit.netdna-cdn.com/images/2011/03/Burial.jpg')
a2 = Artist.create(:name => "Nas", :remote_photo_url => "http://allhiphop.files.wordpress.com/2012/08/nas.gif?w=620")
a3 = Artist.create(:name => "Michael Jackson", :remote_photo_url => 'http://www.billboard.com/photos/stylus/2528869-michael-jackson-617-409.jpg')
a4 = Artist.create(:name => "Florence + the Machine", :remote_photo_url => 'http://cdn1.ticketsinventory.com/images/last_photos/concert/F/florence-and-the-machine/2011_dates_florence-and-the-machine_13042701324637.png')

b1 = Album.create(:name => "Thriller", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michaeljacksonthrilleralbum.jpg/220px-Michaeljacksonthrilleralbum.jpg')
b2 = Album.create(:name => "Nastradamus", :remote_photo_url => "http://upload.wikimedia.org/wikipedia/en/1/1f/Nas-NastradamusAlbumCover.jpg")
b3 = Album.create(:name => "Californication", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/d/df/RedHotChiliPeppersCalifornication.jpg/220px-RedHotChiliPeppersCalifornication.jpg')
b4 = Album.create(:name => "Ceremonials", :remote_photo_url => 'http://4.bp.blogspot.com/-tut5xebYVBs/T8CKcWG_IsI/AAAAAAAACPQ/y0pAaD6kJ2M/s1600/Florence%2520+%2520The%2520Machine%2520-%2520Ceremonials.jpg')

s1 = Song.create(:name => "Some Song", :remote_photo_url => 'http://www.kveller.com/blog/wp-content/uploads/2011/11/Keha.jpg')
s2 = Song.create(:name => "Walking on a dream", :remote_photo_url => 'http://thinksoul25.files.wordpress.com/2011/06/empire-of-the-sun.jpg')
s3 = Song.create(:name => "Chains", :remote_photo_url => 'http://breakingchainsministries.com/wp-content/uploads/2011/11/breaking-the-chains-10.jpg')
s4 = Song.create(:name => "Only if for a night", :remote_photo_url => 'http://4.bp.blogspot.com/-CeVd6JmpjG4/TwUTqYjWQTI/AAAAAAAAANY/U41bS8CBbAs/s1600/Ceremonials_%253D2.png')
s5 = Song.create(:name => "Shake it out", :remote_photo_url => 'http://sexualityinart.files.wordpress.com/2012/07/florence-shake-it-out-weeknd.jpg')
s6 = Song.create(:name => "What the water gave me", :remote_photo_url => 'http://cdn.songonlyrics.com/wp-content/uploads/2011/08/florence-and-the-machine-s-what-the-water-gave-me.jpg')
s7 = Song.create(:name => "Never let me go", :remote_photo_url => 'http://www.edrants.com/wp-content/uploads/2010/09/neverletmego.jpg')

a2.songs << s1 << s2
a3.songs << s3
a4.songs = [s4,s5,s6,s7]

b2.songs << s1 << s2
b3.songs << s3
b4.songs = [s4,s5,s6,s7]

g1 = Genre.create(:name => "Rock")
g2 = Genre.create(:name => "Pop")
g3 = Genre.create(:name => "Jazz")
g4 = Genre.create(:name => "Hiphop")
g5 = Genre.create(:name => "Punk")

s1.genres << g1 << g2
s2.genres << g3
s3.genres << g1 << g4 << g2
s4.genres << g5 << g4
s5.genres << g1 << g4
s6.genres << g2
s7.genres << g5 << g3
