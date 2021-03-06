class LinkController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to @link, notice: 'Short Link was successfully created.'
    else
      redirect_to new_link_url, notice: "Your url must has 'http://'"
    end
  end

  def show
    @link = Link.find(params[:id])
    @short_url = ShortLink.new({ link: @link }).short_url
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
