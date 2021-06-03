class CreateRunnings < ActiveRecord::Migration[5.2]
  def change
    create_table :runnings do |t|
      t.integer        :condition_id
      t.integer        :distance_id
      t.string         :title
      t.datetime       :start_date
      t.datetime       :end_date

      t.timestamps
    end
  end
end
