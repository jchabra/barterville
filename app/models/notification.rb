# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  subject    :string(255)
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  product_id :integer
#

class Notification < ActiveRecord::Base
	belongs_to :user
end
