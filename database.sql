
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

INSERT INTO posts (id, title, content, created_at) VALUES
(1, 'Discovering the Eccentric Vogons', 'Vogons are known not just for their bureaucratic obsession but also for their dreadful poetry. This post explores the peculiar culture of Vogons, their love for paperwork, and why they are considered the third worst poets in the Universe.', '2008-05-01 12:00:00'),
(2, 'The Secrets of the Pan Galactic Gargle Blaster', 'The Pan Galactic Gargle Blaster is known as the best drink in existence. This post delves into its zesty components, the effects of its consumption, and why it should be drunk with caution. Remember, the effect is similar to having your brains smashed out by a slice of lemon wrapped round a large gold brick.', '2008-04-01 12:00:00'),
(3, 'Marvin’s Guide to Coping with Existence', 'Life? Don’t talk to me about life! This post explores Marvin the Paranoid Android’s views on existence, detailing his journey through space with his depressingly funny insights and why his processors ache so much.', '2008-03-01 12:00:00'),
(4, 'Exploring the Infinite Improbability Drive', 'The Infinite Improbability Drive is a wonderful new method of crossing vast interstellar distances in a mere nothingth of a second without all that tedious mucking about in hyperspace. This post explains how this remarkable technology works and the bizarre occurrences that happen when it’s activated.', '2008-06-01 12:00:00'),
(5, 'Why Earth is Mostly Harmless', 'According to "The Hitchhiker’s Guide to the Galaxy", Earth is described as mostly harmless. This post examines what led to such a minimalistic description and what implications it might have for future intergalactic hitchhikers looking for a quick guide to the galaxy.', '2008-02-01 12:00:00');

INSERT INTO comments (post_id, name, email, content, created_at) VALUES
(1, 'Zaphod Beeblebrox', NULL, 'Never could get the hang of Vogons. Tried to party with them once, but all they wanted to do was file reports. What a snooze fest!', '2008-06-15 14:23:52'),
(1, 'Arthur Dent', NULL, 'I had a particularly dreadful encounter with a Vogon poem once. It was worse than being strapped to a mind-evaporating machine. The horror!', '2008-08-20 09:17:31'),
(1, 'Ford Prefect', NULL, 'Vogons might have their quirks, but you have to admit, they’re remarkably consistent. Consistently terrible, but consistent nonetheless.', '2009-02-11 22:30:45'),
(2, 'Trillian', NULL, 'One should be cautious with the Pan Galactic Gargle Blaster. It’s not for the faint-hearted. I prefer something less... explosive.', '2008-05-23 18:45:19'),
(2, 'Arthur Dent', NULL, 'Tried it once, thought I was a sofa for a week. Never again.', '2009-07-08 16:54:07'),
(2, 'Ford Prefect', NULL, 'If you want to understand the universe, start with a Pan Galactic Gargle Blaster. Or end with one. Either way, it’s a profound experience.', '2008-12-30 20:11:53'),
(3, 'Slartibartfast', NULL, 'Poor Marvin, I do feel for him sometimes. But then I remember it’s better him than me!', '2008-04-14 12:22:33'),
(3, 'Zaphod Beeblebrox', NULL, 'Marvin’s got the best understanding of life. Always expect the worst, and you’ll never be disappointed!', '2009-05-19 14:33:21'),
(3, 'Trillian', NULL, 'It’s quite sad, really. If Marvin were a planet, he’d be the rainiest one in the solar system.', '2008-11-23 09:45:12'),
(3, 'Arthur Dent', NULL, 'Sometimes I think Marvin secretly enjoys his misery. It’s what keeps him charged.', '2009-08-17 11:37:08'),
(4, 'Arthur Dent', NULL, 'The first time we used the Infinite Improbability Drive, I turned into a penguin. It’s hard to operate a spaceship with flippers, let me tell you.', '2008-07-30 10:27:43'),
(4, 'Ford Prefect', NULL, 'I love the unpredictability of the Improbability Drive. It’s like throwing caution to the wind, but with quantum physics!', '2009-03-26 13:12:59'),
(4, 'Zaphod Beeblebrox', NULL, 'The best part about the Drive is that it’s completely safe. Well, mostly. Okay, sometimes. Alright, at least it’s not boring!', '2009-01-15 15:01:22'),
(5, 'Trillian', NULL, 'Mostly harmless? More like mostly ignored. Earth has its charms, but they’re subtle and often missed by the galactic crowd.', '2008-03-29 08:21:34'),
(5, 'Slartibartfast', NULL, 'I’ve always had a soft spot for Earth. The fjords I designed are particularly delightful. It’s a shame not many appreciate the effort.', '2008-10-18 17:14:19'),
(5, 'Marvin', NULL, 'Harmless? I’ve seen more action there than in most places. It’s the boredom that’s harmful, trust me.', '2009-04-25 19:58:11'),
(5, 'Ford Prefect', NULL, 'It’s the quiet ones you have to watch. Earth might seem harmless, but it’s full of surprises.', '2009-07-03 22:33:47');
