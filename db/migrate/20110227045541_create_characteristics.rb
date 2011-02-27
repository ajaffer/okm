class CreateCharacteristics < ActiveRecord::Migration
  def self.up
    create_table :characteristics do |t|
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :characteristics
  end
end
