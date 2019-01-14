Rails.application.routes.draw do
  get "/fortune_url" => 'api/fortune_pages#fortune_action'
  get "/lotto_url" => 'api/fortune_pages#lotto_action'
end
