class ResultSerializer < ActiveModel::Serializer
  attributes :id, :season_status, :type_of_game, :date, :location, :team_one_name, :team_one_image, :team_one_score, :team_two_name, :team_two_image, :team_two_score, :match_report
end
