# Description:
#   hubot scripts to greet members friendly
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   kechol

module.exports = (robot) ->

  hellos = [
    '(=ﾟωﾟ)ﾉぃょぅ'
    '(*」´∀｀)」ｺﾝﾁﾜｧｧｧｧｧｧｧｧｧｧｧｧ'
    'ヾ(=´・∀・｀=)こんちぃ～'
    'ヾ(>ω<)ﾉ【ｨｮｰｩ】ヾ(>ω<)ﾉ'
    'ｺﾝﾁｬ━━｡+ﾟ*(w´∀｀w)*ﾟ+｡━━ｧｧ!!!'
    '☆*｡:ﾟ*ｺﾝﾆヾ(*ﾟ∀ﾟ*)ﾉﾁﾜｧ.ﾟ｡+*☆'
    '(｡　･　ｖ　･　｡)ﾉ ｺﾝﾁﾜ♪'
    '|^・ω・)/ ﾊﾛｰ♪'
  ]

  byes = [
    'ヽ( ´ー｀)ノ　まったね～'
    'ｻｮﾅﾗｺｰﾗｽ ｻﾝ!ﾊｲ!|｡・ω・)ﾉ　(・∀・(・∀・(・∀・*)ﾊﾞｰｲｰ♪'
    'ヾ(･д･)Byёヾ(･д･)Byё'
    'でゎ|ﾟ∀ﾟ)ﾉ)))) ﾊﾞﾊﾞｰｨ　|)≡ｻｯ'
    'またねぇ(・ω・)ノ▽'
    'ヾ｜*￣ー￣｜*￣∇￣｜/"ﾏﾀﾈｰ♪'
    'ﾊﾞｲﾊﾞｲ♪･:*:･ﾟ★,｡･:*:･ﾟ☆(@￣∇￣@)ﾉ~~~'
    'o(￣∇￣o)ｸﾞｯ!!(∇￣ )ｸﾙ(　　)ｸﾙ( ￣∇)ｸﾙ(o￣∇￣)ﾉﾊﾞｰｲ'
  ]

  thanks = [
    'あ(￣○￣)り(￣◇￣)が(￣△￣)と(￣0￣)う(￣ー￣)'
    "★☆｡.:*:･''ﾟ★('-^v)Thanks(v^-')★｡.:*:･''☆★"
    'ﾄﾞﾓヽ(*´ω｀*))((*´ω｀*)ﾉﾄﾞﾓ'
    'ｻﾝｷｭｩｺｰﾗｽ ｻﾝ!ﾊｲ!|｡・ω・)ﾉ　(・∀・(・∀・(・∀・*)ｻｰﾝｷｭｰ♪'
    'd(>ω<*)☆ｽﾍﾟｼｬﾙｻﾝｸｽ☆(*>ω<)b'
    'アリガト━((*´д｀爻´д｀*))━!!!!'
    'тндйк[o・ω・]人[・ω・o] уoц'
    'A(*゜Д゜*)R(д゜* )I(゜ )G( )A( ゜)T(* ゜д)O(*゜∀゜*)ノ~☆'
  ]

  busys = [
    'ｵﾂｶﾚﾁｬ━ヽ(*ﾟ∀ﾟ)ﾉヽ(*ﾟ∀ﾟ*)ﾉヽ(ﾟ∀ﾟ*)ﾉ━ｧｧﾝ!!!'
    '(｡･ω･｡)ﾉｼ━ｵ━ﾂ━ｶ━ﾚ━ｻ━ﾏ━…☆彡'
    'おつであります♪　(ｃ_･｀｡)ﾍﾍ(･ω･`｡)ﾓﾐﾓﾐ'
    'ｵﾂｶﾚｻﾏ━ﾟ+｡:.ﾟ(*´艸 ｀*)ﾟ.:｡+ﾟ━ｯ♪'
    '(*｀・ω´・bﾟ･*:.。.☆【オツカレサマ 】☆.。.:*･ﾟ'
    'ｵﾂ━━(,,・ω・,,)(,,・ω・,,)(,,・ω・,,)━━!!'
    '(●´･∀･｀)σﾟ+｡*ﾟ+｡【お】【つ】【か】【れ】【ぇ】｡+ﾟ*｡+ﾟ a(｀･ω･´○) '
    'ォッヵレサ―ヾ(★´∀｀☆)ノ―ﾝｯｯ♪'
  ]

  congrats = [
    'ｲｲﾈ(ﾟ∀ﾟ≡ｲｲﾈ(ﾟ∀ﾟ≡ﾟ∀ﾟ)ｲｲﾈ≡ﾟ∀ﾟ)超ｲｲﾈｰ!!'
    'ｵﾒﾃﾞﾄ( ^_^)∠※PAN!。.*:・"゜☆。.:*:・"゜★゜"・:*＼(^O^)／'
    'ワッショイヽ(゜∀゜)メ(゜∀゜)メ(゜∀゜)ノワッショイ'
    'ｵﾒﾃﾞﾄｺｰﾗｽ ｻﾝ!ﾊｲ! /･ω･)/~~(´∀｀*)(´∀｀*)(´∀｀*)ｵ～ﾒ～'
    '~~┗─v(*･д･)｡o○｡o○祝○o｡○o｡(･д･*)v─┛~~'
    '*・д・)*・д・)*・д・)ノ~★ォメデトゥ★~ヽ(・д・*(・д・*(・д・*'
    'ﾊﾟﾁﾊﾟﾁ☆(o´∀｀ﾉﾉﾞ【★｡.+:ﾟ･*ォﾒﾃﾞﾄゥ*･ﾟ:+.｡★】'
    'ﾜｰｲ♪☆彡(ﾉﾟ▽ﾟ)ﾉ☆彡ﾍ(ﾟ▽ﾟﾍ)☆彡(ﾉﾟ▽ﾟ)ﾉ☆彡ﾜｰｲ♪'
  ]

  answers = [
    'ｵｯｹｰ★⌒c(￣▽￣)ﾏｶｼﾄｷｨ！'
    'ﾖﾛ───ヽ(○｀･v･)人(･v･´●)ﾉ───ｼｸ♪'
    '((ﾉ(_ _ ﾉ)ﾖﾛｼｸｵﾈｶﾞｲｼﾏｽ'
    '夜露死苦(ｷ￣Д￣)y─┛~~~'
    '(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ(ﾟﾛﾟ)ﾑﾘ'
    'ﾖﾛ ﾟ+.ﾟヽ(*>∇<)ﾉﾟ.+ﾟ ｼｸ♪'
    'OK━承諾━許可━採用━ヽ(　*ﾟДﾟ)ﾉ━採用━許可━承諾━OK♪'
    '（≧▽≦）ゝ了解シマシタ!!'
  ]

  sorrys = [
    'ゴメンネm(；ω；｀m)三(m´；ω；)mゴメンネ'
    'すいませんでした　ﾍﾟｺﾘ(o_ _)ｏ))'
    'ｺﾞﾒ━━━ﾟ(ﾉД｀ﾟ)ﾟ。━━━ﾝ!!'
    '許せ♪（＾ω＾）ニコッ'
    '反省隊m(・ω・｀)m(´・ω・｀)m(´・ω・)m参上'
    '(*_ _)人ゴメンナサイ'
    '。゜゜(´□｀。)°゜。ワーン!!ごめんよぉ!!'
    '(；・д・Aそりゃ失礼'
  ]

  cheers = [
    'il||li _|￣|○ヽ(･ω･｀)ﾎﾟﾝﾎﾟﾝ♪'
    'ヽ(●*´∪`*《.+ﾟ*どんまぃ｡:ﾟ+》q'
    'Σd(*O∀O.+ﾟ*どんまぃ｡:ﾟ+O∀O*)b☆'
    "v(*'∇｀*)《どんまぃです♪♪》^☆"
    '|ﾟ+｡:ﾟ大丈夫だｙ回ﾟ:｡+ﾟ|q∀｀◎)p((+ﾟ*｡ドﾝﾏｨ:ﾟ+)) '
    '＼(*゜ロ＼)*゜ロ＼)*゜ロ＼)ど...ど...ど...どんまい! '
    'ｽﾄﾚｽﾀﾒﾙﾄ（*´し｀）／（・・；）ﾊｹﾞﾙﾖ '
    'ｮﾁヽ[・ω・`●]ｮﾁ '
  ]

  mornings = [
    'オハ───ヽ(○｀･v･)人(･v･´●)ﾉ───ｯ!!!'
    'o(ﾟ∀ﾟ)o ｵｯ ヽ(ﾟ∀ﾟ)ﾉ ﾊｰ'
    'Oo(っд･｀｡)ｵﾊﾖｫ…'
    '(*´_●｀)ﾉ(*´_○｀)ﾉ(*´_●｀)ﾉｵﾊｵﾊｵﾊ♪'
    '(。・∀・)ノ゛おっは～'
    '(*´･д･)ォ(´･д･｀)ﾊ(･д･｀*)ョ―!'
    'ｵﾊﾖ━━━ヽ(*ﾟ∀ﾟ)ﾉ||ヽ(･∀･)ﾉ||ヽ(ﾟ∀ﾟ*)ﾉ━━━ｩ♪'
    '【ぉ】【は】【ょ】ョ*・д・*)ノ″'
  ]

  nights = [
    'ヾ(*￣￣￣￣▽￣￣￣￣*)ノこんばんわ♪'
    'こ━━━ヽ(｡・∀-)人(-∀・｡)ﾉ━━━ん♪'
    '(o´・ω・｀)⊃｀ノ (*｀･ω･´)八゛｀ノ(*｀･∀･´)ﾉ八ー!!!'
    'd(´∀’★*☆*ｺﾝﾊﾞﾝ㍗*☆*★’∀｀)b'
    'こんばんわ━( ・∀・)ノ□☆□ヽ(・∀・ )━ｯ!'
    'ｵﾊﾖｳｶ!?>Σ(ﾟДﾟ;≡;ﾟдﾟ) <ｲﾔｺﾝﾊﾞﾝﾜ!！'
    '⊃｀ﾉ八゛｀ﾉゎ～♪ヽ(★-Д-★)ﾉ〃'
    '((ヽ(●´Ｃ_,｀●)こんばんわぁぁ'
  ]

  robot.hear /こんにち(は|わ)/, (msg) ->
    msg.send msg.random hellos

  robot.hear /ちわ/, (msg) ->
    msg.send msg.random hellos

  robot.enter (msg) ->
    msg.send msg.random hellos

  robot.hear /(ばいば(ー|〜)*い|さよう?なら)/, (msg) ->
    msg.send msg.random byes

  robot.leave (msg) ->
    msg.send msg.random byes

  robot.hear /ありがと(う|ー|〜|っ|！)+/, (msg) ->
    msg.send msg.random thanks

  robot.hear /(了解|承知|わかり)(いた|致)?し?(ました|です)/, (msg) ->
    msg.send msg.random thanks

  robot.hear /お(つか|疲)れ/, (msg) ->
    msg.send msg.random busys

  robot.hear /(終わり|完了し|終了し|リリースし|でき|ておき)ました/, (msg) ->
    msg.send msg.random congrats

  robot.hear /【祝】/, (msg) ->
    msg.send msg.random congrats

  robot.respond /祝って/, (msg) ->
    msg.send msg.random congrats

  robot.hear /((よろ|宜)しく)?お?(願|ねが)い((致|いた)?します|できますか)/, (msg) ->
    msg.send msg.random answers

  robot.hear /(ごめん|すみません|申し訳|もうしわけ|失礼(致|いた)?しました)/, (msg) ->
    msg.send msg.random cheers

  robot.hear /(疲|つか)れた/, (msg) ->
    msg.send msg.random cheers

  robot.hear /(辛|つら)い/, (msg) ->
    msg.send msg.random cheers

  robot.respond /(こら|ふざけ(ん|る)な|謝(れ|りなさい))$/, (msg) ->
    msg.send msg.random sorrys

  robot.hear /こんばん(は|わ)/, (msg) ->
    msg.send msg.random nights

  robot.hear /おはよ(う|ー|〜|っ|！)+/, (msg) ->
    msg.send msg.random mornings
