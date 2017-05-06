class ContainerItem < ApplicationRecord
  belongs_to :container_id
  belongs_to :item_id
end
