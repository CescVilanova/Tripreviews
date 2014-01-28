class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.references :client, index: true

      t.timestamps
    end
  end
end
