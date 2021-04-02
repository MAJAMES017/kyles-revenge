class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :score
      t.belongs_to :monster, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
