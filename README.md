# IdleMiner
Windows installer for cryptocurrency miners

IdleMiner will setup your system to mine zcash when your computer goes idle. It will stop when your computer wakes up. Before installing, make sure you have admin permissions on your system and have a zcash address to send proceeds. To generate a zcash address, download and install a cryptocurrency wallet like coinomi, jaxx or cryptonator.

How to build:

1. Download a release of nheqminer: https://github.com/nicehash/nheqminer/releases
2. Use IExpress to create an installer based on IdleMinerInstall.SED
3. Use ResourceHacker (http://www.angusj.com/resourcehacker/) to change the manifest of your installer. In the requestedExecutionLevel tag, change level to "requireAdministrator". Compile and save the new installer.


How to run:
1. Run the self-extracting installer. It will ask you to provide a location for install and a zcash address to deposit funds.
2. Whitelist nheqminer.exe. Since some anti-virus program flag nheqminer as malware, you may need to whitelist it with your antivirus program.
3. The miner will start automatically when your system idles. You are mining via a "pool", meaning that your mining power will be combined with others and you'll share any payouts. You can view the contribution of your miner and see your progress toward a payment at zcash.flypool.org/miners/<Your Zcash Address>. If your computer has been idle for 40 minutes and you still see nothing here, it's broken.
4. If you feel like expressing your appreciation, you can send zcash to riseup.net. Their ZEC address is zcc7P9dbq71WTwXi148oXGSvZC6eo2ZkMi3s57qTGLzm9Bhzt3GNVo4AzNJHtEM2gSbyvsthDkmKHCWLvTJ6ysEnfpdANVa



*Caveats*
1. By default, it's set to mine with exactly 1 GPU. Not CPU, not multiple GPUs.
2. Tested with nheqminer v.0.5c and no others
3. Be careful with whitelisting. IdleMiner will ask you to whitelist the miner. Many anti-virus programs flag cryptocurrency miners as malware. They will quarantine nheqminer.exe unless you whitelist it. However, it's best to whitelist as little as possible. Whitelisting a whole directory gives hackers a playground. Be easy.  
4. Please (please, please) be careful with your cryptocurrency. Do not store large balances in wallets attached to the internet. Keep your private keys private and store them redundantly to avoid losing control of your coins.

