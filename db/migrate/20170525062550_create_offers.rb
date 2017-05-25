class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :picture, :string
      t.column :savings, :string
      t.column :validity, :string
      t.column :shop_id, :integer

      t.timestamps

    end
  end
end
