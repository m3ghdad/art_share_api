# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#  artwork_id :integer          not null
#  body       :text             not null
#

class Comment < ApplicationRecord
	validates :body, presence: true

	belongs_to :author,
		primary_key: :id,
		foreign_key: :author_id,
		dependent: :destroy,
		class_name: 'User'

	belongs_to :artwork,
		primary_key: :id,
		foreign_key: :artwork_id,
		dependent: :destroy,
		class_name: 'Artwork'
end
