# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  link       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
