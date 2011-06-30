class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string      :name
      t.string      :content
      t.integer     :user_id
      t.string      :availablity
      t.string      :contact
      t.string      :computer_info
      t.string      :os_type
      t.string      :antivirus
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
