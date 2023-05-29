class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'citext'

    create_table :users do |t|
      t.string :name, null: false
      t.citext :email, null: false
      t.string :password_digest
      t.string :auth_token_hash
      t.jsonb :preferences, default: {}

      t.timestamps
    end
  end
end
