chrome.omnibox.onInputEntered.addListener((text) => {
	const chatgptUrl = `https://chatgpt.com/?model=gpt-4o&q=${encodeURIComponent(text)}`;
	const claudeUrl = `https://claude.ai/new?q=${encodeURIComponent(text)}`;
	const perplexityUrl = `https://perplexity.ai/search?q=${encodeURIComponent(text)}`;

	chrome.tabs.update({ url: chatgptUrl });
	chrome.tabs.create({ url: claudeUrl });
	chrome.tabs.create({ url: perplexityUrl });
});
