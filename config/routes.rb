# frozen_string_literal: true
Rails.application.routes.draw do
  root to: "link#index"
  resources :link
  get "/:short_url", to: "link#send_to_url"
end
