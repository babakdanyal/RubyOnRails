require 'rails_helper'
RSpec.describe 'Book' do
        context 'context' do
	before do
	    book = Book.create(title:'The Lord of the Rings', author:'Tolkien')
	    visit root_path
    click_link('New Book')
end
	it 'page to create a new book' do
	   expect(page).to have_field('book[title]')
    expect(page).to have_field('book[author]')
  	end
        end
end