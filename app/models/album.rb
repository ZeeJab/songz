# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#

class Album < ActiveRecord::Base
	belongs_to :artist
	has_many :songs

	validates :name, :uniqueness => true
  validates :name, :presence => true
  validates :photo, :presence => true

	mount_uploader :photo, AlbumPicUploader 
end
