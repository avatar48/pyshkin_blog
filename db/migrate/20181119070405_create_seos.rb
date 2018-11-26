class CreateSeos < ActiveRecord::Migration[5.2]
  def change
    create_table :seos do |t|
      t.string :title
      t.string :description
      t.string :keywords
      t.integer :seoable_id
      t.string  :seoable_type
      t.timestamps
    end
    add_index :seos, [:seoable_type, :seoable_id]
  end
end
