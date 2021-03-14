# frozen_string_literal: true

require 'open-uri'

# Class
class GamesController < ApplicationController
  def new
    @start_time = Time.now
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @letters = params[:letters]
    @answer = params[:answer]
    @score = compute_score(@answer)
    @message = score_message(@answer)
    @result = [@letters, @answer, @score, @message]
    @long_result = {}
    # @result = run_game(@answer)
  end

  def included_grid?(answer)
    answer.chars.all? { |letter| answer.count(letter) <= 10 }
  end

  def test_english?(answer)
    response = open("https://wagon-dictionary.herokuapp.com/#{answer}")
    json_hash = JSON.parse(response.read)
    json_hash['found']
  end

  def compute_score(answer)
    @end_time = Time.now
    @start_time = params[:start_time].to_time
    @time = @end_time - @start_time
    @time > 60.0 ? 0 : answer.size * (1.0 - @time / 60.0)
    # start_time = new Date(performance.timing.connectStart)
    # time = Time.now - start_time
    # score = (4 * (answer.length / 9) + (6 * (1 / (time + 1))))
    # score
  end

  def score_message(answer)
    if included_grid?(answer.upcase)
      if test_english?(answer)
        'well done'
      else
        "Sorry, but #{answer} is not an english word"
      end
    else
      "Sorry, but #{answer} is not in the letter grid"
    end
  end

  # def run_game(answer)
  #   score_message = score_message(answer)
  #   # start_time = new Date(performance.timing.connectStart)
  #   # time = Time.now - start_time
  #   result = {
  #     # time: time,
  #     score: score_message.first,
  #     message: score_message.last
  #   }
  #   result
  # end
end
