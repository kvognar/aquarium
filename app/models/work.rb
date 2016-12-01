# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  artist_id  :integer
#  medium     :string(255)
#  link       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Work < ActiveRecord::Base

  validates :title, presence: true
  belongs_to :artist
  has_many :impressions
end
