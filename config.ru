# This file is used by Rack-based servers to start the application.

export GEM_HOME="$HOME/.gems/"
export GEM_PATH="$GEM_HOME:/usr/lib/ruby/gems/1.8"
export PATH="$HOME/bin:$HOME/.gems/bin:$PATH"


require ::File.expand_path('../config/environment',  __FILE__)
run Eucalyptus::Application
