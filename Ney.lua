shared.LoaderTitle = "جار تحميل سكربت Neymar Hub";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        20
    },
    [2] = {
        2,
        50
    },
    [3] = {
        3,
        80
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(7, 167, 0),
            Title = Color3.fromRGB(7, 167, 0),
            LoaderBackground = Color3.fromRGB(255, 255, 255),
            LoaderSplash = Color3.fromRGB(7, 167, 0)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://81886512783938",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 55, 0, 55)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "اهلا بك في السكربت",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();


--=====================--
--     RolePlay Edit
--=====================--
local args = {"RolePlayName","سكربت المطور Neymar Hub V1.1"}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

local args = {"PickingRPNameColor",Color3.fromRGB(150,0,0)}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))

local args = {"RolePlayBio","Neymar Hub"}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

local args = {"PickingRPBioColor",Color3.fromRGB(20,20,20)}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))

--=====================--
--   واجهة مخصصة
--=====================--
loadstring(game:HttpGet("https://raw.githubusercontent.com/youssefhesham542/Y2-Hub/main/interface2"))()

MakeWindow({
    Hub = {
        Title = "Neymar Hub | Brookhaven RP",
        Animation = "سكربت المطور Neymar Hub"
    },
    Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"12924"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
    Image = "rbxassetid://73962170939481",
    Size = {40,40},
    Color = Color3.fromRGB(10,10,10),
    Corner = true,
    Stroke = true,
    StrokeColor = Color3.fromRGB(15,15,15)
})

local Main = MakeTab({Name = "معلومات المطور"})

AddImageLabel(Main, {
    Name = "قناه الاسكربت",
    Image = "rbxassetid://73962170939481"
})

AddButton(Main, {
    Name = "اضغط هنا لنسخ حسابي تيك",
    Callback = function()
        setclipboard("ney_marr2")
        if Main.Notify then
            Main:Notify({
                Title = "نسخ الحساب",
                Text = "تم نسخ حساب تيك!",
                Duration = 3
            })
        end
    end
})

AddButton(Main, {
    Name = "اضغط هنا لنسخ حسابي روب",
    Callback = function()
        setclipboard("Kdkjdnde")
        if Main.Notify then
            Main:Notify({
                Title = "نسخ الحساب",
                Text = "تم نسخ حساب روب!",
                Duration = 3
            })
        end
    end
})


