--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v42,v43) local v44={};for v73=1, #v42 do v6(v44,v0(v4(v1(v2(v42,v73,v73 + 1 )),v1(v2(v43,1 + (v73% #v43) ,1 + (v73% #v43) + 1 )))%256 ));end return v5(v44);end local v8=game:GetService(v7("\229\212\222\32\232\136\194\12\199\202\216\32","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\20\194\56\206\239\51\204\41\192","\156\67\173\74\165"));local function v10(v45,v46) local v47=Instance.new(v45);for v74,v75 in pairs(v46) do v47[v74]=v75;end return v47;end local v11=v10(v7("\7\180\91\19\185\40\97\33\190","\38\84\215\41\118\220\70"),{[v7("\98\19\49\23\234\127\24\17\2\255\71\24","\158\48\118\66\114")]=false,[v7("\155\37\2\51\125\177","\155\203\68\112\86\19\197")]=game.Players.LocalPlayer:WaitForChild(v7("\118\209\55\229\69\106\194\237\79","\152\38\189\86\156\32\24\133"))});local v12=v10(v7("\218\69\166\75\249","\38\156\55\199"),{[v7("\155\116\102\45","\35\200\29\28\72\115\20\154")]=UDim2.new(0,140,0,200),[v7("\41\176\194\214\153\37\59\23","\84\121\223\177\191\237\76")]=UDim2.new(0.5, -70,0.5, -100),[v7("\153\87\202\171\61\66\63\212\181\82\234\175\54\95\34\146","\161\219\54\169\192\90\48\80")]=Color3.fromRGB(40,40,40),[v7("\107\77\18\33\76\80\51\44\83\71\48\44\81\71\12","\69\41\34\96")]=0,[v7("\140\194\197\15\12\63","\75\220\163\183\106\98")]=v11});local v13=v10(v7("\36\168\138\58\220","\185\98\218\235\87"),{[v7("\248\53\61\227","\202\171\92\71\134\190")]=UDim2.new(1,0,0,20),[v7("\11\192\47\131\46\211\35\157\39\197\15\135\37\206\62\219","\232\73\161\76")]=Color3.fromRGB(30,30,30),[v7("\153\214\80\89\27\169\234\75\71\27\139\208\90\88\18","\126\219\185\34\61")]=0,[v7("\60\207\76\119\112\99","\135\108\174\62\18\30\23\147")]=v12});local v14=v10(v7("\130\236\50\223\52\175\49\194\186","\167\214\137\74\171\120\206\83"),{[v7("\184\249\40\88","\199\235\144\82\61\152")]=UDim2.new(1,0,1,0),[v7("\51\19\161\63","\75\103\118\217")]=v7("\198\93\125\22\182\10\135\66\33","\126\167\52\16\116\217"),[v7("\234\47\35\139\179\11\243\221\32\36\180\166\24\242\219\62\33\146\177\23\255\209","\156\168\78\64\224\212\121")]=1,[v7("\51\235\189\218\36\225\169\193\21\189","\174\103\142\197")]=Color3.fromRGB(255,255,255),[v7("\112\39\81\44","\152\54\72\63\88\69\62")]=Enum.Font.SourceSans,[v7("\224\193\246\72\231\205\244\89","\60\180\164\142")]=18,[v7("\104\95\23\44\41\249","\114\56\62\101\73\71\141")]=v13});local v15=v10(v7("\140\236\195\208\154\252\207\208\183\231","\164\216\137\187"),{[v7("\225\239\43\183","\107\178\134\81\210\198\158")]=UDim2.new(0,120,0,40),[v7("\8\1\145\207\190\49\1\140","\202\88\110\226\166")]=UDim2.new(0,10,0,30),[v7("\247\10\154\227","\170\163\111\226\151")]=v7("\48\57\191\58\65\35\115\81\31\180\62","\73\113\80\210\88\46\87"),[v7("\163\45\206\25\224\147\35\216\28\227\162\35\193\29\245\210","\135\225\76\173\114")]=Color3.fromRGB(200,0,0),[v7("\46\232\160\164\143\178\171\21\255\235","\199\122\141\216\208\204\221")]=Color3.fromRGB(255,255,255),[v7("\139\210\30\228","\150\205\189\112\144\24")]=Enum.Font.SourceSans,[v7("\17\129\167\88\55\129\11\21","\112\69\228\223\44\100\232\113")]=24,[v7("\246\16\21\215\179\110\181\221\5\2\227\191\100\131\216","\230\180\127\103\179\214\28")]=0,[v7("\188\4\77\67\234\85","\128\236\101\63\38\132\33")]=v12});local v16=v10(v7("\138\187\16\73\179","\175\204\201\113\36\214\139"),{[v7("\116\197\47\217","\100\39\172\85\188")]=UDim2.new(0,120,0,20),[v7("\157\119\170\137\39\164\119\183","\83\205\24\217\224")]=UDim2.new(0,10,0,80),[v7("\196\196\206\54\225\215\194\40\232\193\249\47\231\203\222\45\231\215\200\51\229\220","\93\134\165\173")]=1,[v7("\142\243\211\199\52\218","\30\222\146\161\162\90\174\210")]=v12});local v17=v10(v7("\209\75\104\30\201\79\114\15\233","\106\133\46\16"),{[v7("\107\41\105\249","\32\56\64\19\156\58")]=UDim2.new(1, -20,1,0),[v7("\106\199\246\95\78\251\143\84","\224\58\168\133\54\58\146")]=UDim2.new(0,20,0,0),[v7("\109\83\83\233","\107\57\54\43\157\21\230\231")]=v7("\239\142\16\248\249\255\199\222\136\26","\175\187\235\113\149\217\188"),[v7("\30\174\130\71\228\107\119\41\161\133\120\241\120\118\47\191\128\94\230\119\123\37","\24\92\207\225\44\131\25")]=1,[v7("\127\214\160\88\56\114\71\220\170\31","\29\43\179\216\44\123")]=Color3.fromRGB(255,255,255),[v7("\155\214\46\88","\44\221\185\64")]=Enum.Font.SourceSans,[v7("\53\226\80\75\64\8\253\77","\19\97\135\40\63")]=18,[v7("\158\93\33\62\33\37","\81\206\60\83\91\79")]=v16});local v18=v10(v7("\122\174\200\102\13\214\89\176\65\165","\196\46\203\176\18\79\163\45"),{[v7("\139\43\100\27","\143\216\66\30\126\68\155")]=UDim2.new(0,20,0,20),[v7("\154\199\30\194\209\170\216\239","\129\202\168\109\171\165\195\183")]=UDim2.new(0,0,0,0),[v7("\22\93\47\204","\134\66\56\87\184\190\116")]="",[v7("\30\48\10\176\30\249\46\32\50\53\42\180\21\228\51\102","\85\92\81\105\219\121\139\65")]=Color3.fromRGB(255,255,255),[v7("\223\188\66\65\121\205\206\186\74\64\76\214\229\182\92","\191\157\211\48\37\28")]=1,[v7("\239\30\230\25\52\203","\90\191\127\148\124")]=v16});local v19=v10(v7("\94\149\47\26\125","\119\24\231\78"),{[v7("\177\36\191\79","\113\226\77\197\42\188\32")]=UDim2.new(0,120,0,20),[v7("\10\25\231\188\46\31\251\187","\213\90\118\148")]=UDim2.new(0,10,0,110),[v7("\121\47\183\93\74\73\33\161\88\73\111\60\181\88\94\75\47\166\83\67\88\55","\45\59\78\212\54")]=1,[v7("\32\87\145\142\136\58","\144\112\54\227\235\230\78\205")]=v12});local v20=v10(v7("\135\45\23\232\252\90\177\45\3","\59\211\72\111\156\176"),{[v7("\125\142\249\40","\77\46\231\131")]=UDim2.new(1, -20,1,0),[v7("\138\91\165\73\174\93\185\78","\32\218\52\214")]=UDim2.new(0,20,0,0),[v7("\122\18\41\188","\58\46\119\81\200\145\208\37")]=v7("\28\141\60\160\233\158\62\46\143\59","\86\75\236\80\204\201\221"),[v7("\80\64\116\142\249\153\125\84\121\129\202\153\115\79\100\149\255\153\119\79\116\156","\235\18\33\23\229\158")]=1,[v7("\100\191\217\175\115\181\205\180\66\233","\219\48\218\161")]=Color3.fromRGB(255,255,255),[v7("\194\126\114\93","\128\132\17\28\41\187\47")]=Enum.Font.SourceSans,[v7("\53\55\30\46\110\8\40\3","\61\97\82\102\90")]=18,[v7("\156\47\185\78\201\67","\105\204\78\203\43\167\55\126")]=v19});local v21=v10(v7("\145\175\59\10\49\17\211\69\170\164","\49\197\202\67\126\115\100\167"),{[v7("\4\82\197\44","\62\87\59\191\73\224\54")]=UDim2.new(0,20,0,20),[v7("\215\13\233\192\243\11\245\199","\169\135\98\154")]=UDim2.new(0,0,0,0),[v7("\255\114\60\64","\168\171\23\68\52\157\83")]="",[v7("\214\112\246\166\34\63\136\225\127\241\142\42\33\136\230\34","\231\148\17\149\205\69\77")]=Color3.fromRGB(255,255,255),[v7("\162\168\213\255\82\237\179\174\221\254\103\246\152\162\203","\159\224\199\167\155\55")]=1,[v7("\199\242\46\215\249\231","\178\151\147\92")]=v19});local v22=v10(v7("\184\248\84\38\62\77\120\137\241","\26\236\157\44\82\114\44"),{[v7("\25\39\207\94","\59\74\78\181")]=UDim2.new(0,40,0,20),[v7("\21\222\73\83\167\44\222\84","\211\69\177\58\58")]=UDim2.new(0,10,0,140),[v7("\131\224\97\225","\171\215\133\25\149\137")]=v7("\217\136\29\252\233","\34\129\168\82\154\143\80\156"),[v7("\167\179\48\0\79\92\134\144\188\55\63\90\79\135\150\162\50\25\77\64\138\156","\233\229\210\83\107\40\46")]=1,[v7("\245\71\42\194\38\206\78\61\196\86","\101\161\34\82\182")]=Color3.fromRGB(255,255,255),[v7("\206\2\87\234","\78\136\109\57\158\187\130\226")]=Enum.Font.SourceSans,[v7("\10\58\225\229\13\54\227\244","\145\94\95\153")]=18,[v7("\205\204\6\208\64\163","\215\157\173\116\181\46")]=v12});local v23=v10(v7("\1\177\147\230\248\58\172","\186\85\212\235\146"),{[v7("\241\136\12\251","\56\162\225\118\158\89\142")]=UDim2.new(0,60,0,20),[v7("\108\10\211\166\54\209\83\11","\184\60\101\160\207\66")]=UDim2.new(0,60,0,140),[v7("\5\135\100\168","\220\81\226\28")]="0",[v7("\49\212\129\240\237\213\28\192\140\255\201\200\31\218\144\168","\167\115\181\226\155\138")]=Color3.fromRGB(255,255,255),[v7("\214\39\255\72\88\126\202\237\48\180","\166\130\66\135\60\27\17")]=Color3.fromRGB(0,0,0),[v7("\98\69\192\97","\80\36\42\174\21")]=Enum.Font.SourceSans,[v7("\122\21\47\110\125\25\45\127","\26\46\112\87")]=18,[v7("\137\34\185\113\177\171","\212\217\67\203\20\223\223\37")]=v12});local v24=v10(v7("\142\136\176\198\150\140\170\215\182","\178\218\237\200"),{[v7("\133\188\252\213","\176\214\213\134")]=UDim2.new(0,40,0,20),[v7("\196\162\165\221\188\95\86\250","\57\148\205\214\180\200\54")]=UDim2.new(0,10,0,170),[v7("\38\248\45\32","\22\114\157\85\84")]=v7("\253\139\60\194\91","\200\164\171\115\164\61\150"),[v7("\156\245\0\78\132\172\251\22\75\135\138\230\2\75\144\174\245\17\64\141\189\237","\227\222\148\99\37")]=1,[v7("\7\87\74\226\218\60\94\93\228\170","\153\83\50\50\150")]=Color3.fromRGB(255,255,255),[v7("\123\121\125\8","\45\61\22\19\124\19\203")]=Enum.Font.SourceSans,[v7("\245\23\21\225\49\121\163\196","\217\161\114\109\149\98\16")]=18,[v7("\34\33\42\121\178\96","\20\114\64\88\28\220")]=v12});local v25=v10(v7("\5\4\202\160\218\223\165","\221\81\97\178\212\152\176"),{[v7("\254\238\7\254","\122\173\135\125\155")]=UDim2.new(0,60,0,20),[v7("\180\206\19\176\43\56\199\138","\168\228\161\96\217\95\81")]=UDim2.new(0,60,0,170),[v7("\239\212\54\72","\55\187\177\78\60\79")]="0",[v7("\15\207\92\224\65\221\143\56\192\91\200\73\195\143\63\157","\224\77\174\63\139\38\175")]=Color3.fromRGB(255,255,255),[v7("\176\68\64\58\167\78\84\33\150\18","\78\228\33\56")]=Color3.fromRGB(0,0,0),[v7("\232\113\188\23","\229\174\30\210\99")]=Enum.Font.SourceSans,[v7("\47\232\158\69\222\52\35\30","\89\123\141\230\49\141\93")]=18,[v7("\195\112\228\9\30\94","\42\147\17\150\108\112")]=v12});local v26=false;v15.MouseButton1Click:Connect(function() v26= not v26;v15.Text=v7("\46\175\32\125\232\252\85\230","\136\111\198\77\31\135")   .. ((v26 and v7("\45\7","\201\98\105\199\54\221\132\119")) or v7("\150\10\133","\204\217\108\227\65\98\85")) ;local v49={[v7("\124\194\246\238\43\210\81\214\251\225\15\207\82\204\231\182","\160\62\163\149\133\76")]=(v26 and Color3.fromRGB(0,200,0)) or Color3.fromRGB(200,0,0) };local v50=TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out);local v51=v8:Create(v15,v50,v49);v51:Play();end);local v27=false;local v28=false;v18.MouseButton1Click:Connect(function() v27= not v27;local v52={[v7("\244\161\14\36\196\196\175\24\33\199\245\175\1\32\209\133","\163\182\192\109\79")]=(v27 and Color3.fromRGB(0,255,0)) or Color3.fromRGB(255,0,0) };local v53=TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out);local v54=v8:Create(v18,v53,v52);v54:Play();end);v21.MouseButton1Click:Connect(function() v28= not v28;local v55={[v7("\22\39\3\203\242\38\41\21\206\241\23\41\12\207\231\103","\149\84\70\96\160")]=(v28 and Color3.fromRGB(0,255,0)) or Color3.fromRGB(255,0,0) };local v56=TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out);local v57=v8:Create(v21,v56,v55);v57:Play();end);local v29,v30,v31,v32;local function v33(v58) local v59=v58.Position-v31 ;v12.Position=UDim2.new(v32.X.Scale,v32.X.Offset + v59.X ,v32.Y.Scale,v32.Y.Offset + v59.Y );end v12.InputBegan:Connect(function(v61) if ((v61.UserInputType==Enum.UserInputType.MouseButton1) or (v61.UserInputType==Enum.UserInputType.Touch)) then v29=true;v31=v61.Position;v32=v12.Position;v61.Changed:Connect(function() if (v61.UserInputState==Enum.UserInputState.End) then v29=false;end end);end end);v12.InputChanged:Connect(function(v62) if ((v62.UserInputType==Enum.UserInputType.MouseMovement) or (v62.UserInputType==Enum.UserInputType.Touch)) then v30=v62;end end);game:GetService(v7("\13\21\8\255\17\8\29\248\44\53\8\255\46\15\14\232","\141\88\102\109")).InputChanged:Connect(function(v63) if (v29 and (v63==v30)) then v33(v63);end end);local v34=game:GetService(v7("\131\95\203\105\31\47\70","\161\211\51\170\16\122\93\53"));local v35=game:GetService(v7("\201\187\188\27\254\188\164\33\248\171","\72\155\206\210"));local v36=v34.LocalPlayer;local v37=v36:GetMouse();local function v38(v64) local v65=v64.Character;if  not v65 then return false;end local v66=v65:FindFirstChild(v7("\110\127\85\10","\83\38\26\52\110"));if  not v66 then return false;end local v67=Ray.new(v36.Character.Head.Position,(v66.Position-v36.Character.Head.Position).unit * 300 );local v68,v69=v9:FindPartOnRayWithIgnoreList(v67,{v36.Character});return v68 and v68:IsDescendantOf(v65) ;end local function v39() local v70=nil;local v71=math.huge;for v77,v78 in pairs(v34:GetPlayers()) do if (v78~=v36) then local v89=v78.Character;if (v89 and v89:FindFirstChild(v7("\112\18\38\66","\38\56\119\71"))) then local v90=v89.Head;local v91=(v90.Position-v36.Character.Head.Position).magnitude;if (v27 and (v78.Team==v36.Team)) then continue;end if (v78.Character.Humanoid.Health<=0) then continue;end if (v28 and  not v38(v78)) then continue;end if (v91<v71) then v70=v78;v71=v91;end end end end return v70;end local v40;local function v41(v72) if (v72 and v72.Character and v72.Character:FindFirstChild(v7("\219\234\89\210","\54\147\143\56\182\69"))) then local v81=v72.Character.Head;local v82=v9.CurrentCamera;local v83=tonumber(v23.Text) or 0 ;local v84=tonumber(v25.Text) or 0 ;local v85=v81.Position + Vector3.new(v83,v84,0) ;if v40 then v40:Cancel();end local v86={[v7("\245\167\237\72\210\211","\191\182\225\159\41")]=CFrame.new(v82.CFrame.Position,v85)};local v87=TweenInfo.new(0.007,Enum.EasingStyle.Quad,Enum.EasingDirection.Out);v40=v8:Create(v82,v87,v86);v40:Play();end end v35.RenderStepped:Connect(function() if v26 then local v88=v39();v41(v88);end end);
