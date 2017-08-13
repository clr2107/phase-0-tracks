require_relative 'word_game'

describe WordGame do
  let (:game) {WordGame.new}

  it "creates an empty array for user guess" do
    expect(game.create_user_guess("cat")).to eq ["_ _ _"]
  end
end

