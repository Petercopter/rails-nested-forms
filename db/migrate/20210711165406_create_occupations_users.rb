class CreateOccupationsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :occupations_users do |t|
      t.references :occupation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
