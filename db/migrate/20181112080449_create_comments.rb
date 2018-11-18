class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, foreign_key: true, on_delete: :nullify
      t.references :post, foreign_key: true, on_delete: :nullify
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
