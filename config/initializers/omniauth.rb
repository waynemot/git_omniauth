Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas,
           url: "https://cse-apps.unl.edu",
           ssl: true,
           callback_url: "/callbacks/cas",
           host: "localhost",
           login_url: "/cas"

end