function lines() {

	var quotes = [
		"It's not what you look at that matters, it's what you see." + "<br><br>" + "- Henry David Thoreau",
		"A house is not a home unless it contains food and fire for the mind as well as the body." + "<br><br>" + "- Benjamin Franklin",
		"Happiness is a butterfly, which when pursued, is always just beyond your grasp, but which, if you will sit down quietly, may alight upon you." + "<br><br>" + "- Nathaniel Hawthorne"
	];

	document.write(quotes[Math.floor((Math.random() * 3))]);
}
					