# == Schema Information
#
# Table name: clients
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  account_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
