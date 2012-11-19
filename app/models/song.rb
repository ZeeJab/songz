# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  album_id   :integer
#

class Song < ActiveRecord::Base
	belongs_to :album
	belongs_to :artist

  validates :name, :uniqueness => true
  validates :name, :presence => true
  validates :photo, :presence => true

	mount_uploader :photo, SongPicUploader 
end
