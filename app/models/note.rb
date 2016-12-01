# == Schema Information
#
# Table name: notes
#
#  id            :integer          not null, primary key
#  impression_id :integer          not null
#  body          :text
#  is_spoiler    :boolean          default(FALSE)
#  created_at    :datetime
#  updated_at    :datetime
#

class Note < ActiveRecord::Base

  belongs_to :impression
  has_one :user, through: :impression
end
