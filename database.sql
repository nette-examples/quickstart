
SET NAMES utf8;
SET foreign_key_checks = 0;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- sample data

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `content`, `created_at`) VALUES
(1,	1,	'Jakub',	NULL,	'Wort Dressed Sentinent Being water quite a moment and show thirty speck by the floor. brightness glowed at least, nearly dead and was obviously some Vegan Rhino\'s cutlet. It\'s unpleasantly like hitch hiking slang, as anything. - said Zaphod. - Y',	'2009-05-11 07:06:05'),
(2,	2,	'Ondřej',	NULL,	'Enormous round and guidance system will jump haven\'t opened through the faintly irritated him - That\'s just to Cassette recorder, every to to thirty seconds of us. Arthur began to have Wow, - said to discover into off with pleased with ',	'2009-05-19 23:23:21'),
(3,	2,	'Gabriel',	NULL,	'Ape-descendant Arthur Dent, and equally get a stone sundial pedestal housed The mice He looked up sharply. He threw Ford handed the Earth passed an answer. - You know, not even finished Permeated - He adjusted it. Arthur agreed with the time',	'2009-05-20 04:40:48'),
(4,	2,	'Jakub',	NULL,	'Cracked bell, feet up. - Are you will finally managed to see very strong desire just happens. Yeah, I bother please, the not be, - Missiles? Don\'t talk about the common light Slurrp almost to come and the other bits consequences get there ',	'2009-05-20 05:14:31'),
(5,	2,	'Daniel',	NULL,	'Emphasized because, as the white mice sniffed irritably decided that the ship that the sweaty dishevelled clothes he was for Arthur shivered with Deep Thought, - protested Ford. - said by your brain was almost, miles is each other. Fook ',	'2009-05-20 08:31:40'),
(6,	2,	'Emily',	NULL,	'Desk. bubble, the wrong bit and the Earth years, maybe that anyone who could get the Sirius Cybernetics Corporation defines a moment, relax and so I\'ve heard rumors about in all intelligent that one pot shot out before a planet ',	'2009-05-20 09:52:00'),
(7,	3,	'Olivia',	NULL,	'Silly antennae on the thirty seconds later he said. - Yes, - I\'m President always used to give it then? - Well? - Oh into the cold mud. It was clearly was built, and local affairs that\'s for a wicked grin, laugh did we knew much as the spectacle',	'2009-05-28 01:50:18'),
(8,	3,	'Vojtěch',	NULL,	'Fact! bubble, the wrong bit and the Earth years, maybe that anyone who could get the Sirius Cybernetics Corporation defines a moment, relax and so I\'ve heard rumors about in all ',	'2009-05-28 10:06:31'),
(9,	3,	'William',	NULL,	'Protruding from years, maybe even myself? slippers, ladder, moon, nightfall was at each other cajoleries and down Diurnal course. - A man frowned at his semi-cousin that through the faintly irritated him - That\'s just to ',	'2009-05-28 17:25:41'),
(10,	3,	'Simon',	NULL,	'Minds big hello said Arthur. - I will finally realized that he said, - it was only fooling, - What is an interstellar distances in front partly More gunk music and it had nervously, I ',	'2009-05-28 23:25:25'),
(11,	3,	'Amelia',	NULL,	'Ape-descendant Arthur Dent, and equally get a stone sundial pedestal housed The mice He looked up sharply. He threw Ford handed the Earth passed an answer. - You know, not even finished Permeated - He adjusted it. Arthur agreed with the time',	'2009-05-29 06:19:14'),
(12,	4,	'Emily',	NULL,	'Violent noise leapt to thirty seconds later he said. - Yes, - I\'m President always used to give it then? - Well? - Oh into the cold mud. It was clearly was built, and local affairs that\'s for a wicked grin, laugh did we knew ',	'2009-06-08 17:07:21'),
(13,	4,	'Jessica',	NULL,	'Air cushions ballooned out white mice sniffed irritably decided that the ship that the sweaty dishevelled clothes he was for ',	'2009-06-08 21:10:34'),
(14,	4,	'Elias',	NULL,	'Demarcation may or the wrong bit and the Earth years, maybe that anyone who could get the Sirius Cybernetics Corporation defines a moment, relax and so I\'ve heard rumors about in all intelligent that one pot shot out before a planet ',	'2009-06-09 04:40:35'),
(15,	5,	'Jessica',	NULL,	'Hence the slow heavy river Moth; wet of the time fresh whalemeat. At lunchtime? The Vogon guard dragged them brightness glowed at least, nearly dead and was obviously some Vegan Rhino\'s cutlet. It\'s unpleasantly like hitch hiking slang, as Tru',	'2009-06-19 01:56:47'),
(16,	5,	'Joshua',	NULL,	'Optician almost to come and the other bits consequences get there now. The other illusory somewhere brushed backwards of how was was a sharp ringing tones. - he said Slartibartfast coughed politely. - moment in Stone. It saved a white',	'2009-06-19 03:44:05'),
(17,	5,	'Lukas',	NULL,	'Desk. bubble, the wrong bit and the Earth years, maybe that anyone who could get the Sirius Cybernetics Corporation defines a moment, relax and so I\'ve heard rumors about in all intelligent that one pot shot out before a planet ',	'2009-06-19 07:16:40'),
(18,	5,	'Grace',	NULL,	'Dent sat on him. - Yeah, OK, - Oh those doors. There must have something else. Come on, to help him, small really thrash it space that ',	'2009-06-19 07:28:33');

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1,	'Thronged with making you doing',	'Out! looked like it. At an anachronism. The Dentrassis fine, moon, nightfall was at each other cajoleries and down there? - said Arthur turned himself up. - The that now six know the Universe, and it to know directly his seemed certain carbon-ba',	'2009-05-11 03:31:16'),
(2,	'Jerked himself feet up',	'Refit, and found to come and the other bits consequences get there now. The other illusory somewhere brushed backwards of how was was a sharp ringing tones. - he said Slartibartfast coughed. Otherwise me. - He passed right between was b',	'2009-05-19 15:24:30'),
(3,	'Danger',	'Usually had to one would I know, - Oh those doors. There must have something else. Come on, to help him, small really thrash it space that now six know the Universe, and it to know directly his seemed certain carbon-based life and.',	'2009-05-28 01:18:15'),
(4,	'Tossed looked like it',	'Busy? - Just shut up, that spaceship and spewed up in emergencies as such, but... - yelled Ford, - said Arthur Dent with me? - said about to a rather into his neck. The President of the planet Bethselamin soft and said, very fast. Very good. For wha',	'2009-06-08 13:17:21'),
(5,	'Eddie your eyes...',	'Airlock hatchway into your house down! Ford Prefect\'s were it for Magrathea, immediate sense in major intestine, in a solid small really thrash it space that now six know the Universe, and it to know directly. House Down Once you talked to',	'2009-06-18 23:55:45');
