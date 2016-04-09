# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# t.string   "name"
# t.string   "month"
# t.string   "day"
# t.integer  "previous_id"
# t.integer  "next_id"
# t.string   "quality"
# t.string   "element"
# t.string   "celestial_body"
# t.string   "info"
# t.string   "strengths"
# t.string   "weaknesses"
# t.string   "most_compatible"
# t.string   "least_compatible"
SunSign.destroy_all
sun_signs = SunSign.create([
		{
			id: 1,
			name: 'Aries',
			month: 'March',
			day: 21,
			previous_id: 2,
			next_id: 12,
			quality: 'Cardinal',
			element:'Fire',
			celestial_body:'Mars (Pluto)',
			info: 'Aries is the fiery pioneer.  Aries is always energetic.',
			strengths: 'Active, Initiating, Leader, Independent, Assertive',
			weaknesses: 'Aggressive, Impatient, Combative, Naive',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 2,
			name: 'Taurus',
			month: 'April',
			day: 20,
			previous_id: 3,
			next_id: 1,
			quality: 'Fixed',
			element:'Earth',
			celestial_body:'Venus',
			info: 'Taurus is sensual physical, and dependable',
			strengths: 'Persevering, Down-to-earth, stable, dependable',
			weaknesses: 'Stubborn, possessive,',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 3,
			name: 'Gemini',
			month: 'May',
			day: 21,
			previous_id: 4,
			next_id: 2,
			quality: 'Mutable',
			element:'Air',
			celestial_body:'Mercury',
			info: 'Gemini is responsive and sociable',
			strengths: 'Intellectual, Adaptable, Social',
			weaknesses: 'Talkative, Superficial',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 4,
			name: 'Cancer',
			month: 'June',
			day: 21,
			previous_id: 5,
			next_id: 3,
			quality: 'Cardinal',
			element:'Water',
			celestial_body:'Moon',
			info: 'Cancer is gentle',
			strengths: 'Gentle, Conservative, Feeling, Nurturing',
			weaknesses: 'Defensive Contemplative',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Aries'
		},
		{
			id: 5,
			name: 'Leo',
			month: 'July',
			day: 23,
			previous_id: 6,
			next_id: 4,
			quality: 'Fixed',
			element:'Fire',
			celestial_body:'Sun',
			info: 'Leo is magnanimous',
			strengths: 'Generous, Hospitable, Caring, Warm, Active, Open',
			weaknesses: 'Authoritative',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 6,
			name: 'Virgo',
			month: 'August',
			day: 21,
			previous_id: 7,
			next_id: 5,
			quality: 'Mutable',
			element:'Earth',
			celestial_body:'Mercury',
			info: 'The analytical Virgo',
			strengths: 'Intelligent, Reserved, Helpful, Conscientous',
			weaknesses: 'Critical',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 7,
			name: 'Libra',
			month: 'September',
			day: 23,
			previous_id: 8,
			next_id: 6,
			quality: 'Cardinal',
			element:'Air',
			celestial_body:'Venus',
			info: 'Just Libra is very accomodating',
			strengths: 'Sociable, refined, Kind, Fair',
			weaknesses: 'Indecisive',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 8,
			name: 'Scorpio',
			month: 'October',
			day: 23,
			previous_id: 9,
			next_id: 7,
			quality: 'Fixed',
			element:'Water',
			celestial_body:'Pluto (Mars)',
			info: 'Passionate Scoprio',
			strengths: 'Perceptive, Resourceful, Fixed, Focused',
			weaknesses: 'Possessive, Prowling, Probing',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 9,
			name: 'Sagittarius',
			month: 'November',
			day: 22,
			previous_id: 10,
			next_id: 8,
			quality: 'Mutable',
			element:'Fire',
			celestial_body:'Jupiter',
			info: 'Sagittarius is Optimistic',
			strengths: 'Enthusiastic, Adventurous, Honest, Independent, Outspoken',
			weaknesses: 'Irresponsible',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 10,
			name: 'Capricorn',
			month: 'December',
			day: 22,
			previous_id: 11,
			next_id: 9,
			quality: 'Cardinal',
			element:'Earth',
			celestial_body:'Saturn',
			info: 'Tenancious Capricorn',
			strengths: 'Conservative, Resourceful, Disciplined, Wise',
			weaknesses: 'Ambitious',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 11,
			name: 'Aquarius',
			month: 'January',
			day: 20,
			previous_id: 12,
			next_id: 10,
			quality: 'Fixed',
			element:'Air',
			celestial_body:'Uranus (Saturn)',
			info: 'Idependent Aquarius is cool and friendly',
			strengths: 'Assertive, Independent, Humanitarian, Inventive',
			weaknesses: 'Eccentric, Opinionated, Detached',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},
		{
			id: 12,
			name: 'Pisces',
			month: 'February',
			day: 19,
			previous_id: 1,
			next_id: 11,
			quality: 'Mutable',
			element:'Water',
			celestial_body:'Neptune (Jupiter)',
			info: 'Intuitive Pisces',
			strengths: 'Dreamy, Artistic, Humane, Sympathetic, Compassionate',
			weaknesses: 'Sensitive, Impressionable',
			most_compatible: 'Leo, Gemini, Sagittarius',
			least_compatible: 'Cancer'
		},

	])