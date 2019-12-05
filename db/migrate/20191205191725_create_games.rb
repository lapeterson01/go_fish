class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
