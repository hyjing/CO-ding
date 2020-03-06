class Code < ActiveRecord::Base
# add the necessary class methods, attributes, etc. here
  # to make the tests in spec/hangperson_game_spec.rb pass.
  attr_accessor :session_credentials
  # Get a word from remote "random word" service

  # def initialize()
  # end
  
  def initialize(session_credentials)
      @session_credentials = session_credentials
  end
  
  def listFile()
    # Gets list of remote files.
    @session_credentials.files
  end

end
