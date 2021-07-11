class CreateFitnessregs < ActiveRecord::Migration[6.1]
  def change
    create_table :fitnessregs do |t|
      t.string :title
      t.string :description
      t.string :img
      t.string :leftcolor
      t.string :rightcolor

      t.timestamps
    end
  end
end
