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

	belongs_to :artist, 
		primary_key: :id, 
		foreign_key: :artist_id,
		dependent: :destroy,
		class_name: 'User'

	has_many :artwork_shares,
		primary_key: :id,
		foreign_key: :artwork_id,
		class_name: 'ArtworkShare'

	has_many :shared_views,
		through: :artwork_shares,
		source: :viewer

	has_many :comments, 
		primary_key: :id,
		foreign_key: :artwork_id,
		class_name: 'Comment'

end  
