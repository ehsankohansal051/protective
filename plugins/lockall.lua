do
local function pre_process(msg) 
local r = get_receiver(msg) 
local MARDONA = 'mardona_mdia:'..msg.to.id
local mardona1 = 'mardona_photo:'..msg.to.id
local mardona2 = 'mardona_audio:'..msg.to.id
local mardona3 = 'mardona_video:'..msg.to.id
local mardona4 = 'mardona_sticker:'..msg.to.id
local mardona5 = 'mardona_file:'..msg.to.id
local mardona6 = 'mardona_gifs:'..msg.to.id
local mardona7 = 'mardona_fwd:'..msg.to.id
local mardona8 = 'mardona_reply:'..msg.to.id
local mardona9 = 'mardona_link:'..msg.to.id 
local mardona10 = 'mardona_emoji:'..msg.to.id 
local mardona11 = 'mardona_badword:'..msg.to.id 
local mardona12 = 'mardona_tag:'..msg.to.id 
local linkGroup = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local emojiGrouo = msg.text:match("😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃👫👪👬👭💏💑👯🙆🙅💁🙋💆💇💅👰🙎🙍🙇🎩👑👒👟👞👡👠👢👕👔👚👗🎽👖👘👙💼👜👝👛👓🎀🌂💄💛💙💜💚❤️💔💗💓💕💖💞💘💌💋💍💎👤👥💬👣💭🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩🐾💐🌸🌷🍀🌹🌻🌺🍁🍃🍂🌿🌾🍄🌵🌴🌲🌳🌰🌱🌼🌐🌞🌝🌚🌑🌒🌓🌔🌕🌖🌗🌘🌜🌛🌙🌍🌎🌏🌋🌌🌠⭐️☀️⛅️☁️⚡️☔️❄️⛄️🌀🌁🌈🌊🎍💝🎎🎒🎓🎏🎆🎇🎐🎑🎃👻🎅🎄🎁🎋🎉🎊🎈🎌🔮🎥📷📹📼💿📀💽💾💻📱☎️📞📟📠📡📺📻🔊🔉🔈🔇🔔🔕📢📣⏳⌛️⏰⌚️🔓🔒🔏🔐🔑🔎💡🔦🔆🔅🔌🔋🔍🛁🛀🚿🚽🔧🔩🔨🚪🚬💣🔫🔪💊💉💰💴💵💷💶💳💸📲📧📥📤✉️📩📨📯📫📪📬📭📮📦📝📄📃📑📊📈📉📜📋📅📆📇📁📂✂️📌📎✒️✏️📏📐📕📗📘📙📓📔📒📚📖🔖📛🔬🔭📰🎨🎬🎤🎧🎼🎵🎶🎹🎻🎺🎷🎸👾🎮🃏🎴🀄️🎲🎯🏈🏀⚽️⚾️🎾🎱🏉🎳⛳️🚵🚴🏁🏇🏆🎿🏂🏊🏄🎣☕️🍵🍶🍼🍺🍻🍸🍹🍷🍴🍕🍔🍟🍗🍖🍝🍛🍤🍱🍣🍥🍙🍘🍚🍜🍲🍢🍡🍳🍞🍩🍮🍦🍨🍧🎂🍰🍪🍫🍬🍭🍯🍎🍏🍊🍋🍒🍇🍉🍓🍑🍈🍌🍐🍍🍠🍆🍅🌽🏠🏡🏫🏢🏣🏥🏦🏪🏩🏨💒⛪️🏬🏤🌇🌆🏯🏰⛺️🏭🗼🗾🗻🌄🌅🌃🗽🌉🎠🎡⛲️🎢🚢⛵️🚤🚣⚓️🚀✈️💺🚁🚂🚊🚉🚞🚆🚄🚅🚈🚇🚝🚋🚃🚎🚌🚍🚙🚘🚗🚕🚖🚛🚚🚨🚓🚔🚒🚑🚐🚲🚡🚟🚠🚜💈🚏🎫🚦🚥⚠️🚧🔰⛽️🏮🎰♨️🗿🎪🎭📍🚩🇯🇵🇰🇷🇩🇪🇨🇳🇺🇸🇫🇷🇪🇸🇮🇹🇷🇺🇬🇧1⃣2⃣3⃣4⃣5⃣6⃣7⃣8⃣9⃣0⃣🔟🔢#⃣🔣⬆️⬇️⬅️➡️🔠🔡🔤↗️↖️↘️↙️↔️↕️🔄◀️▶️🔼🔽↩️↪️ℹ️⏪⏩⏫⏬⤵️⤴️🆗🔀🔁🔂🆕🆙🆒🆓🆖📶🎦🈁🈯️🈳🈵🈴🈲🉐🈹🈺🈶🈚️🚻🚹🚺🚼🚾🚰🚮🅿️♿️🚭🈷🈸🈂Ⓜ️🛂🛄🛅🛃🉑㊙️㊗️🆑🆘🆔🚫🔞📵🚯🚱🚳🚷🚸⛔️✳️❇️❎✅✴️💟🆚📳📴🅰🅱🆎🅾💠➿♻️♈️♉️♊️♋️♌️♍️♎️♏️♐️♑️♒️♓️⛎🔯🏧💹💲💱©®™❌‼️⁉️❗️❓❕❔⭕️🔝🔚🔙🔛🔜🔃🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕖🕗🕘🕙🕚🕡🕢🕣🕤🕥🕦✖️➕➖➗♠️♥️♣️♦️💮💯✔️☑️🔘🔗➰〰〽️🔱◼️◻️◾️◽️▪️▫️🔺🔲🔳⚫️⚪️🔴🔵🔻⬜️⬛️🔶🔷🔸🔹😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃👫👪👬👭💏💑👯🙆🙅💁🙋💆💇💅👰🙎🙍🙇🎩👑👒👟👞👡👠👢👕👔👚👗🎽👖👘👙💼👜👝👛👓🎀🌂💄💛💙💜💚❤️💔💗💓💕💖💞💘💌💋💍💎👤👥💬👣💭🐶🐺🐱🐭🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩🐾💐🌸🌷🍀🌹🌻🌺🍁🍃🍂🌿🌾🍄🌵🌴🌲🌳🌰🌱🌼🌐🌞🌝🌚🌑🌒🌓🌔🌕🌖🌗🌘🌜🌛🌙🌍🌎🌏🌋🌌🌠⭐️☀️⛅️☁️⚡️☔️❄️⛄️🌀🌁🌈🌊🎍💝🎎🎒🎓🎏🎆🎇🎐🎑🎃👻🎅🎄🎁🎋🎉🎊🎈🎌🔮🎥📷📹📼💿📀💽💾💻📱☎️📞📟📠📡📺📻🔊🔉🔈🔇🔔🔕📢📣⏳⌛️⏰⌚️🔓🔒🔏🔐🔑🔎💡🔦🔆🔅🔌🔋🔍🛁🛀🚿🚽🔧🔩🔨🚪🚬💣🔫🔪💊💉💰💴💵💷💶💳💸📲📧📥📤✉️📩📨📯📫📪📬📭📮📦📝📄📃📑📊📈📉📜📋📅📆📇📁📂✂️📌📎✒️✏️📏📐📕📗📘📙📓📔📒📚📖🔖📛🔬🔭📰🎨🎬🎤🎧🎼🎵🎶🎹🎻🎺🎷🎸👾🎮🃏🎴🀄️🎲🎯🏈🏀⚽️⚾️🎾🎱🏉🎳⛳️🚵🚴🏁🏇🏆🎿🏂🏊🏄🎣☕️🍵🍶🍼🍺🍻🍸🍹🍷🍴🍕🍔🍟🍗🍖🍝🍛🍤🍱🍣🍥🍙🍘🍚🍜🍲🍢🍡🍳🍞🍩🍮🍦🍨🍧🎂🍰🍪🍫🍬🍭🍯🍎🍏🍊🍋🍒🍇🍉🍓🍑🍈🍌🍐🍍🍠🍆🍅🌽🏠🏡🏫🏢🏣🏥🏦🏪🏩🏨💒⛪️🏬🏤🌇🌆🏯🏰⛺️🏭🗼🗾🗻🌄🌅🌃🗽🌉🎠🎡⛲️🎢🚢⛵️🚤🚣⚓️🚀✈️💺🚁🚂🚊🚉🚞🚆🚄🚅🚈🚇🚝🚋🚃🚎🚌🚍🚙🚘🚗🚕🚖🚛🚚🚨🚓🚔🚒🚑🚐🚲🚡🚟🚠🚜💈🚏🎫🚦🚥⚠️🚧🔰⛽️🏮🎰♨️🗿🎪🎭📍🚩🇯🇵🇰🇷🇩🇪🇨🇳🇺🇸🇫🇷🇪🇸🇮🇹🇷🇺🇬🇧1⃣2⃣3⃣4⃣5⃣6⃣7⃣8⃣9⃣0⃣🔟🔢#⃣🔣⬆️⬇️⬅️➡️🔠🔡🔤↗️↖️↘️↙️↔️↕️🔄◀️▶️🔼🔽↩️↪️ℹ️⏪⏩⏫⏬⤵️⤴️🆗🔀🔁🔂🆕🆙🆒🆓🆖📶🎦🈁🈯️🈳🈵🈴🈲🉐🈹🈺🈶🈚️🚻🚹🚺🚼🚾🚰🚮🅿️♿️🚭🈷🈸🈂Ⓜ️🛂🛄🛅🛃🉑㊙️㊗️🆑🆘🆔🚫🔞📵🚯🚱🚳🚷🚸⛔️✳️❇️❎✅✴️💟🆚📳📴🅰🅱🆎🅾💠➿♻️♈️♉️♊️♋️♌️♍️♎️♏️♐️♑️♒️♓️⛎🔯🏧💹💲💱©®™❌‼️⁉️❗️❓❕❔⭕️🔝🔚🔙🔛🔜🔃🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕖🕗🕘🕙🕚🕡🕢🕣🕤🕥🕦✖️➕➖➗♠️♥️♣️♦️💮💯✔️☑️🔘🔗➰〰〽️🔱◼️◻️◾️◽️▪️▫️🔺🔲🔳⚫️⚪️🔴🔵🔻⬜️⬛️🔶🔷🔸🔹😄😃😀😊☺️😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝️👏💪🚶🏃💃")
local badwordGroup = msg.text:match("كس") or msg.text:match("کیر") or msg.text:match("كون") or msg.text:match("کسکش") or msg.text:match("کونی") or msg.text:match("sex") or msg.text:match("کونکش") or msg.text:match("کیری مقام") or msg.text:match("خارکسده") or msg.text:match("دیوث") or msg.text:match("bk") or msg.text:match("کیرم دهنت") or msg.text:match("اجنده") or msg.text:match("بیناموس") or msg.text:match("بی ناموس")or msg.text:match("مادرجنده")or msg.text:match("مادرتو")or msg.text:match("شاش پاکتی")or msg.text:match("شل مغز")
local tagGroup = msg.text:match("@") or msg.text:match("#")

if redis:get(MARDONA) and not is_momod(msg) and msg.media then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona1) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona2) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona3) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona4) and not is_momod(msg) and msg.media and msg.media.type == 'stickerw.eebp' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona5) and not is_momod(msg) and msg.media   and msg.media.type == 'document' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona6) and not is_momod(msg) and msg.media and msg.media.type== "mp4" then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona7) and not is_momod(msg) and msg.fwd_from then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona8) and msg.reply_id and not is_momod(mag) then
    delete_msg(msg.id, ok_cb, true)
elseif linkGroup and redis:get(mardona9) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif emojiGrouo and redis:get(mardona10) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif badwordGroup and redis:get(mardona11) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true)
elseif tagGroup and redis:get(mardona12) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
    return msg
end
return msg 
end
local function MARDONA(msg, matches) 
    local MARDONA = msg['id'] 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'lock' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:set(MARDONA, true) 
    local text = 'Media has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:del(MARDONA) --BY @MARDONA
    local text = 'Media has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'photo' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:set(mardona1, true) 
    local text = 'Photo has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'photo' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:del(mardona1) 
    local text = 'Photo has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'links' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:set(mardona9, true) 
    local text = 'Links has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'links' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:del(mardona9) 
    local text = 'Links has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'audio' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:set(mardona2, true) 
    local text = 'Audio has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'audio' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:del(mardona2) 
    local text = 'Audio has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'emoji' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:set(mardona10, true) 
    local text = 'Emoji has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'emoji' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:del(mardona10) 
    local text = 'Emoji has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'badword' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:set(mardona11, true) 
    local text = 'Badword has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'badword' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:del(mardona11) 
    local text = 'Badword has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)    
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:set(mardona12, true) 
    local text = 'Tag has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:del(mardona12) --BY @MARDONA
    local text = 'Tag has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)       

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:set(mardona3, true) 
    local text = 'Video has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:del(mardona3) 
    local text = 'Video has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'sticker' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:set(mardona4, true) 
    local text = 'Sticker has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'sticker' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:del(mardona4) 
    local text = 'Sticker has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'documents' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:set(mardona5, true) 
    local text = 'Documents has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'documents' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:del(mardona5) 
    local text = 'Documents has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:set(mardona7, true) 
    local text = 'Fwd has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:del(mardona7) 
    local text = 'Fwd has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:set(mardona8, true) 
    local text = 'Reply has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:del(mardona8) 
    local text = 'Reply has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)    

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'gifs' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:set(mardona6, true) 
    local text = 'Gifs has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'gifs' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:del(mardona6) 
    local text = 'Gifs has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

end
end


return { 
    patterns = { 
    '^[!/#](local) (media)$', 
    '^[!/#](unlock) (media)$', 
    '^[!/#](lock) (photo)$', 
    '^[!/#](unlock) (photo)$', 
    '^[!/#](lock) (audio)$', 
    '^[!/#](unlock) (audio)$', 
    '^[!/#](lock) (video)$', 
    '^[!/#](unlock) (video)$', 
    '^[!/#](lock) (sticker)$', 
    '^[!/#](unlock) (sticker)$', 
    '^[!/#](lock) (documents)$', 
    '^[!/#](unlock) (documents)$',
    '^[!/#](lock) (fwd)$', 
    '^[!/#](unlock) (fwd)$',
    '^[!/#](lock) (gifs)$', 
    '^[!/#](lock) (links)$', 
    '^[!/#](unlock) (links)$',
    '^[!/#](lock) (emoji)$', 
    '^[!/#](unlock) (emoji)$',
    '^[!/#](lock) (tag)$', 
    '^[!/#](unlock) (tag)$',
    '^[!/#](lock) (badword)$', 
    '^[!/#](unlock) (badword)$',
    '^[!/#](unlock) (gifs)$',
    '^[!/#](lock) (reply)$', 
    '^[!/#](unlock) (reply)$',
	'%[(document)%]',
	'%[(photo)%]',
	'%[(video)%]',
	'%[(audio)%]',
	'%[(contact)%]',
    },
    run = MARDONA, 
    pre_process = pre_process 
} 
end
--[[
     by @knight_team
]]