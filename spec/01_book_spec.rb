describe 'Book' do
  describe '::new' do
    it 'gets initialized with a title' do
      expect{Book.new("And Then There Were None")}.to_not raise_error
    end
  end

  describe 'properties' do
    let(:book) { Book.new("And Then There Were None") }

    it 'has a title' do
      expect(book.title).to eq("And Then There Were None")
    end

    it 'has an author name' do
      book.author = "Agatha Christie"
      expect(book.author).to eq("Agatha Christie")
    end

    it 'has a page count' do
      book.page_count = 272
      expect(book.page_count).to eq(272)
    end

    it 'has a genre' do
      book.genre = "Mystery"
      expect(book.genre).to eq("Mystery")
    end
  end

  describe '#turn_page' do
    it 'can turn the page' do
      expect($stdout).to receive(:puts).with("Flipping the page...wow, you read fast!")
      book = Book.new("The World According to Garp")
      book.turn_page 
    end
  end
end

class Book
  def initialize(title)
    @title = title
  end
  
  def title
    @title
  end
   
  def author=(author)
      @author = author
  end

  def author
    @author
  end

  def page_count=(num)
    @page_count = num
  end

  def page_count
    @page_count
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    @genre
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
end

class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title
  
  def initialize(title)
      @title = title
  end

  def turn_page
      puts "Flipping the page...wow, you read fast!"
  end
end