class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :group
      t.date :date
      t.time :time
      t.references :local

      t.timestamps
    end
    add_index :tournaments, :local_id
  end
end
