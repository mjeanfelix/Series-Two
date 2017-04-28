# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Writer.destroy_all

@writers = Writer.create([
  {name: "Militza Jean-Felix", email: "mjean_9@yahoo.com", password: "abc123", is_admin: true},
  {name: "July Westhale", email: "jwesthale@gmail.com", approved: true, password: "abc123", bio: "Westhale is a poet and writer living in Oakland, CA. She is the author of Trailer Trash (winner of the 2016 Kore Press Book Award), The Cavalcade (Finishing Line Press), and the children’s book Occasionally Accurate Science (Nomadic Press). She has been awarded grants and residencies from the Vermont Studio Center, the Lambda Literary Foundation, Sewanee, and Bread Loaf, among others. Her nonfiction has won the Inscape Editor’s Choice Award, and has been nominated for Best American Essays and the Pushcart prize.  She is a regular contributor at The Establishment, and her work has also appeared in The Huffington Post. Her most recent poetry can be found in The National Poetry Review, burntdistrict, Eleven Eleven, 580 Split, Quarterly West, and PRISM International. www.julywesthale.com"}
])

Sample.create({writer: @writers[1], content: "Ars Poetica One would like to see oneself walking through the forest as two girls, along a creek, the golden carp under the ice like blurred poppies. The tall, hooded girl will extend a basket, offering bread and water, a kindly face and a thick cloak. The other is small, with sly hands. She will eat her fill, wrap herself in the warmth of the wool cloak, cut a branch from a tree. Whittling the end to a point, she will pull the arrow back, and shoot it into the throat of the hooded girl. She will retrieve the basket."})
