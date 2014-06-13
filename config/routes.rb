Rails.application.routes.draw do
  root to: 'contacts#new'
  post '/' => 'contacts#create'
  mount LetterOpenerWeb::Engine, at: "/inbox"
end
