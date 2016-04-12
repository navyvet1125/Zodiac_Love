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
			info: 'Aries, the fiery pioneer kicks off the zodiac with his energetic knightly ways.  He is a defender of the weak and will valiantly give his all for the cause of those he cares about.  Even when others have given up the cause, Aries will continue the fight. @@@Aries is ruled by Mars (and Pluto) which is what gives Aries both his aggressive and creative energies.  Aries, particularly  Arian men, are highly competitive, and will fight to win in any arena, be it a corporate setting, a school bake-off, or a boxing ring.  Aries has to win.@@@In love, the chase is probably one of the most important things for Aries.  It almost seems as if the joy of overcoming the obstacles is more important than the prize, as oftentimes Aries can become bored and move on as soon as the mystery has ended.@@@Keeping a little bit of mystery in the relationship is the best way to keep them entertained and coming back for more.  Arian lovers love nothing more than to put their partners on a pedestal, and will be very romantic.  Like many other signs, Aries demands absolute loyalty (whether one might think it ironic or not), and above all, hates to be criticized.  As the “baby”  of the zodiac, Aries can be a bit brash, sometimes intolerant, selfish, and impulsive at times, but his honesty, openness, courage, and nobility, make up for it in spades.',
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
			info: 'Calm, patient, methodical.  These are some of the words that best describe a typical Taurus.  Dependable and loyal, Taurus is the kind of person that will always be there when you need a hand.  Taurus values the talents of others, so you can expect to see a Taurus or two in the crowd whenever an event takes place.@@@Venus rules the loving bull; imbuing them with a knack for thorough and attentive affection.  Taurean women typically are very loyal to their friends.  Venus also gives Taurus a fondness for peace and security, as well as strong morals.@@@In love, Taurus is devoted and steadfast in his or her relationship with a partner.   Taurus may often settle quickly, digging their heels in when they find a suitable partner.  At the same time, however,  Taurean men are often wary of those trying to take advantage of them.  Taurus in general expects his or her partner to be as fully committed as they are, and are not the type to ever forgive a betrayal.@@@Taurus is methodical, oftentimes introverted and rarely changing his or her point of view.  As a result of this Taurus is usually in it for the long haul, and will even be willing to weather quite a number of storms.  However, when Taurus has had enough, there is nothing that will change his or her mind, once the decide that it is time to end the relationship.  Their stubborn natures would definitely show in a situation such as this.  Slow moving, stubborn, and quiet; Taurus brings harmony, dependability, and kindness wherever it goes.',
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
			info: 'Versatile, quick-witted, inventive, highly cerebral are just some of the adjectives one could use to describe the fleet-footed Gemini.  As most people know, Gemini represents duality.  Its sign is that of a pair of twins after all.  This association can be traced back to Gemini\'s celestial ruler: Mercury.@@@Mercury, or Hermes in Greek mythology, was the quick footed messenger of the gods.  He was often depicted with wings on his sandals, noting how agile and adaptable he was.  Oftentimes paired with Venus/ Aphrodite; Mercury embodied the duality between the masculine and feminine.@@@Mercury was also seen wielding the Caduceus as well: a stick with two snakes intertwined around it.  It symbolizing libido and healing through instinctual knowledge; something that Geminis seem to have in spades.@@@In love Gemini will oftentimes appear to be cool and distant, but this is because they are  taking time to think things through before they act.  They are sensitive and open to hurt, thus they expect understanding, faithfulness, sympathy, and tenderness from their partners.@@@Gemini also needs a spontaneous partner to keep them entertained, or else they will get bored and will break things off.  It might seem sudden, but they will have been secretly thinking about it for awhile.  Sometimes impatient, irritable, and manipulative, Gemini brings adaptability, intellect, and charm to any relationship.',
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
			info: 'Like a welcomed port after a storm, Cancer shines for its kind and compassionate motherliness.  Like any good mother, Cancer is shrewd, intuitive, helpful, caring, protective, and tenacious.  She is patient and subtle, not impulsive by any stretch of the imagination.@@@	Ruled by the Moon, Cancer is one of the two signs not be ruled by a planet or dwarf planet (Pluto as of 2006).  This presents Cancer with very unique characteristics.  Much like how the moon absorbs and reflects the light of the Sun to the Earth, so too does Cancer absorb and reflect the entire spectrum of emotions.  Cancer also goes through moods like the moon goes through phases.@@@In love, Cancer rarely moves first, usually due to a fear of rejection.  Cancer does repond to warmth and affection, however.  Both men and women of Cancer desire security, though men of this sign seem to be more open about wanting kids.   Cancer expects to be loved forever, to be needed as a pillar of strength, and for family to come first.@@@If Cancer starts to feel unloved, then they can become clingy.  In fact they may continue to get more clingy as the relationship continues to deteriorate.  Cancer seems to value the security of the relationship, more than the health of the relationship, continuing to stay in an unfruitful relationship.  Moody, crabby, and possessive, Cancer brings protection, sentiment, and sensitivity to the mix.',
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
			info: 'Like the warm sun on a perfect day, Leo shines forth, welcoming all to bask in his glow.  Honest and loyal Leo, always has a sunny disposition.  He is often friendly, kind, generous, and responsible.  Leo has an inner drive to be the king and rightly so: his celestial ruler is the Sun itself.@@@	The only other sign to not be ruled by a planet(or dwarf planet Pluto) besides the moon ruled Cancer, Leo stands out because he is the only one ruled by a friggin\' star.  This benefit gives Leo a source of warmth and joy that makes friends and family feel like they have been wrapped in love by the sun itself.  This does have an unintentional side effect, however, as Leos may expect the world to revolve around him.@@@In love Leos like to be very romantic.  Their regal and noble natures lend tp their partners feeling like they may be kings or queens in their own right.  Leos are also willing to make sacrifices for their partners.  Men and women of this sign both like to show off, are trusting and loyal, and use their respective charms and courtesy to get what they want.  They expect the royal treatment and to be seen as special, and enviable.@@@With Leo, it is important to keep the fires of the relationship burning, or else they can quickly turn cold.  This doesn\'t mean that Leo will immediately leave, however, as it is their pride that will keep them there after the fire has gone out, but that doesn\'t mean that they will make staying with them easy when that happens.  Of course if you leave a Leo first, then it will shatter their pride and leave them broken.  Stubborn and arrogant.  Honest and loyal; Leo definitely knows how to light up a room.',
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
			info: 'If Virgo had a mantra it would be: “Altruistic, Sympathetic, Humane”.  If Virgo had a second one, it would be: “Organized, Dedicated, Helpful”  Virgo is the emotionally warm Florence Nightingale of the zodiac.  They are not happy and fulfilled unless they are helping others heal in some way shape or form.  They are hard workers, making great painstaking efforts to get their chosen occupation accomplished.@@@Like the nimble Gemini, Virgo is ruled by the fleet-footed Mercury.  Virgo is also blessed with a quick mind and great curiosity.  However, unlike Gemini, Virgo is very much practical where Gemini is idealistic.  Ever curious Virgo is also a great communicator.@@@Virgo men have a passion for the work they do.  They are extremely responsible, often subtle, and are very practical, yet oftentimes are very unsentimental.  Virgo women are accurately analytical, pure in mind (but not naïve), and are equally devoted to their chosen fields.@@@In love, Virgo desire quality.  They are devoted lovers that will do anything to avoid a breakup.  They do tend to shy away from overt romance.  Virgo also expects devotion from their partners, a sense of decency, and a respect for privacy.  Virgos do enjoy stability, and as previously stated will go out of their way to stave off a breakup, but they are creatures of practicality.  A Virgo will not hesitate to make a clean break should their partner violate Virgo\'s practical sense of fair play.  Critical and dogmatic, Virgo will heal you with their gentle and compassionate warmth.',
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
			info: 'Quite adept with money, Libra is quite a catch.  Cooperative and artistic is a gentle peacemaker.  Libra is also quite the refined charmer as well.  All thanks to Libra\'s celestial ruler: Venus.@@@Men of this sign like to make a visual impression appropriate for the task at hand.  They enjoy art and need harmony.  Women on the sign are very aware of their looks.  They tend to take care of their bodies, and seek to create a beautiful and harmonious home.@@@In love, Libra is usually easy going.  He or she usually enjoys romantic settings.  They usually  ignore their partner\'s shortcomings, and strive to not do anything to hurt their loved ones.@@@Did I mention money?  Men of the sign tend to be very lavish with money.  They are refined and usually financial able.  However, Libras expect to be amused.  They also expect faithfulness, loyalty, to be cared for and supported, yet free to do their job.  Libras will go after wayward partners but will reject emotionally demanding people.  Flirtatious and often narcissistic, Libra brings refinement and sophistication to any relationship.',
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
			info: 'So many words can be used to describe the complexity that is Scorpio.  They are quite dynamic and magnetic.  They can be your best friend, but if you cross them, they can become your worst enemy.  The reason for this is in Scorpios\' celestial rulers.  They get more than one.@@@Scorpio is ruled first by Pluto and then by Mars, the exact opposite from Aries.  Scorpio inherits Pluto\'s hidden depths, and Mars\' battling energy.  The result is a sign that can be very thoughtful and contemplative without anyone else being the wiser. @@@ Men and women of this sign are never self-effacing.  They always maintain their dignity, but they never seem to forget.  This is why their machinations often go unnoticed until it is too late.@@@In love, Scorpio is deeply attached and faithful.  They don\'t stray unless there is a serious problem in the relationship.  They remain true their feelings, though they may tend to be possessive and may dominate their loved one.  Secretive and cunning, Scorpio brings a magnetic protective influence into whatever relationship he or she is in.@@@...Just don\'t cross \'em...',
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
			info: 'Open, honest, and carefree are some of the refreshing characteristics of a Sagittarius.  Always enthusiastic, Sagittarius is a carefree sign.  While Sagittarius will not typically hold a grudge, as it is too much of a burden, Sagittarius will be very frank with you, due to his or her honest nature.@@@Sagittarius is ruled by expansive Jupiter.  The planet lends a pleasure loving and benevolent side to the archer.  It also imbues him or her with a strong sense of justice.  This combined with the Sagitarrian\'s frank nature means that if you cross a line, you will hear about it.@@@In love Sagittarius enjoys love on the move in foreign places.  This is due to Sag\'s mutable quality, which like all mutable signs, makes them more adaptable.  The fire within them, on the other hand adds a sort of restless quality to them as well.  They are happy in love, very generous and good-natured, and are quite happy when they are loved.@@@On the other hand, a Sagittarius expects to not be tied down, and expects a lot of freedom in movement.  They are honest creatures, so they want honesty in return as this helps them feel more secure in love.  Restless and indulgent, Sagittarius brings an enthusiastic and open-minded spirituality to the any relationship.',
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
			info: 'Capricorn, the serious one, is all about hard work and tradition.  They are good organizers with high standards.  They are cautious and realistic.  To them, it is all about getting the job done right.@@@Ruled by Saturn, they take things seriously.  This is due to Saturn\'s association with long life, wisdom, caution, and searching and overcoming fears.  Their earthen nature lends a sort of stillness and  caution:  they want to be absolutely sure before the decide on anything.  Their cardinal quality, on the other hand, means that once they decide on a thing, they are all in!  This is true about every aspect of Capricorn, including love.@@@In love, Capricorn will only say "I love you" when they mean it, and don\'t have any problem repeating it.  They are slow to make an approach, waiting for confirmation to be sure they wont be rejected.  Since they are all about business (like fellow earthen sign Virgo), they aren\'t the type to flirt for fun.  In a partnership, Capricorn is very caring, considerate, and committed to his or her partner.@@@Capricorn expects faithfulness, respect of privacy, and to be taken seriously.  If a partner betrays them, they may give a second chance, but if it happens again there will be hell to pay.  Capricorn is also as slow to move out of a relationship as they are to get in one in the first place.  Be careful though, because once the decision has been made, they put all the have into it.  Perfectionistic, anxious, and unforgiving; Capricorn brings loyalty, persistence, and sensitivity to the the table.',
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
			info: 'Thoughtful and caring, Aquarius is quite friendly.  Loyal and cooperative, they enjoy being surrounded by a group of friends. Aquarians are often concerned and deeply involved with their communities, are accepting of peoples differences, and are known to be peacemakers from time to time.@@@Aquarius\' celestial bodies are Uranus and Saturn.  Uranus lends a unique quality to Aquarius as it is the planet of the unusual and unexpected.  This combined with Saturn\'s influences of applied wisdom and forward planning are where we can see what makes the perpetual life of the party tick.@@@In love Aquarians want a genuine friendship with their partners.  They do value their independence, so naturally they are leery of deep emotional involvements.  They expect loyalty and faithfulness, as well as understanding and tolerance of their unusual and unexpected quirks.  They are the kind who want to roam, but want a partner to take care of home.@@@Always devoted until curiosity strikes again, Aquarius values freedom above all else.  Even if a relationship ends, they still want to be friends with their exes.  Tactless and self-interested, Aquarius brings inventive, loyal friendship, and an intense interest in their partner.  Have fun!',
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
			info: 'Intuitive Pisces rounds out the zodiac, with a very loving and caring attitude.  A typical Piscean is compassionate, and understanding of others.  Highly empathic, they can hone in and feel exactly how someone else is feeling.@@@Jupiter and Neptune are what really brings out the noble qualities of the sign.  Jupiter\'s expansiveness, optimism, and generosity pairs with Neptune\'s sensitivity and surreal and unconscious depth to create one of the most trusting signs.  It is certainly quite the warm and sympathetic sign.@@@In love Pisces is very romantic and eager to please.  It adapts very well to the demands of the relationship (due to its mutable quality).  Oftentimes a Pisces will appear to be helpless, delicate, and vulnerable, which can certainly invoke protective feelings in other signs (particularly the other water signs).@@@For all its amazing qualities, Pisces does have to watch out.  Pisces isn\'t grounded, so there is a constant risk of being overwhelmed by the emotions of others.  Oftentimes Pisces trusting nature can quickly become gullibility.  If things get tough, Pisces might escape into its surreal depths to avoid the problems in real world.  Pisces expect to be free from harsh criticism, demand remembrance of birthdays and anniversaries, and need frequent reassurance and constant care romantically.  Escapist and sensationalist, Pisces brings sweet romance, creative energy, and mystery wherever they go.',
			strengths: 'Dreamy, Artistic, Humane, Sympathetic, Compassionate',
			weaknesses: 'Sensitive, Impressionable',
			most_compatible: 'Virgo, Cancer, Scorpio',
			least_compatible: 'Leo, Libra'
		},

	])

	# First_name
	# Last_name
	# User_name
	# Email
	# Born_on
	# profile_title
	# Profile_info
	# Sun_sign_id
	# Password_digest

user = User.new(
	{
		first_name: 'Evan',
		last_name: 'Washington',
		user_name: 'Navyvet1125',
		email: 'enavy04@gmail.com',
		born_on: 'March 30, 1982',
		profile_title: 'User admin guy',
		profile_info: 'I\'m the man!',
		sun_sign_id: SunSign.first
	})
user.sun_sign = SunSign.first
user.save
puts "#{user.first_name}'s Sun Sign is #{user.sun_sign.name}."