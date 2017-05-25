class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :area, :string
      t.column :description, :text
      t.column :picture, :string
      t.column :opening_hours, :string
      t.column :contact, :string
      t.column :website, :string

      t.timestamps
    end
  end
end
