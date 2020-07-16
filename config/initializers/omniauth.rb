Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
     provider :github, ENV['8ba443991d592060770b'], ENV['93bd20d58af0a60b35c8194d06a57ea40de3600d']
end

#Inside the block, we see that we're telling the Rails application to use a thing called OmniAuth::Builder which, inside of its block, adds providers. 

#Providers are our authenticating third-parties. Each provider has a strategy. In the snippet above, we're saying "let's use the developer strategy."
