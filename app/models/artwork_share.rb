# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#

class ArtworkShare < ApplicationRecord
	validates :artwork_id, uniqueness: {scope: :viewer_id}

	belongs_to :viewer,
		primary_key: :id, 
		foreign_key: :viewer_id,
		dependent: :destroy,
		class_name: 'User'

	belongs_to :artwork,
		primary_key: :id,
		foreign_key: :artwork_id,
		class_name: 'Artwork'


end
