# frozen_string_literal: true
Rails.application.routes.draw do
  root to: "link#new"
  resources :link, only: [:new, :create, :show]
  scope module: :links do
    get "/:short_url", to: "redirect#show"
  end
end
