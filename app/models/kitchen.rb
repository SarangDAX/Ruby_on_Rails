class Kitchen < ApplicationRecord
    validates :item_name, presence:true 
    validates :item_desc, presence:true 
end
  