ActiveAnalytics::Engine.routes.draw do
  get "/:site", to: "page_views#show", as: :page_view, constraints: {site: /[^\/]+/}
  get "/:site/*page", to: "page_views#show", constraints: {site: /[^\/]+/}
  root to: "page_views#index"
end