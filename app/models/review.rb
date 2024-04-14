# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  bathroom_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_reviews_on_bathroom_id  (bathroom_id)
#  index_reviews_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (bathroom_id => bathrooms.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bathroom
end
