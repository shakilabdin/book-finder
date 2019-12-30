class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :genre, null: false, foreign_key: true
      t.belongs_to :author, null: false, foreign_key: true
      t.string :summary

      t.timestamps
    end
  end
end
