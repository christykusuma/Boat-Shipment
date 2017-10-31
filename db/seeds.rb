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
		password: '1'
	},
	{
		id: 2,
		fname: 'Mahima',
		lname: 'Tuladhar',
		email: 'mtuladhar@gmail.com',
		password: '1'
	}
])

Boat.create([
	{
		id: 1,
		name: 'Twilight',
		containers: 4,
		location: 'Boston',
		user_id: 1
	},
	{
		id: 2,
		name: 'Misty',
		containers: 2,
		location: 'New York',
		user_id: 2
	}
])

Job.create([
	{
		id: 1,
		title: 'Captain',
		description: 'The Captain is essentially the king or queen of the castle, or in this case the floating palace. At the very tip of the hierarchal ladder, he or she is not only the master of the ship but also the human resource manager, the accountant, the administrator, and the judge and jury, responsible for everything from organising visas and vaccinations, to poring over charts and plotting courses, to hiring and managing crew.',
		origin: 'Boston',
		destination: 'New York',
		cost: 35000,
		containers: 4
	},
	{
		id: 2,
		title: 'Mate',
		description: 'A first mate (or first officer) is second in charge to the captain which means he or she must not only be capable of managing the deck crew and all the external operations of a yacht, but also must be able to take control of the situation and the captain’s responsibilities should the situation demand it.',
		origin: 'Boston',
		destination: 'New York',
		cost: 25000,
		containers: 4
	},
	{
		id: 3,
		title: 'Engineer',
		description: 'Just as a yacht’s diesel engines are a largely unseen but vital part of a yacht’s operations so to are the engineers that look after them. However, looking after the engines is only one component of an engineer’s job. Just as important is the upkeep and repair of every other electrical and mechanical device onboard, and onboard every luxury yacht there is certainly no shortage of such equipment.',
		origin: 'Boston',
		destination: 'New York',
		cost: 30000,
		containers: 4

	},
	{
		id: 4,
		title: 'Chef',
		description: 'Like a chef in a five-star establishment, a chef on a luxury yacht broils, steams, fries, chops, mixes, blends and folds creative dishes from a huge array of fresh ingredients, and are as much artisans as they are chefs. However, unlike a chef on land, chefs on luxury yachts have to cook for the same people every day, day in and day out, week after week, for months or even years on end, and continue to impress them.',
		origin: 'Boston',
		destination: 'New York',
		cost: 45000,
		containers: 4
	},
	{
		id: 5,
		title: 'Stewardess',
		description: 'In a broad sense, a steward or stewardess is responsible for looking after the owners, the guest and the interior of the yacht, which basically means tending to every possible need and paying attention to every small detail. This can involve everything from cleaning to cocktail service to organising a theme night or a tour ashore.',
		origin: 'Boston',
		destination: 'New York',
		cost: 25000,
		containers: 4
	},
	{
		id: 6,
		title: 'Deckhand',
		description: 'A deckhand is responsible for maintaining the exterior of a yacht (a job that is as detailed as maintaining the interior of the yacht) as well as maintaining (which often means playing with) the many toys stowed onboard such as jetskis, speedboats and self-propelled mini dive submarines.',
		origin: 'Boston',
		destination: 'New York',
		cost: 22000,
		containers: 4
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
		boat_id: 1,
		job_id: 4
	},
	{
		id: 5,
		boat_id: 1,
		job_id: 5
	},
	{
		id: 6,
		boat_id: 1,
		job_id: 6
	},
	{
		id: 7,
		boat_id: 2,
		job_id: 1
	},
	{
		id: 8,
		boat_id: 2,
		job_id: 2
	},
	{
		id: 9,
		boat_id: 2,
		job_id: 3
	},
	{
		id: 10,
		boat_id: 2,
		job_id: 4
	},
	{
		id: 11,
		boat_id: 2,
		job_id: 5
	},
	{
		id: 12,
		boat_id: 2,
		job_id: 6
	}
])