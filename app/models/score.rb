# == Schema Information
#
# Table name: scores
#
#  id         :bigint           not null, primary key
#  game_id    :bigint           not null
#  player_id  :bigint           not null
#  board_id   :bigint           not null
#  win        :boolean          default(FALSE), not null
#  war        :integer          default(0), not null
#  coins      :integer          default(0), not null
#  wonder     :integer          default(0), not null
#  yellow     :integer          default(0), not null
#  green      :integer          default(0), not null
#  blue       :integer          default(0), not null
#  violet     :integer          default(0), not null
#  black      :integer          default(0), not null
#  leader     :integer          default(0), not null
#  other      :integer          default(0), not null
#  total      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Score < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :board
  # validates :win
end
