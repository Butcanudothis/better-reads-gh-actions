# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# frozen_string_literal: true

austin = User.create(name: 'Austin', email: 'austin@betterreads.com', password: 'betterreads')
bri = User.create(name: 'Brianna', email: 'bri@betterreads.com', password: 'betterreads')

fitzgerald = Author.create(name: 'F. Scott Fitzgerald')
lee = Author.create(name: 'Harper Lee')
orwell = Author.create(name: 'George Orwell')

gatsby_desc = 'A story of wealth, love, and the American Dream set in 1920s New York. ' \
              "Often called the Great American Novel, it is Fitzgerald's best work."
gastby = Book.create(title: 'The Great Gatsby', author: fitzgerald, description: gatsby_desc)

mockingbird_desc = 'A Pulitzer Prize-winning novel about racial injustice in the American South, ' \
                   'seen through the eyes of young Scout Finch and her father Atticus.'
Book.create(title: 'To Kill a Mockingbird', author: lee, description: mockingbird_desc)

n84_desc = 'A dystopian novel about totalitarianism, mass surveillance, and the erosion of truth. ' \
           "Orwell's most famous work remains chillingly relevant today."
n84 = Book.create(title: '1984', author: orwell, description: n84_desc)

Review.create!(user_id: austin.id, book_id: gastby.id, title: 'Enjoyable read', rating: 4,
               content: 'This is a great book! And an even better movie.')
Review.create!(user_id: bri.id, book_id: gastby.id, title: 'Lacking depth', rating: 2,
               content: "Wasn't quite my thing - Gatsby didn't capture my imagination.")

rowling = Author.create(name: 'J.K. Rowling')
tolkien = Author.create(name: 'J.R.R. Tolkien')
austen = Author.create(name: 'Jane Austen')

hp_title = "Harry Potter and the Philosopher's Stone"
hp_desc = "The first Harry Potter novel. A young boy discovers he's a wizard and enrols at " \
          'Hogwarts School of Witchcraft and Wizardry.'
harry_potter = Book.create(title: hp_title, author: rowling, description: hp_desc)

fellowship_desc = 'The first volume of The Lord of the Rings. Frodo Baggins sets out on a ' \
                  'quest to destroy the One Ring and save Middle-earth.'
fellowship = Book.create(
  title: 'The Fellowship of the Ring', author: tolkien, description: fellowship_desc
)

pride_desc = 'A romantic novel by Jane Austen following Elizabeth Bennet as she navigates ' \
             'issues of class, marriage, and morality in 19th-century England.'
pride = Book.create(title: 'Pride and Prejudice', author: austen, description: pride_desc)

charlie = User.create(name: 'Charlie', email: 'charlie@betterreads.com', password: 'betterreads')

Review.create!(user_id: austin.id, book_id: harry_potter.id, title: 'Magical from start to finish',
               rating: 5, content: 'An absolute classic. The world-building is unforgettable.')
Review.create!(user_id: bri.id, book_id: fellowship.id, title: 'Epic adventure', rating: 5,
               content: "Tolkien's masterwork. Dense but deeply rewarding — Middle-earth feels real.")
Review.create!(user_id: charlie.id, book_id: pride.id, title: 'Timeless wit', rating: 4,
               content: "Austen's sharp wit and social commentary make this a timeless classic.")
Review.create!(user_id: charlie.id, book_id: n84.id, title: 'Chillingly relevant', rating: 5,
               content: "Orwell's vision of a totalitarian future feels more prescient than ever.")

diana = User.create(name: 'Diana', email: 'diana@betterreads.com', password: 'betterreads')
evan = User.create(name: 'Evan', email: 'evan@betterreads.com', password: 'betterreads')
fiona = User.create(name: 'Fiona', email: 'fiona@betterreads.com', password: 'betterreads')

christie = Author.create(name: 'Agatha Christie')
hemingway = Author.create(name: 'Ernest Hemingway')
dostoevsky = Author.create(name: 'Fyodor Dostoevsky')
twain = Author.create(name: 'Mark Twain')
steinbeck = Author.create(name: 'John Steinbeck')
salinger = Author.create(name: 'J.D. Salinger')

and_then_desc = 'Ten strangers are lured to an isolated island and killed one by one. ' \
                "Christie's most celebrated puzzle — impossible to put down."
and_then = Book.create(
  title: 'And Then There Were None', author: christie, description: and_then_desc
)

old_man_desc = 'An aging Cuban fisherman battles a giant marlin far out in the Gulf Stream. ' \
               "Hemingway's meditation on struggle, dignity, and perseverance."
old_man = Book.create(
  title: 'The Old Man and the Sea', author: hemingway, description: old_man_desc
)

cp_desc = 'A student murders a pawnbroker and spirals into guilt and psychological torment. ' \
          "One of Dostoevsky's greatest explorations of morality and redemption."
crime_punishment = Book.create(
  title: 'Crime and Punishment', author: dostoevsky, description: cp_desc
)

huck_desc = 'Huck Finn and the escaped slave Jim journey down the Mississippi River. ' \
            "Twain's comic masterpiece is also a sharp critique of antebellum society."
huck_finn = Book.create(
  title: 'Adventures of Huckleberry Finn', author: twain, description: huck_desc
)

grapes_desc = 'The Joad family flees the Dust Bowl for California only to find exploitation. ' \
              'A Pulitzer Prize-winning portrait of poverty and human resilience.'
grapes = Book.create(
  title: 'The Grapes of Wrath', author: steinbeck, description: grapes_desc
)

catcher_desc = 'Holden Caulfield drifts through New York City after being expelled from school. ' \
               'A seminal coming-of-age novel about alienation and the loss of innocence.'
catcher = Book.create(
  title: 'The Catcher in the Rye', author: salinger, description: catcher_desc
)

Review.create!(user_id: diana.id, book_id: and_then.id, title: 'Perfect mystery', rating: 5,
               content: 'Christie at her best. The tension builds perfectly and the ending stuns.')
Review.create!(user_id: evan.id, book_id: old_man.id, title: 'Quiet but profound', rating: 4,
               content: "Hemingway's prose is stripped bare. A meditation on struggle and defeat.")
Review.create!(user_id: fiona.id, book_id: crime_punishment.id, title: 'Psychologically gripping',
               rating: 5, content: 'Dostoevsky dives deep into guilt. Raskolnikov is unforgettable.')
Review.create!(user_id: austin.id, book_id: huck_finn.id, title: 'A true American classic',
               rating: 4, content: "Twain's wit shines through every page. Huck's voice feels real.")
Review.create!(user_id: bri.id, book_id: grapes.id, title: 'Heartbreaking and important',
               rating: 5, content: 'Steinbeck captures suffering and resilience with devastating honesty.')
Review.create!(user_id: charlie.id, book_id: catcher.id, title: "Holden's world", rating: 3,
               content: "I can see why it's iconic, but Holden wore thin for me after a while.")
Review.create!(user_id: diana.id, book_id: harry_potter.id, title: 'Pure magic', rating: 5,
               content: "Grew up with this series and it never gets old. Rowling's world is endless.")
Review.create!(user_id: evan.id, book_id: pride.id, title: 'Surprisingly funny', rating: 4,
               content: "Austen is genuinely witty. Mr. Bennet's dry humor had me laughing out loud.")
Review.create!(user_id: fiona.id, book_id: fellowship.id, title: 'Dense but worth it', rating: 4,
               content: 'The detail is overwhelming at first, but Middle-earth feels utterly real.')
Review.create!(user_id: evan.id, book_id: and_then.id, title: 'Impossible to put down', rating: 5,
               content: 'Read it in one sitting. Not a single wasted word.')

george = User.create(name: 'George', email: 'george@betterreads.com', password: 'betterreads')
hannah = User.create(name: 'Hannah', email: 'hannah@betterreads.com', password: 'betterreads')
ivan = User.create(name: 'Ivan', email: 'ivan@betterreads.com', password: 'betterreads')

marquez = Author.create(name: 'Gabriel García Márquez')
morrison = Author.create(name: 'Toni Morrison')
woolf = Author.create(name: 'Virginia Woolf')
kafka = Author.create(name: 'Franz Kafka')

solitude_desc = 'Seven generations of the Buendía family in the fictional town of Macondo. ' \
                "Márquez's masterpiece of magical realism won the Nobel Prize in Literature."
solitude = Book.create(
  title: 'One Hundred Years of Solitude', author: marquez, description: solitude_desc
)

beloved_desc = 'A former enslaved woman is haunted by the ghost of her dead daughter. ' \
               "Morrison's Pulitzer Prize-winning novel is a devastating portrait of trauma and memory."
beloved = Book.create(title: 'Beloved', author: morrison, description: beloved_desc)

dalloway_desc = 'Clarissa Dalloway prepares for a party while a shell-shocked veteran drifts through London. ' \
                "Woolf's stream-of-consciousness masterpiece captures a single day in luminous detail."
dalloway = Book.create(title: 'Mrs Dalloway', author: woolf, description: dalloway_desc)

metamorphosis_desc = 'Gregor Samsa wakes one morning transformed into a giant insect. ' \
                     "Kafka's haunting novella is one of the most influential works of the 20th century."
metamorphosis = Book.create(title: 'The Metamorphosis', author: kafka, description: metamorphosis_desc)

Review.create!(user_id: george.id, book_id: solitude.id, title: 'Mesmerising and vast', rating: 5,
               content: 'García Márquez builds a world that feels both mythic and achingly real.')
Review.create!(user_id: hannah.id, book_id: beloved.id, title: 'Devastatingly powerful', rating: 5,
               content: 'Morrison writes with a ferocity that stays with you long after the final page.')
Review.create!(user_id: ivan.id, book_id: dalloway.id, title: 'A single day, perfectly rendered', rating: 4,
               content: "Woolf's prose flows like music. The interior monologue technique is stunning.")
Review.create!(user_id: george.id, book_id: metamorphosis.id, title: 'Strange and unforgettable', rating: 4,
               content: 'Read it in one sitting. Deeply unsettling but impossible to stop reading.')
Review.create!(user_id: fiona.id, book_id: solitude.id, title: 'Worth the effort', rating: 4,
               content: 'Keeping track of names is tricky but the magic more than makes up for it.')
Review.create!(user_id: diana.id, book_id: beloved.id, title: 'Difficult but essential', rating: 5,
               content: 'One of the most important American novels ever written. Do not skip this.')
Review.create!(user_id: evan.id, book_id: metamorphosis.id, title: 'Kafkaesque in the best way', rating: 4,
               content: 'Now I understand why his name became an adjective. Brilliant and deeply strange.')
Review.create!(user_id: ivan.id, book_id: gastby.id, title: 'Style over substance?', rating: 3,
               content: 'The prose is beautiful but I found Gatsby himself a bit hollow as a character.')
Review.create!(user_id: hannah.id, book_id: catcher.id, title: 'I get it but...', rating: 3,
               content: 'Holden is compelling but the cynicism felt repetitive by the end.')
Review.create!(user_id: george.id, book_id: crime_punishment.id, title: 'Riveting psychological drama', rating: 5,
               content: "Raskolnikov's descent and redemption is one of literature's great journeys.")
Review.create!(user_id: ivan.id, book_id: huck_finn.id, title: 'Great adventure story', rating: 4,
               content: "Twain's humour keeps things light but there's serious depth beneath the surface.")
Review.create!(user_id: hannah.id, book_id: old_man.id, title: 'Understated brilliance', rating: 5,
               content: 'Every word earns its place. Hemingway at his most economical and powerful.')

puts 'Successfully seeded the database'
