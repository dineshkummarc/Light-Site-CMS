class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end
    Status.create( :name => "Visible" )
    Status.create( :name => "Hidden" )
    Status.create( :name => "Development" )
  end

  def self.down
    drop_table :statuses
  end
end