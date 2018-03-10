class Admin::PoemsController < ApplicationController
  def index
    @poems = Poem.order(:id)
  end
end
