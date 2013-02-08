class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.text :gmap
      t.references :district
      t.string :phone

      t.timestamps
    end
    add_index :locals, :district_id
  end
end
