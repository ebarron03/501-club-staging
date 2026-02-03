require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      book = Book.new(title: 'Test Book', author: 'Test Author', isbn: '123-456', published_year: 2020)
      expect(book).to be_valid
    end
  end

  describe 'attributes' do
    it 'has a title' do
      book = Book.new(title: 'Test Book')
      expect(book.title).to eq('Test Book')
    end

    it 'has an author' do
      book = Book.new(author: 'Test Author')
      expect(book.author).to eq('Test Author')
    end

    it 'has an isbn' do
      book = Book.new(isbn: '123-456-789')
      expect(book.isbn).to eq('123-456-789')
    end

    it 'has a published year' do
      book = Book.new(published_year: 2020)
      expect(book.published_year).to eq(2020)
    end
  end

  describe 'database operations' do
    it 'can be saved to the database' do
      book = Book.create(title: 'Database Test', author: 'DB Author')
      expect(book.persisted?).to be true
    end

    it 'can be retrieved from the database' do
      book = Book.create(title: 'Retrieve Test', author: 'Retrieve Author')
      found_book = Book.find(book.id)
      expect(found_book.title).to eq('Retrieve Test')
    end
  end
end
