class ShortLink
  def initialize(options = {})
    @options = options
    @link = options[:link]
    @params = options[:params]
  end

  def short_url
    base = "http://localhost:3000"
    url_extension = @link.id.to_s(36)
    "#{base}/#{url_extension}"
  end

  def redirect_to_link
    id = @params.to_i(36)
    Link.find(id)
  end
end