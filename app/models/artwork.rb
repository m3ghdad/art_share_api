# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#

class Artwork < ApplicationRecord
	validates :title, :image_url, presence: true
	validates :image_url, uniqueness: true
	validates :title, uniqueness: {scope: :artist_id}
	# validates :artist_id, :title, uniqueness: {scope: :user}


end
