-- Sun Hub ☀️ com Rayfield UI e Key Fixa
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Key = "SUN2025"
local input = ""

repeat
    input = Rayfield:Prompt({
        Title = "🔐 SUN HUB - Key System",
        SubTitle = "Digite a key para continuar.",
        InputPlaceholder = "Digite aqui...",
        ConfirmText = "Verificar"
    })

    if input ~= Key then
        Rayfield:Notify({
            Title = "❌ Key Inválida",
            Content = "Tente novamente. A key está incorreta.",
            Duration = 4
        })
    end
until input == Key

local Window = Rayfield:CreateWindow({
	Name = "☀️ SUN HUB",
	LoadingTitle = "SUN HUB",
	LoadingSubtitle = "by Hkw",
	ConfigurationSaving = {
		Enabled = false
	},
        Discord = {
        	Enabled = true,
        	Invite = "SbdZmXZ65s",
        	RememberJoins = true
    	},
	KeySystem = false
})

local MainTab = Window:CreateTab("📜 Scripts", 4483362458)
local MiscTab = Window:CreateTab("🌐 Discord", 4483362458)

MiscTab:CreateButton({
	Name = "🔗 Copiar Link do Discord",
	Callback = function()
		setclipboard("https://discord.gg/SbdZmXZ65s")
		Rayfield:Notify({
			Title = "Link copiado!",
			Content = "Link do Discord copiado para a área de transferência.",
			Duration = 5
		})
	end
})

-- Lista de scripts
local Scripts = {
	["Steal a Brainrot"] = "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua",
	["Moondiety Steal a Brainrot"] = "https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader",
	["SPJ Reach (Patched)"] = "https://raw.githubusercontent.com/asldsaldle12/spjreach/refs/heads/main/loader.lua",
	["Grow a Garden (GAG)"] = "https://api.luarmor.net/files/v3/loaders/b44706178039e9b88c4d768d4d8b012f.lua",
	["Steal a Brainrot (STA)"] = "https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua",
	["INK Game"] = "https://raw.githubusercontent.com/vividx07/nova-softworks/refs/heads/main/loader.lua",
	["ZeroHub Steal A Brainrot"] = "https://raw.githubusercontent.com/PlayzlxD0tmatter/StealABrainrotSciptZeroHub/refs/heads/main/ZeroHubStealABrainrotScript",
	["Blox Fruits - Darkrai X"] = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader",
	["Blox Fruits - Hoho Hub"] = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/HohoHubFree.lua",
	["Arsenal - Aimbot"] = "https://pastebin.com/raw/7ZtP3K9C",
	["Pet Simulator X - Huge Games"] = "https://raw.githubusercontent.com/itsnoctural/psx/main/main.lua",
	["Pet Simulator 99 - Auto Farm"] = "https://pastebin.com/raw/zGZGzMdp",
	["Doors - Vynixius"] = "https://pastebin.com/raw/eRjvpuwE",
	["Doors - Nuke Hub"] = "https://raw.githubusercontent.com/NukeVsCity/nuke/main/loader",
	["Combat Warriors - OP GUI"] = "https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua",
	["King Legacy - MOKU"] = "https://raw.githubusercontent.com/MoKuZ1/KingLegacy/main/MOKU",
	["King Legacy - Dark Hub"] = "https://pastebin.com/raw/TGn7Bfmm",
	["Murder Mystery 2 - Evo GUI"] = "https://pastebin.com/raw/vPxfJfs2",
	["Murder Mystery 2 - OP GUI"] = "https://raw.githubusercontent.com/xennyy/nice/main/mm2.lua",
	["Bee Swarm Simulator - Auto Farm"] = "https://pastebin.com/raw/xbzP2vZF",
	["Anime Adventures - Auto Farm"] = "https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub",
	["Anime Fighting Sim X"] = "https://pastebin.com/raw/qFDmQbhG",
	["Anime Fighters - Auto Farm"] = "https://raw.githubusercontent.com/KonkoUpp/script/main/AU",
	["Jailbreak - Auto Rob"] = "https://pastebin.com/raw/ufMNi7m5",
	["Jailbreak - Venom Hub"] = "https://pastebin.com/raw/KYdxBtrH",
	["Build a Boat - OP GUI"] = "https://pastebin.com/raw/7X2s8epG",
	["Build a Boat - Autofarm"] = "https://raw.githubusercontent.com/03koios/autofarm/main/main.lua",
	["Nico's Nextbots - GOD MODE"] = "https://pastebin.com/raw/tnm03hke",
	["Nico's Nextbots - Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
	["Brookhaven - Admin GUI"] = "https://pastebin.com/raw/VBFuZkxH",
	["Brookhaven - Troll GUI"] = "https://pastebin.com/raw/KUzkb8iV",
	["Tower of Hell - Fly + Godmode"] = "https://pastebin.com/raw/q4pKcWxS",
	["Tower of Hell - ESP & Fly"] = "https://pastebin.com/raw/vMfKfrK9",
	["Rainbow Friends - Auto Win"] = "https://pastebin.com/raw/0Vun3J8L",
	["Rainbow Friends - Troll GUI"] = "https://pastebin.com/raw/0RGzCSdq",
	["Evade - Silent Aim"] = "https://pastebin.com/raw/HNn7biA1",
	["Evade - ESP + Speed"] = "https://pastebin.com/raw/3ZEtOy2H",
	["Pls Donate - Sniper GUI"] = "https://raw.githubusercontent.com/KeshHub/KeshHub/main/Main.lua",
	["Pls Donate - Fake Robux"] = "https://pastebin.com/raw/UwzE9dzt",
	["A Universal Time - Dark Hub"] = "https://pastebin.com/raw/TbQUyQvz",
	["A Universal Time - Autofarm"] = "https://pastebin.com/raw/KJxwPuwK"
}

for name, url in pairs(Scripts) do
	MainTab:CreateButton({
		Name = name,
		Callback = function()
			loadstring(game:HttpGet(url))()
		end
	})
end
