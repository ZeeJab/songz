Song.delete_all
Artist.delete_all
Album.delete_all
Genre.delete_all

a1 = Artist.create(:name => "Burial", :remote_photo_url => 'http://hypetrak.101medialablimit.netdna-cdn.com/images/2011/03/Burial.jpg')
a2 = Artist.create(:name => "Nas", :remote_photo_url => "http://allhiphop.files.wordpress.com/2012/08/nas.gif?w=620")
a3 = Artist.create(:name => "Michael Jackson", :remote_photo_url => 'http://www.billboard.com/photos/stylus/2528869-michael-jackson-617-409.jpg')
a4 = Artist.create(:name => "Florence + the Machine", :remote_photo_url => 'http://cdn1.ticketsinventory.com/images/last_photos/concert/F/florence-and-the-machine/2011_dates_florence-and-the-machine_13042701324637.png')
a5 = Artist.create(:name => "ISIS", :remote_photo_url => "http://blogs.laweekly.com/westcoastsound/3-8-MUSIC-Isis.jpg")
a6 = Artist.create(:name => "Greenday", :remote_photo_url => "http://canadianonlinegamers.com/wp-content/uploads/2012/09/Green-Day.jpg")

b1 = Album.create(:name => "Thriller", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michaeljacksonthrilleralbum.jpg/220px-Michaeljacksonthrilleralbum.jpg')
b2 = Album.create(:name => "Nastradamus", :remote_photo_url => "http://upload.wikimedia.org/wikipedia/en/1/1f/Nas-NastradamusAlbumCover.jpg")
b3 = Album.create(:name => "Californication", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/d/df/RedHotChiliPeppersCalifornication.jpg/220px-RedHotChiliPeppersCalifornication.jpg')
b4 = Album.create(:name => "Ceremonials", :remote_photo_url => 'http://4.bp.blogspot.com/-tut5xebYVBs/T8CKcWG_IsI/AAAAAAAACPQ/y0pAaD6kJ2M/s1600/Florence%2520+%2520The%2520Machine%2520-%2520Ceremonials.jpg')
b5 = Album.create(:name => "Nimrod", :remote_photo_url => "http://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Green_Day_-_Nimrod_cover.jpg/220px-Green_Day_-_Nimrod_cover.jpg")

s1 = Song.create(:name => "Some Song", :remote_photo_url => 'http://www.kveller.com/blog/wp-content/uploads/2011/11/Keha.jpg', :youtube => "http://www.youtube.com/watch?v=qsJqWM0e7Zg")
s2 = Song.create(:name => "Walking on a dream", :remote_photo_url => 'http://thinksoul25.files.wordpress.com/2011/06/empire-of-the-sun.jpg', :youtube => "http://www.youtube.com/watch?v=eimgRedLkkU")
s3 = Song.create(:name => "Chains", :remote_photo_url => 'http://breakingchainsministries.com/wp-content/uploads/2011/11/breaking-the-chains-10.jpg', :youtube => "http://www.youtube.com/watch?v=aG9pvAUBKlU")
s4 = Song.create(:name => "Only if for a night", :remote_photo_url => 'http://4.bp.blogspot.com/-CeVd6JmpjG4/TwUTqYjWQTI/AAAAAAAAANY/U41bS8CBbAs/s1600/Ceremonials_%253D2.png', :youtube => "http://www.youtube.com/watch?v=MkJK2KVFsi0")
s5 = Song.create(:name => "Shake it out", :remote_photo_url => 'http://sexualityinart.files.wordpress.com/2012/07/florence-shake-it-out-weeknd.jpg', :youtube => "http://www.youtube.com/watch?v=WbN0nX61rIs")
s6 = Song.create(:name => "What the water gave me", :remote_photo_url => 'http://cdn.songonlyrics.com/wp-content/uploads/2011/08/florence-and-the-machine-s-what-the-water-gave-me.jpg', :youtube => "http://www.youtube.com/watch?v=am6rArVPip8")
s7 = Song.create(:name => "Never let me go", :remote_photo_url => 'http://www.edrants.com/wp-content/uploads/2010/09/neverletmego.jpg', :youtube => "http://www.youtube.com/watch?v=zMBTvuUlm98")
s8 = Song.create(:name => "Time of your life", :remote_photo_url => "http://4.bp.blogspot.com/-NSmFZabhbak/UB-uNine7YI/AAAAAAAAALw/fu5WDF9_IWM/s1600/Green-Day+-+Time-Of-Your-Life.jpg", :youtube => "http://www.youtube.com/watch?v=1PK2R0IwCiY")
s9 = Song.create(:name => "Walking Alone", :remote_photo_url => "http://fc09.deviantart.net/fs70/f/2010/249/2/4/walking_alone_green_day_by_charredremains666-d2y6gke.jpg",:youtube => "http://www.youtube.com/watch?v=QRkMFIMKIFk")

a2.songs << s1 << s2
a3.songs << s3 << s2 << s1
a4.songs = [s4,s5,s6,s7]
a5.songs << s4 << s2 << s1
a6.songs << s9 << s8

b2.songs << s1 << s2
b3.songs << s3 << s6 << s7 << s1
b4.songs = [s4,s5,s6,s7]
b5.songs << s7 << s8 << s9

g1 = Genre.create(:name => "Rock")
g2 = Genre.create(:name => "Pop")
g3 = Genre.create(:name => "Jazz")
g4 = Genre.create(:name => "Hiphop")
g5 = Genre.create(:name => "Punk")
g6 = Genre.create(:name => "House")
g7 = Genre.create(:name => "Rap")
g8 = Genre.create(:name => "Indie")
g9 = Genre.create(:name => "Classical")
g10 = Genre.create(:name => "Techno")

s1.genres << g1 << g2
s2.genres << g3 << g7 << g9
s3.genres << g1 << g4 << g2 << g8 << g9
s4.genres << g5 << g4 << g10
s5.genres << g1 << g4
s6.genres << g2 << g10
s7.genres << g5 << g3 << g8
s8.genres << g2 << g5 << g4 << g1
s9.genres << g2 << g1 << g3
