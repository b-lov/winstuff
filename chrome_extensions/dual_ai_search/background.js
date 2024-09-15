chrome.omnibox.onInputEntered.addListener((text) => {
  const chatgptUrl = `https://chatgpt.com/?q=${encodeURIComponent(text)}`;
  const claudeUrl = `https://claude.ai/new?q=${encodeURIComponent(text)}`;

  chrome.tabs.create({ url: chatgptUrl });
  chrome.tabs.create({ url: claudeUrl });
});