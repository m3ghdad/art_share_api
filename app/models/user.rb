# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true

	has_many :artworks,
		primary_id: :id,
		foreign_key: :artist_id,
		class_name: 'Artwork'
end
