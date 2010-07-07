class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people, :primary_key => :uuid do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
