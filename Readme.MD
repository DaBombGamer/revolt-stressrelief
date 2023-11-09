//////////////////////////////////////
//	  STRESS RELIEF SCRIPT         //
//	  BY KWAZZY/REVOLT NETWORK    //
/////////////////////////////////////

A script that adds 5 new stress relieving items and a Pharmacy Store.

Thank you for Purchasing my Stress Relief Script. First and foremost if you have any issues whatsoever, please submit a ticket on my community's discord
Discord.gg/3qWaKjZPqB

Next, onto the important stuff.



-- Dependencies

QB-Core
QB-Hud
QB-Inventory
RPEmotes

-- Features
- 5 New Items (Cigarette, CBD Oil, Herbal Supplement, Chamomile Tea, and Prescription Pills)
- 1 New Configurable Pharmacy Store
- Make Prescription Pills legal or illegal (Compatible with QB-Policejob)
- Change the Amount of time it takes to consume the items
- Change Whether or not a player needs a lighter for a cigarette
- Change the Amount of Stress each item removes

Installation Steps
-------------------------------------------------------------------

1. **Put Revolt-Stressrelief into your resources folder**

2. **Ensure Revolt-Stressrelief in your server.cfg**

1. **Copy Images from Images folder into QB-Inventory\html\images**


2. **Copy and Paste below into QB-Core\shared\items.lua**

-- Revolt Stress Relief
['prescriptionpills'] 		 	 = {['name'] = 'prescriptionpills', 		['label'] = 'Unmarked Prescription Pills', 		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'pills.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = true,   ['description'] = 'Unknown Pills told to relieve stress.'},
['cigarette'] 		 			 = {['name'] = 'cigarette', 				['label'] = 'Cigarette', 				        ['weight'] = 5, 		['type'] = 'item', 		['image'] = 'cig.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = true,   ['description'] = 'A cigarette you light with a lighter.'},
['cbdoil'] 		 		         = {['name'] = 'cbdoil', 				    ['label'] = 'CBD Oil', 			                ['weight'] = 5, 		['type'] = 'item', 		['image'] = 'cbdoil.png', 	    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = true,   ['description'] = 'CBD Oil.. Does it do anything?'},
['chamomiletea'] 		 	   	 = {['name'] = 'chamomiletea', 				['label'] = 'Chamomile Tea', 				    ['weight'] = 5, 		['type'] = 'item', 		['image'] = 'tea.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = true,   ['description'] = 'A Cup of Tea'},
['herbalsupplement'] 		 	 = {['name'] = 'herbalsupplement', 			['label'] = 'Herbal Supplement', 				['weight'] = 5, 		['type'] = 'item', 		['image'] = 'herbal.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = true,   ['description'] = 'A herbal supplement that helps with stress.'},
	
3. **DONE**