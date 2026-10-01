local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

_G.UnlockPremium = false
local ValidKeys = {
    "zx666999xz",
    "zxzxzx",
}

local MainWin = WindUI:CreateWindow({
    Title = "朝霞汉化脚本",
    Icon = "sun",
    Theme = "Dark",
    Folder = "ZhaoxiaHanHua",
    Size = UDim2.new(0,640,0,460)
})

local TabHome = MainWin:Tab({
    Title = "主页",
    Icon = "home"
})

TabHome:Section({
    Title = "                                     卡密解锁"
})

local KeyInput = TabHome:Input({
    Title = "请输入卡密",
    Placeholder = "粘贴你的卡密...",
    Default = ""
})

TabHome:Button({
    Title = "✅ 验证卡密解锁脚本(卡密进Q群完全免费)",
    Callback = function()
        local inputKey = KeyInput.Value
        local IsValid = table.find(ValidKeys, inputKey) ~= nil

        if IsValid then
            _G.UnlockPremium = true
            WindUI:Notify({Title="解卡成功",Content="功能已解锁，偷走一个蛋页面已显示！",Duration=3})

            local TabEgg = MainWin:Tab({
                Title = "偷走一个蛋",
                Icon = "egg"
            })

            TabEgg:Section({
                Title = "                                            无卡密脚本"
            })
            TabEgg:Button({
                Title = "红辣椒不需要卡密",
                Callback = function()
                    local ok,err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/qq122565661/-/refs/heads/main/zx999.lua"))()
                    end)
                    if ok then
                        WindUI:Notify({Title="脚本一",Content="zx999加载完成",Duration=2})
                    else
                        WindUI:Notify({Title="脚本一",Content="加载失败："..tostring(err),Duration=3})
                    end
                end
            })

            TabEgg:Section({
                Title = "                                           有卡密脚本"
            })
            TabEgg:Button({
                Title = "BF脚本(解卡需要DC)",
                Callback = function()
                    local ok,err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/qq122565661/-/refs/heads/main/zx666.lua"))()
                    end)
                    if ok then
                        WindUI:Notify({Title="BF",Content="zx666加载完成",Duration=2})
                    else
                        WindUI:Notify({Title="BF",Content="zx666加载失败："..tostring(err),Duration=3})
                    end
                end
            })
            TabEgg:Button({
                Title = "三叶草脚本",
                Callback = function()
                    local ok,err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/qq122565661/-/refs/heads/main/%E8%84%9A%E6%AD%A5.lua"))()
                    end)
                    if ok then
                        WindUI:Notify({Title="三叶草",Content="脚本.lua加载完成",Duration=2})
                    else
                        WindUI:Notify({Title="三叶草",Content="脚本.lua加载失败："..tostring(err),Duration=3})
                    end
                end
            })

        else
            _G.UnlockPremium = false
            WindUI:Notify({Title="卡密错误",Content="请检查你的卡密是否正确",Duration=3})
        end
    end
})

TabHome:Section({
    Title = "                                    作者平台账号和Q群"
})

TabHome:Button({
    Title = "📱 快手：朝霞 ｜ 点击复制快手号",
    Callback = function()
        setclipboard("朝霞")
        WindUI:Notify({Title="已复制",Content="快手号：朝霞",Duration=2})
    end
})

TabHome:Button({
    Title = "📺 B站：朝霞114514",
    Callback = function() end
})

TabHome:Button({
    Title = "👥 官方Q群：122565661 ｜ 点击复制群号",
    Callback = function()
        setclipboard("122565661")
        WindUI:Notify({Title="已复制",Content="Q群：122565661",Duration=2})
    end
})

TabHome:Section({
    Title = "                                          广告位"
})

TabHome:Button({
    Title = "💎 R币赠送1:16 需要的加QQ(点击复制QQ号)",
    Callback = function()
        setclipboard("2214895737")
        WindUI:Notify({Title="已复制",Content="QQ号：2214895737",Duration=2})
    end
})
