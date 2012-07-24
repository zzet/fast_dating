class Web::WelcomeController < Web::ApplicationController
  def index

    @content = Page.published.last
    headline headline_translate(:title)

  end
end
