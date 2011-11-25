# == Schema Information
#
# Table name: projects
#
#  id               :integer         not null, primary key
#  name             :string(255)
#  description      :text
#  estimated_budget :float
#  hourly_rate      :float
#  estimated_hour   :float
#  start_date       :datetime
#  end_date         :datetime
#  manager_id       :integer
#  client_id        :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"
end
