class CreateDiffusers < ActiveRecord::Migration[5.1]
  def change
    create_table :diffusers do |t|
      t.integer :emotions_id

      t.timestamps
    end
  end
end
