# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.where(name: 'user_1').first_or_create!(name: 'user_1', user_id:'user_1', password: 'password', admin: false)
User.where(name: 'user_2').first_or_create!(name: 'user_2', user_id:'user_2', password: 'password', admin: false)
User.where(name: 'user_3').first_or_create!(name: 'user_3', user_id:'user_3', password: 'password', admin: false)
User.where(name: 'user_4').first_or_create!(name: 'user_4', user_id:'user_4', password: 'password', admin: false)
User.where(name: 'priv_1').first_or_create!(name: 'priv_1', user_id:'priv_1', password: 'password', admin: true)
User.where(name: 'priv_2').first_or_create!(name: 'priv_2', user_id:'priv_2', password: 'password', admin: true)

Book.where(title: 'The Hobbit').first_or_create!(author: 'J.R.R. Tolkien ', author_id: 1, genre: 'Fantasy', isbn: '978-0544174221', pages: 384, published_on: '1937', total_in_library: 5, abstract: 'Gandalf tricks Bilbo into hosting a party for Thorin and his band of dwarves, who sing of reclaiming the Lonely Mountain and its vast treasure from the dragon Smaug.', image_cover_url: 'http://www.thelandofshadow.com/wp-content/uploads/2013/01/The-Hobbit-flat-cover.jpg')
Book.where(title: 'The Lord of the Rings').first_or_create!(author: 'J.R.R. Tolkien ', author_id: 1, genre: 'Fantasy', isbn: '978-0547928210', pages: 432, published_on: '1954', total_in_library: 5, abstract: 'The story begins in the Shire, where the Hobbit Frodo Baggins inherits the Ring from Bilbo Baggins, his cousin and guardian. Neither is aware of its origin and nature, but Gandalf the Grey, a wizard and old friend of Bilbo, suspects the Rings identity.', image_cover_url: 'http://www.john-howe.com/portfolio/gallery/data/media/53/cover_The-Lord-of-the-Rings.jpg')
Book.where(title: 'The Silmarillion').first_or_create!(author: 'J.R.R. Tolkien', author_id: 1, genre: 'Fantasy', isbn: '978-0618126989', pages: 278, published_on: 1974, total_in_library: 2, abstract: 'The Silmarillion, like Tolkiens other Middle-earth writings, was meant to have taken place at some time in Earths past. In keeping with this idea, The Silmarillion is meant to have been translated from Bilbos three-volume Translations from the Elvish, which he wrote while at Rivendell.', image_cover_url: 'http://upload.wikimedia.org/wikipedia/en/7/7b/Silmarillion.JPG')
Book.where(title: 'Anthem').first_or_create!(author: 'Ayn Rand', author_id: 2, genre: 'Sci-fi', isbn: '978-1499174168', pages: 66, published_on: '1938', total_in_library: 5, abstract: 'Anthem is a dystopian fiction novella by Ayn Rand, written in 1937 and first published in 1938 in England. It takes place at some unspecified future date...', image_cover_url: 'http://www.thelandofshadow.com/wp-content/uploads/2013/01/The-Hobbit-flat-cover.jpg')
Book.where(title: 'Earth Awakens').first_or_create!(author: 'Orson Scott Card', author_id: 3, genre: 'Sci-fi', isbn: '978-0765329066', pages: 400, published_on: '2014', total_in_library: 5, abstract: 'Nearly 100 years before the events of Orson Scott Card’s bestselling novel Ender’s Game, humans were just beginning to step off Earth and out into the Solar System.', image_cover_url: 'http://www.allyoucanbooks.com/sites/default/files/imagecache/book_cover_medium/ebook-cover/Anthem-by-Ayn-Rand.jpg')
Book.where(title: 'A Midsummer Nights Dream').first_or_create!(author: 'Williams Shakespeare', author_id: 4, genre: 'Fiction', isbn: '978-1619492233', pages: 134, published_on:'1605', total_in_library: 5, abstract: 'The play features three interconnecting plots, connected by a celebration of the wedding of Theseus of Athens and the Amazon queen, Hippolyta, which is set simultaneously in the woodland and in the realm of Fairyland, under the light of the moon.', image_cover_url: 'http://2.bp.blogspot.com/-IBgzSE3MyCE/TyooMFUheXI/AAAAAAAACDM/harSUVS3m3s/s320/midsummer%2Bnight.jpg')
Book.where(title: 'Snow Crash').first_or_create!(author: 'Neal Stephenson', author_id: 5, genre: 'Sci-fi', isbn: '978-0553380958', pages: 440, published_on: '2000', total_in_library: 5, abstract: 'Hiro Protagonist, discovers the name of a new pseudo-narcotic, "Snow Crash", being offered at an exclusive Metaverse nightclub. Hiros friend and fellow hacker Da5id falls victim to Snow Crashs effects, which are apparently unique in that they are experienced...', image_cover_url: 'http://4.bp.blogspot.com/-hXV7azIeSFU/T8BTykNfOWI/AAAAAAAAIFM/-GhPneku1SM/s1600/Snow%2BCrash.jpg')