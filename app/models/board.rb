# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  side       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many :scores
  has_many :players, through: :scores
  has_many :games, through: :scores
  validates :name, uniqueness: { scope: :side }, presence: true
  validates :side, presence: true
end
