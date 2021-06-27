if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_react-trivia-app', domain: 'react-trivia-app-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_react-trivia-app'
  end