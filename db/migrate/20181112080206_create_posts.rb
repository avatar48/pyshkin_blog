class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title , index: { unique: true }
      t.text :body
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true, on_delete: :nullify
      t.boolean :visible, default: false

      t.timestamps
    end
    
  end
end
