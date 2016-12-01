# == Schema Information
#
# Table name: impressions
#
#  id                 :integer          not null, primary key
#  user_id            :integer          not null
#  work_id            :integer          not null
#  reflection         :text
#  spoiler_reflection :text
#  started_at         :datetime
#  finished_at        :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class Impression < ActiveRecord::Base
end
