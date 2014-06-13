Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
