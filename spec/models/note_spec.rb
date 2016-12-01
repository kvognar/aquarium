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

require 'rails_helper'

RSpec.describe Note, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
