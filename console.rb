require( 'pry' )
require_relative( 'models/ticket' )
require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/screening' )

Ticket.delete_all()
Screening.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({'name' => 'Egon', 'funds' => 250.00})
customer1.save()
customer2 = Customer.new({'name' => 'Ray', 'funds' => 200.00})
customer2.save()
customer3 = Customer.new({'name' => 'Peter', 'funds' => 50.00})
customer3.save()
customer4 = Customer.new({'name' => 'Winston', 'funds' => 50.00})
customer4.save()

film1 = Film.new({'title' => 'Ghost', 'price' => 10.00 })
film2 = Film.new({'title' => 'The Sixth Sense', 'price' => 9.00 })
film3 = Film.new({'title' => 'Beetlejuice', 'price' => 11.00 })
film4 = Film.new({'title' => 'Casper', 'price' => 12.00})
film5 = Film.new( { 'title' =>  'Mary Poppins', 'price' => 10.00 } )
film6 = Film.new( { 'title' =>  'Kill Bill Vol.1', 'price' => 13.00 } )
film7 = Film.new( { 'title' =>  'Kill Bill Vol.2', 'price' => 13.00 } )
film8 = Film.new( { 'title' =>  'Django Unchained', 'price' => 15.00 } )
film9 = Film.new( { 'title' =>  'Star Wars III The Revenge of the Sith', 'price' => 9.00 } )
film10 = Film.new( { 'title' =>  'Star Wars IV A New Hope', 'price' => 12.00 } )
film11 = Film.new( { 'title' =>  'Star Wars V The Empire Strikes Back', 'price' => 12.00 } )
film12 = Film.new( { 'title' =>  'Star Wars VI Return of the Jedi', 'price' => 12.00 } )

## SAVE FILMS ##

film1.save()
film2.save()
film3.save()
film4.save()
film5.save()
film6.save()
film7.save()
film8.save()
film9.save()
film10.save()
film11.save()
film12.save()





screening1 = Screening.new({'film_id' => film1.id, 'start_time' => '2017-01-08 04:00:00', 'empty_seats' => 20})
screening1.save
screening2 = Screening.new({'film_id' => film2.id, 'start_time' => '2017-01-09 04:00:00', 'empty_seats' => 15})
screening2.save
screening3 = Screening.new({'film_id' => film2.id, 'start_time' => '2017-01-10 08:00:00', 'empty_seats' => 1})
screening3.save
screening4 = Screening.new({'film_id' => film3.id, 'start_time' => '2017-01-11 06:00:00', 'empty_seats' => 20})
screening4.save
screening5 = Screening.new({'film_id' => film4.id, 'start_time' => '2017-01-12 08:00:00', 'empty_seats' => 10})
screening5.save
screening6 = Screening.new({'film_id' => film4.id, 'start_time' => '2017-01-12 10:00:00', 'empty_seats' => 10})
screening6.save


customer1.buy_ticket(screening2)
customer2.buy_ticket(screening2)
customer3.buy_ticket(screening2)
customer4.buy_ticket(screening2)

customer1.buy_ticket(screening3)

customer1.buy_ticket(screening4)
customer2.buy_ticket(screening4)

customer1.buy_ticket(screening5)
customer3.buy_ticket(screening5)

customer4.buy_ticket(screening6)

# film2.most_popular_screening_time should return "2017-01-09 04:00:00" (for film4, it should return "2017-01-12 08:00:00")
# Screening.most_popular should return screening2
binding.pry
nil
