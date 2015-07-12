class CreateDirectlyAttached < ActiveRecord::Migration
  def change
    create_table :directly_attacheds do |t|
      t.integer :source_id, index: true
      t.timestamps
    end
  end
end
