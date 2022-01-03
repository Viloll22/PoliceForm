local DISCORD_WEBHOOK = "WEBHOOK URL"


RegisterServerEvent('log')
AddEventHandler('log', function(data)



    local connect = {
        {
            ["color"] = "255",
            ["title"] = "Neue Bewerbung | " ..data.plate.."-"..data.lastname,
            ["description"] = "Vorname: \n **"..data.plate.."** \n Nachname: \n **"..data.lastname.."** \n Alter: \n **"..data.age.."** \n Bewerbung: \n**"..data.why.."**\n Geschlecht:\n **"..data.gender.."**",
	        ["footer"] = {
                ["text"] = "Neue Polizeibewerbung",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "Polizeibewerbung",  avatar_url = "https://static.wikia.nocookie.net/gta/images/5/5e/Sceau-lspd-gtav.png/revision/latest?cb=20140916194909&path-prefix=fr",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

