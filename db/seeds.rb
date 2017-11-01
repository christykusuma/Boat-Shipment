# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{
		id: 1,
		fname: 'Christy',
		lname: 'Kusuma',
		email: 'ckusuma@bu.edu',
		password: '1234567',
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	},
	{
		id: 2,
		fname: 'Mahima',
		lname: 'Tuladhar',
		email: 'mtuladhar@gmail.com',
		password: '1234567',
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	}
])

Boat.create([
	{
		id: 1,
		name: 'Twilight',
		storage: 40,
		location: 'Boston',
		user_id: 1
	},
	{
		id: 2,
		name: 'Misty',
		storage: 30,
		location: 'New York',
		user_id: 2
	}
])

Job.create([
	{
		id: 1,
		title: 'Banana Shipment',
		description: 'Ships bananas',
		origin: 'Boston',
		destination: 'New York',
		cost: 10000,
		containers: 10
	},
	{
		id: 2,
		title: 'Apple Shipment',
		description: 'Ships apples',
		origin: 'Boston',
		destination: 'New York',
		cost: 10000,
		containers: 10
	},
	{
		id: 3,
		title: 'Orange Shipment',
		description: 'Ships oranges',
		origin: 'Boston',
		destination: 'New York',
		cost: 10000,
		containers: 10

	},
	{
		id: 4,
		title: 'Grape Shipment',
		description: 'Ships grapes',
		origin: 'New York',
		destination: 'Boston',
		cost: 20000,
		containers: 20
	},
	{
		id: 5,
		title: 'Strawberry Shipment',
		description: 'Ships strawberries',
		origin: 'New York',
		destination: 'Boston',
		cost: 20000,
		containers: 20
	},
	{
		id: 6,
		title: 'Watermelon Shipment',
		description: 'Ships watermelons',
		origin: 'New York',
		destination: 'Boston',
		cost: 20000,
		containers: 20
	}
])

Assignment.create([
	{
		id: 1,
		boat_id: 1,
		job_id: 1
	},
	{
		id: 2,
		boat_id: 1,
		job_id: 2
	},
	{
		id: 3,
		boat_id: 1,
		job_id: 3
	},
	{
		id: 4,
		boat_id: 2,
		job_id: 4
	},
	{
		id: 5,
		boat_id: 2,
		job_id: 5
	},
	{
		id: 6,
		boat_id: 2,
		job_id: 6
	}
])