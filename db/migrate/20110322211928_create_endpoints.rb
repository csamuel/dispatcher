class CreateEndpoints < ActiveRecord::Migration
  def self.up
    create_table :endpoints do |t|
      t.string :url
      t.integer :extension
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :endpoints
  end
end
