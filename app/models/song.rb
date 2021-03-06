# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  audio      :string(255)
#  youtube    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :audio, :name, :photo, :audio, :youtube, :photo_cache, :remote_photo_url

  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :genres

	mount_uploader :photo, SongPicUploader
  

  validates :name, :presence => true
end
