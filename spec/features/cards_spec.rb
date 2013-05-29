require 'spec_helper'

describe "Cards" do
  describe "GET /cards" do
   it "display some cards" do
   	visit cards_path 
   end
  end
end
