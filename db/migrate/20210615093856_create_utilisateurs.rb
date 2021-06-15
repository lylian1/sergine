class CreateUtilisateurs < ActiveRecord::Migration[6.0]
  def change
    create_table :utilisateurs do |t|
      t.string :prenom
      t.string :nom
      t.string :password

      t.timestamps
    end
  end
end
