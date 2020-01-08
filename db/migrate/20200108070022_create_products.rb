class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :area_id
      t.integer :company_id
      t.integer :industry_id
      t.integer :state
      t.date :open_date
      t.date :close_date

      t.timestamps
    end
  end
end
