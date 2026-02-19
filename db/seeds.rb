# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

austin = User.create(name: 'Austin', email: 'austin@betterreads.com', password: 'betterreads')
bri = User.create(name: 'Brianna', email: 'bri@betterreads.com', password: 'betterreads')

fitzgerald = Author.create(name: 'F. Scott Fitzgerald')
lee = Author.create(name: 'Harper Lee')
orwell = Author.create(name: 'George Orwell')

gastby = Book.create(title: 'The Great Gatsby', author: fitzgerald,
                     description: "The Great Gatsby is a novel by American author F. Scott Fitzgerald. The story takes place in 1922, during the Roaring Twenties, a time of prosperity in the United States after World War I. The book received critical acclaim and is generally considered Fitzgerald's best work. It is also widely regarded as a 'Great American Novel' and a literary classic, capturing the essence of an era. The Modern Library named it the second best English-language novel of the 20th century.")
Book.create(title: 'To Kill a Mockingbird', author: lee,
            description: "To Kill a Mockingbird is a novel by Harper Lee published in 1960. Instantly successful, widely read in high schools and middle schools in the United States, it has become a classic of modern American literature, winning the Pulitzer Prize. The plot and characters are loosely based on Lee's observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was 10 years old.")
n84 = Book.create(title: '1984', author: orwell,
                  description: "Nineteen Eighty-Four: A Novel, often referred to as 1984, is a dystopian social science fiction novel by the English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime. Thematically, Nineteen Eighty-Four centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of persons and behaviours within society.")

Review.create!(user_id: austin.id, book_id: gastby.id, title: 'Enjoyable read', rating: 4,
               content: 'This is a great book! And an even better movie.')
Review.create!(user_id: bri.id, book_id: gastby.id, title: 'Lacking depth', rating: 2,
               content: "Wasn't quite my thing - Gatsby didn't capture my imagination.")

rowling = Author.create(name: 'J.K. Rowling')
tolkien = Author.create(name: 'J.R.R. Tolkien')
austen = Author.create(name: 'Jane Austen')

harry_potter = Book.create(title: "Harry Potter and the Philosopher's Stone", author: rowling,
                           description: "Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.")
fellowship = Book.create(title: 'The Fellowship of the Ring', author: tolkien,
                         description: 'The Fellowship of the Ring is the first of three volumes of the epic novel The Lord of the Rings by the English author J. R. R. Tolkien. It takes place in the fictional world of Middle-earth and follows the hobbit Frodo Baggins as he and his companions embark on a quest to destroy the One Ring.')
pride = Book.create(title: 'Pride and Prejudice', author: austen,
                    description: 'Pride and Prejudice is a romantic novel of manners written by Jane Austen in 1813. The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.')

charlie = User.create(name: 'Charlie', email: 'charlie@betterreads.com', password: 'betterreads')

Review.create!(user_id: austin.id, book_id: harry_potter.id, title: 'Magical from start to finish', rating: 5,
               content: 'An absolute classic. The world-building is phenomenal and the characters are unforgettable.')
Review.create!(user_id: bri.id, book_id: fellowship.id, title: 'Epic adventure', rating: 5,
               content: "Tolkien's masterwork. Dense but deeply rewarding — Middle-earth feels utterly real.")
Review.create!(user_id: charlie.id, book_id: pride.id, title: 'Timeless wit', rating: 4,
               content: "Austen's sharp social commentary wrapped in a delightful romance. Elizabeth Bennet is one of literature's greatest heroines.")
Review.create!(user_id: charlie.id, book_id: n84.id, title: 'Chillingly relevant', rating: 5,
               content: "Orwell's vision of a totalitarian future feels more prescient than ever. A must-read.")

puts 'Successfully seeded the database'
