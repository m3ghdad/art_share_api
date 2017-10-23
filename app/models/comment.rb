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
end
