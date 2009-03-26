# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_mat_aki_session',
  :secret      => 'd51b5d95b3efada444113fb3db10780dd0b03fea809114f32174d268e70109a7b0fd4e82cfa03018203d5d0330c59127ee3389a68e81bec9b9e29b4461adea9c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
