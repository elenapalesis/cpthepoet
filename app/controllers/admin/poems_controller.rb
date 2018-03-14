class Admin::PoemsController < ApplicationController
  def index
    # instantiate poem for use in "Create poem" form (#create action)
    @poem = Poem.new

    @poems = Poem.order(:id)
  end

  def create
    @poem = Poem.new(poem_params)

    flash[:notice] =
      if @poem.save
        'Poem successfully created!'
      else
        'Poem creation failed.'
      end

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
