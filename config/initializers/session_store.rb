# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_questionnaire_session',
  :secret      => 'c2b5b7fbf2032e982d56989bffe43ced34ba34e0bfa67f56455b017d9b4edaefc7f95dc22efe953d67aa7821b35810ffc9f1667a4669a36180be051615af4fb3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
