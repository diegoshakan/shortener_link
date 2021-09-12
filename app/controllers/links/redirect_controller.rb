module Links
  class RedirectController < ApplicationController
    def show
      link = ShortLink.new({ params: params[:short_url] }).redirect_to_link
      redirect_to link.url
    end
  end
end
