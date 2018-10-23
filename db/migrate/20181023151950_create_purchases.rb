class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases, id: :uuid do |t|
      t.string :investor
      t.integer :sold, :limit => 8

      t.timestamps
    end
  end
end
