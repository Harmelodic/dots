# macOS Setup

Instructions for setting up and configuring a macOS machine how I like it.

I could probably script a lot of this but... eh, don't do it often enough.

- Configure all the macOS settings as desired (Display, User settings, Fingerprint, Dock size, no Stage Manager, empty
  Desktop).
- Assuming
  using [Chromium](https://www.chromium.org/getting-involved/download-chromium/) / [Chrome](https://www.google.com/chrome/)
  for the job.
	- Configure DuckDuckGo as search engine.
	- Turn off saving passwords, payments and addresses.
	- Install browser extension for Password Manager.
    - Install browser extension: [File icons for GitHub and GitLab](https://chromewebstore.google.com/detail/file-icons-for-github-and/ficfmibkjjnpogdcfhfokmihanoldbfe).
    - Install browser extension: [uBlock Origin Lite](https://chromewebstore.google.com/detail/ublock-origin-lite/ddkjiahejlhfcafbddmgiahcphecmpfh).
    - Install browser extension: [Privacy Badger](https://chromewebstore.google.com/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp).
    - Install browser extension: [Unhook](https://chromewebstore.google.com/detail/unhook-remove-youtube-rec/khncfooichmfjbepaaaebmommgaepoid)
    - Install browser extension: [Hide Gemini and Google AI](https://chromewebstore.google.com/detail/hide-gemini-and-google-ai/ggneoaeoplbpehkojnifancipajnhcbp)
- Assuming using [Firefox](https://www.firefox.com/) for personal stuff.
	- Configure DuckDuckGo as search engine.
	- Turn off saving passwords, payments and addresses.
	- Login into Mozilla / Firefox account and let all the extensions get installed and settings get synced.
	- Go into Firefox settings and turn off the shite, because not all of it syncs / some of it gets reset.
- Login to [GitHub](https://github.com).
- Install [iTerm2](https://iterm2.com).
- Configure iTerm2 into dark mode, 140 columns, 40 rows.
- Run `touch ~/.hushlogin` to prevent that "Last Login" message.
- Install [Homebrew](https://brew.sh).
- Install GitHub's `gh` by doing `brew install gh`.
- Login to GitHub in a CLI by doing: `gh auth login` and configure/setup an SSH key.
- Wipe out your bash and zsh `rc` files: `echo "" > .bashrc` and `echo "" > .zshrc`
- Install [dots](https://github.com/harmelodic/dots) (this!) with the `curl ... | bash` installation.
- Install [mise-en-place](https://mise.jdx.dev/installing-mise.html) (mise).
- Run `mise install`.
- Install [your GPG key](https://harmelodic.com/blog/moving-gpg-keys-to-a-new-machine/).
- Install [VS Code](https://code.visualstudio.com/download)
- Run `rescode`.
- Check everything ran OK by doing `code ~/dots`
- You may need to open VS Code, open the Command Palette and run `Shell Command: Install 'code' command in Path`.
- Whilst in `dots` in VS Code, configure your `config-files/vars`.
- Install the [JetBrains Toolbox App](https://www.jetbrains.com/toolbox-app)
- Login to the appropriate JetBrains account.
- Install IntelliJ, GoLand, and Android Studio via the JetBrains Toolbox App.
- Install Docker / Podman Desktop / Rancher Desktop - as appropriate.
- Configure "Productivity Suite" tools (Mail, Calendar, Chat/Slack, Zoom/Meet)
- Turn off all the Generative AI shite and all the feature bloat stuff.
- If using GitLab:
	- Install `glab` via Homebrew: `brew install glab`.
    - Run `glab auth login` and login via the Web and clone with SSH.
    - Run `glab ssh-key add <SSH_KEY>.pub --title=my-macos-machine` to add the SSH key.
- Clone some code and get to making stuff.
