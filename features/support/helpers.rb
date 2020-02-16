# frozen_string_literal: true

require 'capybara/dsl'

# Helper DSL
module Helpers
  include Capybara::DSL

  def header?
    page.has_css?('h1')
  end
end
