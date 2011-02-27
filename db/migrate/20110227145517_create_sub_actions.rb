class CreateSubActions < ActiveRecord::Migration
  def self.up
    create_table :sub_actions do |t|
      t.string :content
      t.integer :action_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_actions
  end
end
