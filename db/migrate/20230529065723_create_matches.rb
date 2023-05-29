class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :status
      t.string :location
      t.datetime :start_at
      t.datetime :ends_at
      t.string :score
      t.text :story

      t.timestamps
    end
  end
end
