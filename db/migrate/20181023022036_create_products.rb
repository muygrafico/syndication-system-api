class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: :uuid do |t|
      t.integer  :price_in_dollars, :limit => 8
      t.integer  :business_product_id, :limit => 8

      t.timestamps
    end
  end
end
