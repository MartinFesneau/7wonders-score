# == Schema Information
#
# Table name: players
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Player < ApplicationRecord
  has_many :scores
  has_many :games, through: :scores
  has_many :boards, through: :scores
  validates :name, presence: true
end
