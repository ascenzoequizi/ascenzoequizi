# Turning on Nim-Gir accounts (Supabase, free)

1. Go to https://supabase.com, sign up, and click **New project**. Any name (e.g. `nimgir`), pick a database password, choose the region closest to you (Sydney), and create it. Wait a minute or two while it starts.
2. Open **SQL Editor → New query**, paste everything from `supabase-setup.sql`, and click **Run**. You should see "Success. No rows returned".
3. Open **Authentication → Sign In / Providers → Email**:
   - For playtesting, turn **Confirm email** OFF so players can sign straight in. (Leave it on if you want email confirmation; the game handles both.)
4. Open **Authentication → URL Configuration** and set **Site URL** to your game's address, e.g. `https://ascenzoequizi.github.io/ascenzoequizi/`.
5. Open **Project Settings → API** (or **Data API**). Copy the **Project URL** and the **anon public** key.
6. Open `config.js` in your GitHub repo, paste them in:
   ```js
   window.NIMGIR_CLOUD = { url: 'https://xxxx.supabase.co', key: 'eyJ...' };
   ```
   Commit. The anon key is meant to be public; the database rules from step 2 stop players editing anyone else's profile.
7. Open the game → **Player** → **Create account**.

Notes
- Ranks are worked out by the game on each player's device, which is fine for friends. A public, competitive ladder would need the server to check results.
- Installing: on iPhone, open the site in Safari → Share → Add to Home Screen. On Android/Chrome, use "Install app". On PC, the install icon in the address bar.
