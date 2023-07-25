class CreateFixtures < ActiveRecord::Migration[7.0]
  def change
    create_table :fixtures do |t|
      t.string :season_status
      t.string :type_of_game
      t.string :date
      t.string :location
      t.string :team_one_name
      t.string :team_one_image
      t.string :team_two_name
      t.string :team_two_image

      t.timestamps
    end
  end
end
