Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '7ac52a0d73f006549767', 'aab3b66f53f91655551cd0ed81c988dbb794e6df', scope: "user:image"
end