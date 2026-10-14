# Nim-Gir

A crest-dice card duel by Ascension Studios. Play the AI, solve puzzles, learn with the tutorial, or duel a friend online with an invite link (no account needed).

## Put it online (GitHub Pages)

1. Create a new **public** repository on GitHub, for example `nimgir`.
2. Upload **everything in this folder** to the top level of the repository (not inside a sub-folder). Include the hidden `.nojekyll` file.
3. In the repository go to **Settings → Pages**. Under "Build and deployment", set **Source** to *Deploy from a branch*, **Branch** to `main` and the folder to `/ (root)`, then **Save**.
4. Wait a minute or two. Your game is live at `https://YOUR-USERNAME.github.io/nimgir/`.

## Update the game

Replace `index.html` with the new version (upload it again with the same name) and commit. GitHub Pages updates within a couple of minutes. Players may need to refresh.

## Files

| File | What it is |
|---|---|
| `index.html` | The whole game: rules, cards, art, AI, online play |
| `favicon.svg`, `icon-192.png`, `icon-512.png` | Browser tab and phone home-screen icons |
| `manifest.webmanifest` | Lets phones "Add to Home Screen" like an app |
| `.nojekyll` | Tells GitHub Pages to serve the files exactly as they are |

## Online play

Online duels connect the two devices directly using PeerJS (included in `index.html`, MIT licence). The host's page must stay open during the game. A few very strict networks (some work or school Wi-Fi) can block the connection; mobile data and home Wi-Fi normally work.
