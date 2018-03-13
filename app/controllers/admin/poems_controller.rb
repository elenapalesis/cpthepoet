class Admin::PoemsController < ApplicationController
  def index
    # instantiate poem for use in new poem form (#create action)
    @poem = Poem.new

    @poems = Poem.order(:id)
  end

  def create
    @poem = Poem.new(poem_params)
    @poem.save

    # after submitting new poem, redirect back to poems index
    redirect_to(admin_poems_path)
  end

  private

  # Whitelist the poem parameters used to define a poem. Otherwise, an attempted
  # assignemnt will throw ActiveModel::ForbiddenAttributesError.
  def poem_params
    params.require(:poem).permit(:greek_title, :english_title, :greek_body, :english_body,
      :published)
  end
end
