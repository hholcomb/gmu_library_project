class Book < ActiveRecord::Base


def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
end

end
  
GENRE = [ 'Sci-fi', 'Drama', 'Fiction' , 'Non-Fiction' ]

  validates :title, :author, :isbn, :genre, :abstract, :pages,  presence: true
  
  validates :pages,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 },
      unless: "pages.blank?"
  
  validates :total_in_library,
      numericality: { greater_than: 0 }

  validates :genre, :inclusion => { :in => GENRE }

  validates :abstract, length: { minimum: 15 }, 
    unless: 'abstract.blank?'

end
