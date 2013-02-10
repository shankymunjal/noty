require 'noty/view_helpers'

module Noty
  class Railtie < Rails::Railtie
    initializer "noty.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
  end
end