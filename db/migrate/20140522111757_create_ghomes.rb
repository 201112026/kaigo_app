class CreateGhomes < ActiveRecord::Migration
  def change
    create_table :ghomes do |t|
      t.string :place
      t.string :shubetu
      t.string :kikan

      t.timestamps
    end
  end
end
