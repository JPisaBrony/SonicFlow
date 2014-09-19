DROP TABLE IF EXISTS queue,songs,albums, artists,users,queuetimes;

/* artistid, name */
CREATE TABLE IF NOT EXISTS artists (
	id	integer PRIMARY KEY,
	name		varchar(255)
);

/* albumid, name, artistid, art */
CREATE TABLE IF NOT EXISTS albums (
	id		integer PRIMARY KEY,
	name		varchar(255),
	artistid	integer references artists(id),
	location	varchar(255)
);

/* songid, title, albumid */
CREATE TABLE IF NOT EXISTS songs (
	id	integer PRIMARY KEY,
	title	varchar(255),
	albumid	integer references albums(id),
	duration integer,
	popularity integer,
	track	integer
);

/* id, songid */
CREATE TABLE IF NOT EXISTS queue (
	id	SERIAL PRIMARY KEY,
	songid	integer references songs(id),
	cached  integer
);

/* uid, lastqueued */
CREATE TABLE IF NOT EXISTS users (
	id		integer PRIMARY KEY,
	lastqueued	integer
);

/* songid, lastqueued, uid */
CREATE TABLE IF NOT EXISTS queuetimes (
	songid		integer PRIMARY KEY references songs(id),
	lastqueued	integer NOT NULL,
	uid		integer references users(id)
);


TRUNCATE TABLE artists    CASCADE;
TRUNCATE TABLE albums     CASCADE;
TRUNCATE TABLE songs      CASCADE;
TRUNCATE TABLE queue      CASCADE;
TRUNCATE TABLE users      CASCADE;
TRUNCATE TABLE queuetimes CASCADE;
