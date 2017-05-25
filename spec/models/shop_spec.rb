require 'rails_helper'

  describe Shop do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
    it { should validate_presence_of :area }
    it { should validate_presence_of :description }
    it { should validate_presence_of :picture }
    it { should validate_presence_of :opening_hours }
    it { should validate_presence_of :contact }
    it { should validate_presence_of :website }
    it { should have_many :offers }

  end
