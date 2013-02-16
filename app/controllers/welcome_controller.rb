require 'chirp'

class WelcomeController < ApplicationController
  include Chirp

  def index
    experiment 'title' do |e|
      e.variant 'title_variant_1' do
        @title = "Yep yep!"
      end

      e.variant 'title_variant_2' do
        @title = "Amen!"
      end

      e.variant 'title_variant_3' do
        @title = "I know!"
      end
    end
  end
end