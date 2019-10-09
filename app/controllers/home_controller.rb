class HomeController < ApplicationController
  def index
    @nouns = Noun.limit(20).order("RANDOM()")
  end
end
