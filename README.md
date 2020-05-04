# StalkTradingBot
A simple Discord bot built to help track turnip trading prices in our Discord. 

This bot is designed to work with the spreadsheet template found here: https://docs.google.com/spreadsheets/d/1rGmFX-gAUonAG1CSAZ_pF3tMbvbuSuB9Dx_xaVXiSSw/edit#gid=836261684

# Getting Started
To start using this bot, you'll need to create a bot through Discord's developer portal.
Create a file named ".env" and put "DISCORD_TOKEN=[yourtoken]" in the file.

After your token is set up, you need to follow Step 1 of Google's Node.js
quickstart guide found here:
https://developers.google.com/sheets/api/quickstart/nodejs. This will give you
the credentials file needed to continue. Place it in `config/credentials.json`

Then, copy `config/config.example.js` to `config/config.js` and fill it out as necessary. You will need to duplicate the spreadsheet linked above and set it up for your server. 

Once the config file is all set, you can run the bot. On your first run, you will get a link that you need to follow so the bot can fully authorize with Google. Running it in the future will not require the same process. 

# Running with docker
1. Prepare the config directory as described above. It should have a
   `config.json` and a `credentials.json` when you are done.
2. Download the image
``` sh
docker pull netpro2k/stalk-trading-bot
```
3. Run it, specifying your config directory and `DISCORD_TOKEN` as appropriate
``` sh
docker run -v /local/path/to/config/:/var/app/config -e DISCORD_TOKEN="YOUR_DISCORD_TOKEN" netpro2k/stalk-trading-bot
```


