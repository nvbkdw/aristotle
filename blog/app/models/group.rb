class Group < ApplicationRecord
  belongs_to :creator
  belongs_to :administrator
  belongs_to :member_container
end
