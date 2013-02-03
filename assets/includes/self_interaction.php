<?php

/**
 * Contains functions for interacting with data on the Sonic Flow data server.
 */
 
/**
 * Gets song matches from the Sonic Flow song ID database.
 *
 * @param search The phrase that is being searched for. Typically contains
 * the song, artist, and/or album.
 *
 * @return An array containing all of the song objects that matched the search
 * phrase.
 */
function getSonicFlowResults($search) {
	// TODO: Actually query the database.
	// This is a sample function that doesn't yet actually do anything.
	$results = array();
	$results[] = new Song(100, "Stein um Stein", "Rammstein", "Reise, Reise");
	$results[] = new Song(101, "Stark", "Ich + Ich", "");
	$results[] = new Song(102, "Ich + Ich", "Ich + Ich", "Ich + Ich");
	return $results;
}

function getQueue() {
	// TODO: Actually query the database.
	// This is a sample function that doesn't yet do anything.
	$results = array();
	$results[] = new Song(100, "Stein um Stein", "Rammstein", "Reise, Reise");
	$results[] = new Song(101, "Stark", "Ich + Ich", "Vom selben Stern");
	$results[] = new Song(102, "Wave No Flag", "Mono Inc.", "After the War");
	return $results;
}
?>
