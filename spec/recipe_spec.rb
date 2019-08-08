require 'rails_helper'
require 'rspec-rails'
require 'shoulda-matchers'

RSpec.describe Recipe, type: :model do
  it {should have_and_belong_to_many(:ingredients).class_name('Ingredient')}
end
