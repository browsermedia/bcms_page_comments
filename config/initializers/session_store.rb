# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_browsercms_page_comments_module_session',
  :secret      => '72a993b5974c3d20d0e0e10c1b96ffdac404b189de543def4419a56d99c242b03d198c4a3b22bdf46e8eb72c88a8c92312fb8689dda7352140c287dd334e26c2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
