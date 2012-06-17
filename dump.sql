-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2012 at 07:56 PM
-- Server version: 5.1.63
-- PHP Version: 5.3.6-13ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `web_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `user_id`, `title`, `description`, `image`, `category`) VALUES
(1, 99, 'Casa Becca del Rio', 'I build this river cabin over a period of 11 months from 2005-2006. With the exception of the cement work and metal roofing which I contracted, my wife and I build the entire cabin by ourselves. I used a Bostich nailer for all the framing. The rest of the entire cabin was built using Ryobi tools. Band saw, drill press, table saw, disk/belt sander, and hand belt sander corded tools. One + tools: drills (3), impact driver, circular saws (2), stapler, rotary cutter, laminate trimmer, miter saw, hand planer, hammer drill, jig saw, orbit sander, angle grinder, caulk gun, close quarter drill, reciprocating saw and dozens of batteries. All of the interior finish work, much of the interior furniture and all the kitchen cabinets were also part of this effort and done with Ryobi tools. I worked 12 hour days, 6 days per week for 9 months. (I took 2 months off in late 2005 to work as a volunteer in the Gulf after hurricane Katrina as an EMT). Your "Hours to complete" box only allows 3 digits - I estimate 2600 hours.', '431', 'outdoors'),
(2, 99, 'Walk-In Closet', 'After years of vying for closet space, I decided to use an attached spare room to build my wife her own walk-in closet. Using Birch Plywood and hardware purchased from Home Depot, Poplar Mouldings and my Ryobi Tools (Biscuit Joiner, Cordless Drill/Driver, Circular Saw, Router and Table), I crafted this walk-in closet to her every need. It includes ample hanging rods for short and full length clothing, drawers, shelves for baskets and sweaters, pull-out hanging rods for outfits, pull-out racks for belts/scarves, and her favorite, many shoe shelves for boots, sneakers and dress shoes. A future vanity is planned with drawers for makeup and jewelry. I don''t know who is happier, her with her new closet or me with the old one to myself.', '47', 'bedroom'),
(3, 99, 'Wood Wall', 'This wall is made from scrap wood, but could be made from any type of wood. I used various lengths of 2×4s ripped in thicknesses from 1/4 to 1in. I put all the pieces through the thickness planer to get one smooth side and gave them a walnut stain. The pieces were then randomly attached to the wall with hot-melt glue. The project was not much fun to do, but I like the result ;) The Ryobi tool used for this project was: Ryobi 10 in. tablesaw - RTS10', '478', 'bedroom'),
(4, 99, 'Pergola', 'My Wife wanted a place to display her Bonsai and Orchids collection, so I designed and built (With my Father''s help) a Pergola in my back yard in March 2008. We used my RYOBI 12 inch Miter Saw (TS1553DXL), P510 Reciprocating Saw, P230 Impact Driver and a P201 Drill-Driver. It took us about 2 days (16 hours). It turned out great and we still enjoy it every day.', '169', 'outdoors'),
(5, 99, 'Strip Canoe', 'This canoe is 16 ft. in length. It is not built from a kit. I bought redwood and machined the strips 1/4th x 3/4s inches, cut cove & bead. Fiber glass and epoxy inside and out. The seats are hand woven cane. The project took three months to complete. Some time ago I bought a four pc. Ryobi set at Home Depot, and have added some pieces and extra batteries since. I really like being able to use the same battery on different tools. I gave it to my grand daughter in Florida, They say they can''t get anywhere because people keep stopping them to make pictures.', '490', 'kids'),
(6, 99, 'Potting Bench', 'using nothing but the skill saw, screw driver and drill; i was able to knock this off of my honey-do list in a few days. I really enjoy using my Ryobi battery operated tools.', '375', 'outdoors'),
(7, 99, 'Chalk Board - Cork Board', 'Made these for my granddaughters room. Turned out great thanks to my arsenal of Ryobi tools. All of the parents that see them want to know where they can get them.', '249', 'kids'),
(8, 2, 'Front Decks and Chairs', 'Well, at certain times during the year we are able to see the sunset into the Pacific ocean from our front stoop. Unfortunately, their was no room for a seat so we would have to stand and watch. Last summer I decided to rip out a old neglected flower bed and replace it with this deck and oversized chairs. Now we can watch the sunset while sipping our favorite adult beverages with plenty of room to strech out. I wouldn''t have been able to do it without my RYOBI tools. We enjoy our deck and chairs throughout the year. We find that since it''s in the front yard it also allows us to keep up with the neighbors and happenings in the hood. Thanks RYOBI.', '218', 'outdoors'),
(9, 99, 'Christmas Reindeer', 'We moved into our newly built house the week before Christmas 2010 so we really didn''t have a lot of time to get decorated aside from a tree. This year I decided to buy my first wood pattern and use my Ryobi Orbital Scrolling jigsaw to make a pair of Christmas Reindeer for the front of the house. Both were cut from a single sheet of 1/4 plywood, sanded with my Ryobi Sheet Sander and then painted white. They give the house an elegant touch at Christmas and were extremely easy to make with my Ryobi tools!', '338', 'outdoors'),
(10, 99, 'Restored RC Plane', 'Found a P-39 Airacobra at a garage sale. Took a couple of months to restore and convert to electric power. So it now also runs on Lithium-ion batteries, not 18 Volt Ryobis though. Used the JobPlus multitool quite a bit especially for cutting and sanding in tight spaces.', '514', 'kids'),
(11, 99, 'Wooden Gate', 'It was just a gate, but a labor of love. I wanted to replace a well-made gate that had been beaten by the wind when its latch system failed and it just flopped back and forth. I had to design and build an equally well-made gate without the latch issues. With my Ryobi ONE+ tools I went to work. I used the circular saw to cut the pieces for the frame, the drill to make pocket holes and assemble the frame in a hidden fastener manner. I used the jig saw to cut the arc on the gate that I assemble using pocket holes so that the fasteners would be hidden by the frame. I pre-drilled and countersunk the holes for the stainless steel screws that I used to attach the frame to the gate body. I beveled the new posts with the circular saw for detail and positioned and drilled the holes in the posts to use the existing bolts in the stone wall. I orbital sanded all the pieces and painted them with combo paint and primer. I assembled the gate and posts with decorative stainless steel screws. I attached the specialty ordered lever door hardware and creatively conceived door stop to keep it from flopping open too far, and installed the new gate. I took my time and probably spent more than 40 hours on the project but I accomplished my goal. I have a new well-made gate and I know it closes like a door and won’t have any latch problems again.', '484', 'outdoors'),
(12, 99, 'Cradle', 'Walnut cradle. Made for my great grand child.', '510', 'kids'),
(13, 99, 'Kitchen Remodel', 'My wife and I purchased a house that was in need of some work. Room by room, we have remodeled the entire house. The kitchen was the largest-scale and most expensive of the projects, by far. We removed the soffits to install new cabinets with additional space. We removed the old built-in oven and replaced it with a range to make more efficient use of space, while removing the stove cook-top from the center island so that we now have a large food preparation surface in the middle of the room. My Ryobi tools came in useful, as did the lithium batteries, for a project of this scale: the reciprocal saw and spiral saw for demolition, the circular saw to and jigsaw to build framing for the bar-height center island addition, autoshift drill for mixing mortar and thinset, and the drill and impact driver for assembling and installing cabinets. With many electrical lines having to be re-routed, very often the electricity in the kitchen was disabled, so conventional power tools were not an option. My Ryobi 18 Volt One+ cordless tools performed great! We are extremely happy with how the kitchen turned out, as we now have a much more useful space to prepare and enjoy our meals, and for frequent entertaining.', '322', 'kitchen'),
(14, 99, 'Surviving the 70s', 'In 2011 I married my wonderful wife, moved to Colorado, acquired a part-time job, bought a house... and remodeled some of our house. Before I mention what we did, I have to thank my father-in-law who has built his entire house with the use of Ryobi tools, helped me and taught me everything I know and who allowed me to use all of his Ryobi tools. We purchased a house built in 1977 which needed some serious updates. There was wall-paper everywhere! A lowered kitchen ceiling with fluorescent bulbs, and bathrooms that still had foam toilet seats, not to mention 3 undiscovered water leaks. The first thing we did was the kitchen, raised the ceiling, new drywall, new upper cabinets, and new lighting. We used Ryobi for everything! From the reciprocating saw, circular saw, multiple drills, and even the flashlight. The bathrooms were the same story replacing all hardware, tearing out the shower, new cement board and new tile everywhere. All the tools worked great and they never let us down. Now I need to work on the basement and see if I can make me a man-cave. Best thing i got this Christmas was the combo of the regular drill and the impact driver. The impact driver is AMAZING! I''m using it in the basement and sure wish I had it in the kitchen remodel Thanks Ryobi your tools are helping me make my house a home.', '297', 'kitchen'),
(15, 99, 'Kitchen Expansion and Renovation', 'We expanded off the back of our house to add more area to our kitchen and a little bit to the family room. A hired contractor took us to rough-in, then I took over to add drywall, paint, new floors, cabinetry, and accessories. It turned out fantastic. The added space really fits our needs better. We have more room, more cabinets, and a some office space (that frees up a bedroom). Most friends cannot believe I did all the finish work.', '129', 'kitchen'),
(16, 99, 'Kitchen Renovation', 'I moved into my first house back in 2001. My wife and I thought we would be able to slowly take care of things one by one. The first project we attacked was our kitchen. It was the original kitchen back from 1959. Appliances and all. We ripped up the floor and demo the entire kitchen using Riobi tools. That includes a miter saw, various cordless drills, paint sprayer, sawzall, etc. Install new plywood and ceramic tiles. Installed barnd new wood cabinets and new appliances. We were pleasantly surprised that the cordless Riobi drills were able to handle screwing in 4" screws to mount cabinets to the back walls into wood 2"x4" studs. Also suprised that the Riobi drills were able to last without charge to screw the cabinets together. Yes we only have a small kitchen but using the cordless tools from Riobi to install the plywood to the floor and the cabinets made this project that much easier.', '15', 'kitchen'),
(17, 99, 'Kitchen Revamp', 'When my wife and I bought our first home. We had to buy a "fixer upper" that was within our price range. We have just about changed everything in our home now, but the first thing we noticed on our home that needed fixing was the tiny cramped washed out plain kitchen, and so that was our first project with Ryobi in our home.', '395', 'kitchen'),
(18, 2, 'Get it right the first time!', 'My Brother asked me to renovate his house into an apartment. This was a disaster. I needed tools & decided to purchase the Ryobi One + Green tools. A simple Remodel job quickly turned into a real challenge. I choose the radio charger so that I could charge my phone and listen to music all while charging my batteries as you will see by my many pictures I purchased all the new Ryobi One + tools and as you will see my project came out perfect. A specific note the Reciprocating Saw to remove the Old radiator heaters and all the old thick water piping. This tool was by far the BEST priced tool of them all and the battery p104 held up well. The all tool cut in the door jams & trim hard to reach flooring areas, and cut in outlets and trim excessive plumbing, I liked the built in overheating sensor as it worked well. I gotta say I really do feel the difference in the soft oversized rubber grips. Very comfortable. The bright greenish color makes the job fun and enjoyable especially while jamming out to MP3''s on my phone via the built in connection. I have provided all my bragging pictures from start to finish. Hope you like them! PS: a special thanks to Ryobi for taking the time to develop tools for the budget minded home owner and going the extra mile to include comfort and still have the quality that made Ryobi the BEST choice in 18V Lithium Ion battery Tools. This was a project that my wife and I were the only to people that completed this project part time in about 40 hrs.', '396', 'kitchen'),
(19, 1, 'Club House', 'It took about 80 hrs. to complete. It is a club house that I built for my two kids and the Ryobi tools really made it a lot easier for me to accomplish this project.', '258', 'kids'),
(20, 1, 'Bamboo BBQ Table', 'I had just bought a ceramic BBQ Grill, but did not like the stand or table options from the store. So, I decided to make my own using bamboo hardwood flooring that was left over from a 2nd floor home renovation (another ryobi tool project). The grill manufacturer provided a basic diagram for its grill tables, and I modified it to match my needs. My local stone&tile store provided me with the extra-thick slate to hold the grill and absorb the heat on the bottom. All the work was done with my trusty Ryobi tools: 2 Drills, Orbital jig saw, Rotary cutter, Circular saw, Reciprocating saw, and Miter saw. My Ryobi handvac was also handy during cleanup. It was an awesome DIY project that wasn''t too difficult, as long as you have the right tools.', '397', 'outdoors');

-- --------------------------------------------------------

--
-- Table structure for table `inspirations_entries_users`
--

CREATE TABLE IF NOT EXISTS `inspirations_entries_users` (
  `entry_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  KEY `entry_id` (`entry_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inspirations_entries_users`
--

INSERT INTO `inspirations_entries_users` (`entry_id`, `user_id`) VALUES
(6, 1),
(13, 1),
(14, 1),
(15, 1),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Lorenzo Pisani', 'zeelot3k@gmail.com'),
(2, 'Valentin Smirnoff', 'valentin@tinypay.me');
