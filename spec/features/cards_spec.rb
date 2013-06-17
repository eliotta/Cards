require 'spec_helper'

describe "Cards" do
before do
	@card = Card.create :card => 'The next card is a . .'
end


  describe "GET /cards" do
   it "display some cards" do
   	visit cards_path 
   	page.should have_content 'The next card is a . .'
   end
    
   it "creates a new card" do
   	visit cards_path
   	fill_in 'Card', :with => 'another card'
   	click_button 'Add Card'

   	current_path.should == cards_path
   	page.should have_content 'another card'	
   	save_and_open_page
   end
  end

describe "PUT /cards" do
	it "edits a card" do
  visit cards_path
  click_link 'Edit'
  current_path.should == edit_card_path(@card)
  #page.should have_content 'the next card is a . . '
  find_field('Card').value.should == 'The next card is a . .'
   
  fill_in 'Card', :with  => 'updated card'
  click_button 'Update Card'

  page.should have_content 'updated card'


		end
	end

describe "DELETE /cards" do
  it "should delete a card" do 
visit cards_path
find("#card_#{@card.id}").click_link 'Delete'
page.should have_content 'Destruction complete'
end
end




end
