require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    it { should have_many(:reviews) }

    end

    describe "InDirect Associations" do

    it { should have_many(:reviewed_films) }

    it { should have_many(:bookmarked) }

    end

    describe "Validations" do

    end
end
