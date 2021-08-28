# == Schema Information
#
# Table name: games
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  number_of_players :integer          default(3), not null
#
class Game < ApplicationRecord
  has_many :scores
  has_many :players, through: :scores
  has_many :boards, through: :scores
  validates :number_of_players, presence: true
end
