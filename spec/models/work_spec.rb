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

require 'rails_helper'

RSpec.describe Work, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
