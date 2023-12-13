# Replace API_KEY and API_SECRET with the values you got from Twitter
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "6Qf4nMvba8pBrnlltbH6FbFbo", "CxHFqGojkrN21cB4kyzpKAaDwUT6zQ7Fqrc2CZ213rC7FRF0vI"
end