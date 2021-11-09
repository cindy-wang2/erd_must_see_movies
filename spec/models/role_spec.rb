require 'rails_helper'

RSpec.describe Role, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:film) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
