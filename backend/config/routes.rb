Rails.application.routes.draw do
  get "/health", to: ->(_env) { [200, { "Content-Type" => "application/json" }, [{ status: "ok" }.to_json]] }

  namespace :api do
    # TODO: Wire up your endpoints here.
    # Suggested:
    #   resources :communities, only: [:index, :show]
    #   resources :people, only: [:index, :show]
    #   resources :check_ins, only: [:create, :update]
  end
end
