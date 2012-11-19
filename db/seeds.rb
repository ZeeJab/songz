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

b1 = Album.create(:name => "Thriller", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michaeljacksonthrilleralbum.jpg/220px-Michaeljacksonthrilleralbum.jpg')
b2 = Album.create(:name => "Nastradamus", :remote_photo_url => "http://upload.wikimedia.org/wikipedia/en/1/1f/Nas-NastradamusAlbumCover.jpg")
b3 = Album.create(:name => "Californication", :remote_photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/d/df/RedHotChiliPeppersCalifornication.jpg/220px-RedHotChiliPeppersCalifornication.jpg')

a1.albums << b1
a2.albums << b2
a3.albums << b3


