# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :name, :photo, :photo_cache, :remote_photo_url

  has_and_belongs_to_many :songs
  mount_uploader :photo, AlbumPicUploader
  validates :name, :presence => true
end
