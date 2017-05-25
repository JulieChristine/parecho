require 'rails_helper'

  describe Offer do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :picture }
    it { should validate_presence_of :savings }
    it { should validate_presence_of :validity }
    it { should belong_to :shop }
  end
