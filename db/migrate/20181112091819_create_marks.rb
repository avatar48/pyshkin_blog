class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :stars
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
