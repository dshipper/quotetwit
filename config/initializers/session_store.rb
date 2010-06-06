# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quotetwit_session',
  :secret      => 'baf02ecb9800e298c00a68b53a1e325c23de8d617dce72ef1e6d7104c6d991156f264de833f9c1e444b16c409cbe3431adb3baf261a59dc7daa2d3c4bea68b8a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
