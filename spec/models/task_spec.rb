# == Schema Information
#
# Table name: tasks
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  description    :text
#  assigned_id    :integer
#  start_date     :datetime
#  end_date       :datetime
#  estimated_hour :float
#  total_hour     :float
#  project_id     :integer
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Task do
  pending "add some examples to (or delete) #{__FILE__}"
end
