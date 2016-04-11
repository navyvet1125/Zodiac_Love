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
			info: '    Aries, the fiery pioneer kicks off the zodiac with his energetic knightly ways.  He is a defender of the weak and will valiantly give his all for the cause of those he cares about.  Even when others have given up the cause, Aries will continue the fight.
			Aries is ruled by Mars (and Pluto) which is what gives Aries both his aggressive and creative energies.  Aries, particularly  Arien men, are highly competitive, and will fight to win in any arena, be it a corporate setting, a school bake-off, or a boxing ring.  Aries has to win.
			In love, the chase is probably one of the most important things for Aries.  It almost seems as if the joy of overcoming the obstacles is more important than the prize, as oftentimes Aries can become bored and move on as soon as the mystery has ended.
			Keeping a little bit of mystery in the relationship is the best way to keep them entertained and coming back for more.  Arien lovers love nothing more than to put their partners on a pedestal, and will be very romantic.  Like many other signs, Aries demands absolute loyalty (whether one might think it ironic or not), and above all, hates to be criticized.  As the “baby”  of the zodiac, Aries can be a bit brash, sometimes intolerant, selfish, and impulsive at times, but his honesty, openness, courage, and nobility, make up for it in spades.',
			strengths: 'Leader, Energetic, Helps others achieve dreams, Defends the vulnerable, Takes risks for others',
			weaknesses: 'Has to be the boss, Brash, Intolerant, Jealous, Impulsive',
			most_compatible: 'Libra, Leo, Sagittarius',
			least_compatible: 'Scorpio, Virgo, Cancer, Capricorn'
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
			info: '	Calm, patient, methodical.  These are some of the words that best describe a typical Taurus.  Dependable and loyal, Taurus is the kind of person that will always be there when you need a hand.  Taurus values the talents of others, so you can expect to see a Taurus or two in the crowd whenever an event takes place.
			Venus rules the loving bull; imbuing them with a knack for thorough and attentive affection.  Taurean women typically are very loyal to their friends.  Venus also gives Taurus a fondness for peace and security, as well as strong morals.
			In love, Taurus is devoted and steadfast in his or her relationship with a partner.   Taurus may often settle quickly, digging their heels in when they find a suitable partner.  At the same time, however,  Taurean men are often wary of those trying to take advantage of them.  Taurus in general expects his or her partner to be as fully committed as they are, and are not the type to ever forgive a betrayal.
			Taurus is methodical, oftentimes introverted and rarely changing his or her point of view.  As a result of this Taurus is usually in it for the long haul, and will even be willing to weather quite a number of storms.  However, when Taurus has had enough, there is nothing that will change his or her mind, once the decide that it is time to end the relationship.  Their stubborn natures would definitely show in a situation such as this.  Slow moving, stubborn, and quiet; Taurus brings harmony, dependability, and kindness wherever it goes.',
			strengths: 'Persevering, Down-to-earth, stable, dependable',
			weaknesses: 'Stubborn, possessive,',
			most_compatible: 'Scorpio, Virgo, Capricorn',
			least_compatible: 'Libra, Sagittarius'
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
			info: '	Versatile, quick-witted, inventive, highly cerebral are just some of the adjectives one could use to describe the fleet-footed Gemini.  As most people know, Gemini represents duality.  Its sign is that of a pair of twins after all.  This association can be traced back to Gemini\'s celestial ruler: Mercury.
			Mercury, or Hermes in Greek mythology, was the quick footed messenger of the gods.  He was often depicted with wings on his sandals, noting how agile and adaptable he was.  Oftentimes paired with Venus/ Aphrodite; Mercury embodied the duality between the masculine and feminine.
			Mercury was also seen wielding the Caduceus as well: a stick with two snakes intertwined around it.  It symbolizing libido and healing through instinctual knowledge; something that Geminis seem to have in spades.
			In love Gemini will oftentimes appear to be cool and distant, but this is because they are  taking time to think things through before they act.  They are sensitive and open to hurt, thus they expect understanding, faithfulness, sympathy, and tenderness from their partners.
			Gemini also needs a spontaneous partner to keep them entertained, or else they will get bored and will break things off.  It might seem sudden, but they will have been secretly thinking about it for awhile.  Sometimes impatient, irritable, and manipulative, Gemini brings adaptability, intellect, and charm to any relationship.',
			strengths: 'Intellectual, Adaptable, Social',
			weaknesses: 'Talkative, Superficial',
			most_compatible: 'Sagittarius, Libra, Aquarius',
			least_compatible: 'Capricorn, Scorpio'
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
			most_compatible: 'Capricorn, Scorpio, Pisces',
			least_compatible: 'Sagittarius, Aquarius, Aries, Libra'
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
			most_compatible: 'Aquarius, Aries, Sagittarius',
			least_compatible: 'Capricorn, Pisces'
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
			most_compatible: 'Pisces, Taurus, Capricorn',
			least_compatible: 'Aquarius, Aries'
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
			most_compatible: 'Aries, Gemini, Aquarius',
			least_compatible: 'Pisces, Taurus, Capricorn, Cancer'
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
			info: 'Passionate Scorpio',
			strengths: 'Perceptive, Resourceful, Fixed, Focused',
			weaknesses: 'Possessive, Prowling, Probing',
			most_compatible: 'Taurus, Cancer, Pisces',
			least_compatible: 'Aries, Gemini'
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
			most_compatible: 'Gemini, Aries, Leo',
			least_compatible: 'Taurus, Cancer'
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
			most_compatible: 'Cancer, Taurus, Virgo',
			least_compatible: 'Gemini, Leo, Aries, Libra'
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
			most_compatible: 'Leo, Gemini, Libra',
			least_compatible: 'Cancer, Virgo'
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
			most_compatible: 'Virgo, Cancer, Scorpio',
			least_compatible: 'Leo, Libra'
		},

	])