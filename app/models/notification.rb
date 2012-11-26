# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  subject    :string(255)
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notification < ActiveRecord::Base
	belongs_to :user
end
