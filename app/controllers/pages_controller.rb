class PagesController < ApplicationController
  def home
    @today = Date.today
  end
  def team
    @members = ["Bob", "Romain", "Boris"]
  end
  def join_us
    render plain: "join us"
  end
end
