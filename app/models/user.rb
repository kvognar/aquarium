# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  username      :string(255)      not null
#  password_hash :string(255)      not null
#  session_token :string(255)      not null
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  has_many :impressions
  has_many :notes, through: :impressions
end
