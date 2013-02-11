class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :name,             :default => nil
      t.string :father_last_name,       :default => nil
      t.string :mother_last_name,       :default => nil
      t.boolean :gender
      t.references :document_type
      t.string :document_number,        :default => nil
      t.string :address,          :default => nil
      t.references :district
      t.date :birth_date,         :default => nil
      t.string :mobile_phone,       :default => nil

      t.timestamps
    end
    add_index :users, :document_type_id
    add_index :users, :district_id
  end

  def self.down
    drop_table :users
  end
end