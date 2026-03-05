# macOS Setup

Instructions for setting up and configuring a macOS machine how I like it.

I could probably script a lot of this but... eh, don't do it often enough.

- Configure all the macOS settings as desired (Display, User settings, Fingerprint, Dock size, no Stage Manager, empty Desktop).
- Assuming using Chromium / Chrome.
  - Configure DuckDuckGo as search engine.
  - Turn off saving passwords, payments and addresses.
  - Install Password Manager browser extension.
  - Install [File icons for GitHub and GitLab browser extensions](https://chromewebstore.google.com/detail/file-icons-for-github-and/ficfmibkjjnpogdcfhfokmihanoldbfe).
  - Install [uBlock Origin Lite](https://chromewebstore.google.com/detail/ublock-origin-lite/ddkjiahejlhfcafbddmgiahcphecmpfh).
  - Install [Privacy Badger](https://chromewebstore.google.com/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp).
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
- Clone [.code](https://github.com/harmelodic/.code).
- Run `bakcode`.
- Check everything ran OK by doing `code ~/dots`
- You may need to open VS Code, open the Command Palette and run `Shell Command: Install 'code' command in Path`.
- Whilst in `dots` in VS Code, configure your `vars`.
- Install the [JetBrains Toolbox App](https://www.jetbrains.com/toolbox-app)
- Login to the appropriate JetBrains account.
- Install IntelliJ, GoLand, and Android Studio via the JetBrains Toolbox App.
- Configure "Productivity Suite" tools (Mail, Calendar, Chat/Slack, Zoom/Meet)
- Turn off all the Generative AI shite and all the feature bloat stuff.
- Clone some code and get to making stuff.
