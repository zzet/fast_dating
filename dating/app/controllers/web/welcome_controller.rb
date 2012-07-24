class Web::WelcomeController < Web::ApplicationController
  def index

    @content = Page.published.last

  end
end
