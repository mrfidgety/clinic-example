class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.text :name

      t.timestamps
    end
  end
end
