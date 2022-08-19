class CreateKitchen < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchens do |t|
      t.string :item_name
      t.string :item_desc

      t.timestamps
    end
  end
end
