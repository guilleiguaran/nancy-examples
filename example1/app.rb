require 'nancy'
require 'nancy/render'

module Helpers
  def greeting name
    "Howdy #{name}"
  end
end

class App < Nancy::Base
  include Nancy::Render
  include Helpers

  get '/:name' do
    @message = greeting params['name']
    render 'hello.erb'
  end
end
