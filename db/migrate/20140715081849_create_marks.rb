class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lon, precision: 10, scale: 6
      t.references :board, index: true

      t.timestamps
    end
  end
end
