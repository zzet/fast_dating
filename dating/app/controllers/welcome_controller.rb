class WelcomeController < ApplicationController
  def index

    @content = Page.published.last
    headline headline_translate(:title)

  end
end
