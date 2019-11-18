class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :points
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
