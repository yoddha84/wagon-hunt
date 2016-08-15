class PagesController < ApplicationController
  def home
    @today = Date.today
    @products = Product.all
  end
  def team
    @members = ["Bob", "Romain", "Boris"]
  end
  def join_us
    render plain: "join us"
  end
end
