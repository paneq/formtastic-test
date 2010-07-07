class CreatePhoneTypes < ActiveRecord::Migration
  def self.up
    create_table :phone_types, :id => false do |t|
      t.string :name
      t.string :type

      t.timestamps
    end

    ActiveRecord::Base.connection.execute "Insert into phone_types(name, type) values('home', 'HomePhoneType')"
    ActiveRecord::Base.connection.execute "Insert into phone_types(name, type) values('work', 'WorkPhoneType')"
  end

  def self.down
    drop_table :phone_types
  end
end
