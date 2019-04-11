class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :building
      t.string :company
      t.integer :floor
      t.belongs_to :building, index: true
      t.belongs_to :company, index: true
      t.timestamps
    end
  end
end
