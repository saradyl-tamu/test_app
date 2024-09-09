# spec/models/book_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:all) do
    # Ensure the test database is seeded
    Rails.application.load_seed
  end

  it 'should have 5 books in the database' do
    expect(Book.count).to eq(5)
  end

  it 'should include a specific book' do
    book = Book.find_by(title: "The Old Man and The Sea")
    expect(book).not_to be_nil
    expect(book.title).to eq("The Old Man and The Sea")
  end
end