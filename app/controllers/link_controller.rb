class LinkController < ApplicationController
  def index; end

  def show
    @link = Link.find(params[:id])
    url_extension = @link.id.to_s(36)
    @short_url = "#{request.base_url}/#{url_extension}"
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to @link
    else
      redirect_to :index
    end
  end

  def send_to_url
    id = params[:short_url].to_i(36)
    link = Link.find(id)
    redirect_to link.url
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
