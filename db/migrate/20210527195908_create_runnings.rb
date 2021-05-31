class CreateRunnings < ActiveRecord::Migration[5.2]
  def change
    create_table :runnings do |t|
      t.integer     :condition_id,     null: false
      t.integer     :distance_id,      null: false
      t.string      :text,             null: false
      t.timestamps
    end
  end
end
