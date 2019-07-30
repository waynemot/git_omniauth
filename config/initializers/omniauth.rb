Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas,
           url: 'https://cse-apps.unl.edu',
           # ssl: true,
           callback_url: '/callbacks/cas',
           # host: "cse-asarma-16.unl.edu:3000",
           # host: 'cse-apps.unl.edu/',
           login_url: '/cas/login'  # CAS service login URL
           #uid_field: 'user'
           #service_validate_url: 'localhost:3000/'  # RETURN PATH???
           #service_validate_url: '/cas'
end