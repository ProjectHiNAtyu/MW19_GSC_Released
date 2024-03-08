//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2024/03/09
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2024/03/09
// YouTube : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter : https://twitter.com/H1NAtyu
// Discord : hinatapoko
//=================================================================//

//:::::::::::::::::::::::::::::::::::::::::::::::::://
// [ English ]
//   < CoD GSC (C++) syntax explanation >
//     @ level                    = modifier for the entire room
//     @ level.players[i]         = 1 player participating in the room
//     @ self                     = myself where the function is being executed
//     @ thread                   = Execute the specified function in a subthread
//     @ Endon( "event_name" )    = Terminates function processing when the specified event name is issued.
//     @ WaitTill( "event_name" ) = Waits until the specified event name is issued, and then resumes subsequent processing
//     @ Notify( "event_name" )   = Publish the specified event name
//     @ Destroy( )               = Delete the specified variable and its actual state
//     @ IsDefined( variable )    = Check if the specified variable has been created
//     @ ^0                       = Color code (Black)
//     @ ^1                       = Color code (Red)
//     @ ^2                       = Color code (Green)
//     @ ^3                       = Color code (Yellow)
//     @ ^4                       = Color code (Blue)
//     @ ^5                       = Color code (Cyan)
//     @ ^6                       = Color code (Pink)
//     @ ^7                       = Color code (White)
//     @ wait                     = Wait for the specified time
// ---------------------------------------------
// [ Japanese ]
//   < CoD GSC (C++) 構文解説 >
//     @ level                    = 部屋全体に対する修飾子
//     @ level.players[i]         = 部屋に参加しているプレイヤー1個人
//     @ self                     = 関数が実行されている自分自身
//     @ thread                   = 指定した関数をサブスレッドで実行する
//     @ Endon( "event_name" )    = 指定したイベント名が発行されたら、関数の処理を終了する
//     @ WaitTill( "event_name" ) = 指定したイベント名が発行されるまで待機し、イベントが発行されたら、以降の処理を再開する
//     @ Notify( "event_name" )   = 指定したイベント名を発行する
//     @ Destroy( )               = 指定した変数とその実態を削除する
//     @ IsDefined( variable )    = 指定した変数が作成されているか調べる
//     @ ^0                       = カラーコード (黒)
//     @ ^1                       = カラーコード (赤)
//     @ ^2                       = カラーコード (緑)
//     @ ^3                       = カラーコード (黄色)
//     @ ^4                       = カラーコード (青)
//     @ ^5                       = カラーコード (水色)
//     @ ^6                       = カラーコード (ピンク)
//     @ ^7                       = カラーコード (白)
//     @ wait                     = 指定した時間分待機する
//:::::::::::::::::::::::::::::::::::::::::::::::::://





//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start)
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
Main( )
{
    level.MODDEF = SpawnStruct( );

    level.MODDEF.LN_EN                  = 0;
    level.MODDEF.LN_JA                  = 1;
    level.MODDEF.LN_CN                  = 2;
    level.MODDEF.LN_RU                  = 3;


    level.MODDEF.LV_UNVERIFIED          = 0;
    level.MODDEF.LV_VERIFIED            = 1;
    level.MODDEF.LV_VIP                 = 2;
    level.MODDEF.LV_ADMIN               = 3;
    level.MODDEF.LV_COHOST              = 4;
    level.MODDEF.LV_HOST                = 5;


    level.MODDEF.AR_SELF                = 0;
    level.MODDEF.AR_LEVEL               = 1;
    level.MODDEF.AR_DVAR                = 2;
    level.MODDEF.AR_PERK                = 3;
    level.MODDEF.AR_PLAYER              = 4;
    level.MODDEF.AR_DEVIDE              = 5;
    level.MODDEF.AR_CONTENT             = 6;
    level.MODDEF.AR_LVCONTENT           = 7;
    level.MODDEF.AR_DEVIDEVOL           = 8;
    level.MODDEF.AR_DEVIDELEV           = 9;
    level.MODDEF.AR_SUBMENU             = 10;
    
    
    level.MODDEF.MOD_INITIALIZE         = 0;
    level.MODDEF.MOD_PROCESSING         = 1;
    level.MODDEF.MOD_FINALIZE           = 2;
    
    
    level.MODDEF.MOD_DISABLED           = 0;
    level.MODDEF.MOD_ENABLED            = 1;
    level.MODDEF.MOD_NOTONF             = 2;
    level.MODDEF.MOD_REFLESH            = 3;
    level.MODDEF.MOD_FASTREFLESH        = 4;
    

    level.MODDEF.VALUE_ROOT             = 0;


    level.MODDEF.LY_ROOT                = 0;
    level.MODDEF.LY_CREDIT              = 1;
    level.MODDEF.LY_MAINMODS            = 2;
    level.MODDEF.LY_LANGUAGES           = 3;
    level.MODDEF.LY_DESIGN              = 4;
    level.MODDEF.LY_MESSAGES            = 5;
    level.MODDEF.LY_COMBATASSIST        = 6;
    level.MODDEF.LY_PERKS               = 7;
    level.MODDEF.LY_VISIONS             = 8;
    level.MODDEF.LY_FUNNY               = 9;
    level.MODDEF.LY_MODELS              = 10;
    level.MODDEF.LY_WEAPONS             = 11;
    level.MODDEF.LY_CUSTOMWEAPONS       = 12;
    level.MODDEF.LY_BULLETS             = 13;
    level.MODDEF.LY_POPULAR             = 14;
    level.MODDEF.LY_KILLSTREAKS         = 15;
    level.MODDEF.LY_CUSTOMKILLSTREAKS   = 16;
    level.MODDEF.LY_POWERED             = 17;
    level.MODDEF.LY_AIMBOTS             = 18;
    level.MODDEF.LY_VEHICLES            = 19;
    level.MODDEF.LY_SPAWNS              = 20;
    level.MODDEF.LY_GAMESETTINGS        = 21;
    level.MODDEF.LY_PLAYERSMOD          = 22;
    level.MODDEF.LY_ALLPLAYERS          = 23;

    level.MODDEF.LY_PACKAGE_MODELS      = 30;
    level.MODDEF.LY_FLAG_MODELS         = 31;
    level.MODDEF.LY_DOGTAG_MODELS       = 32;
    level.MODDEF.LY_VEHICLE_MODELS      = 33;
    level.MODDEF.LY_PROP_MODELS         = 34;
    level.MODDEF.LY_MAP_MODELS          = 35;

    level.MODDEF.LY_WP_AR               = 40;
    level.MODDEF.LY_WP_SMG              = 41;
    level.MODDEF.LY_WP_LMG              = 42;
    level.MODDEF.LY_WP_MR               = 43;
    level.MODDEF.LY_WP_SR               = 44;
    level.MODDEF.LY_WP_PS               = 45;
    level.MODDEF.LY_WP_SG               = 46;
    level.MODDEF.LY_WP_EP               = 47;
    
    level.MODDEF.LY_PERK_1              = 50;
    level.MODDEF.LY_PERK_2              = 51;
    level.MODDEF.LY_PERK_3              = 52;
    
    level.MODDEF.LY_FORGE               = 60;
    level.MODDEF.LY_TURRET              = 61;
    level.MODDEF.LY_MEXICANWAVE         = 62;
    level.MODDEF.LY_ATTRACTION          = 63;
    level.MODDEF.LY_TORNADO             = 64;
    
    level.MODDEF.LY_ACECOMBAT           = 70;
    level.MODDEF.LY_DEFVEHICLES         = 75;

    level.MODDEF.LY_PLAYERSREF          = 100;

    level.lvlStat = [];


    // EN : Subthread OnPlayerConnect( ) for the entire room
    // JA : 部屋全体に OnPlayerConnect( ) をサブスレッドで実行する
    level thread OnPlayerConnected( );

    // EN : Subthread OnLobbyPlayEnded( ) for the entire room
    // JA : 部屋全体に OnLobbyPlayEnded( ) をサブスレッドで実行する
    level thread OnLobbyPlayEnded( );
}



//++++++++++++++++++++++++++++++
// EN : Processing executed when the match ends
// JA : 試合が終了した時に実行される処理
//++++++++++++++++++++++++++++++
OnLobbyPlayEnded( )
{
    // EN : Wait for "game is over"
    // JA : 「試合が終了した」ことを待機する
    level WaitTill( "game_ended" );
    
}



//++++++++++++++++++++++++++++++
// EN : Processing when a player connects to a room
// JA : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
OnPlayerConnected( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );


    // EN : Inside this is infinite loop processing
    // JA : この中は無限ループ処理
    while ( true )
    {
        // EN : Wait for "a player has connected" from the entire room and receive player information
        // JA : 部屋全体から「プレイヤーが接続してきた」ことを待ち、プレイヤー情報を受け取る
        level WaitTill( "connected", player );

        // EN : Run OnPlayerSpawned( ) in a subthread for connected players
        // JA : 接続されたプレイヤーに対して OnPlayerSpawned( ) をサブスレッドで実行する
        player thread OnPlayerSpawned( );

        // EN : Run OnPlayerSpawned( ) in a subthread for connected players
        // JA : 接続されたプレイヤーに対して OnPlayerSpawned( ) をサブスレッドで実行する
        player thread OnPlayerDied( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing that occurs when a player spawns in-game
// JA : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
OnPlayerSpawned( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    // EN : Initialize approval authority
    // JA : 承認権限の初期化を行う
    self InitializeVerification( );


    while ( true )
    {
        // EN : Wait for yourself to "spawn in-game"
        // JA : 自分が「インゲーム上にスポーンした」ことを待つ
        self WaitTill( "spawned_player" );

        // EN : Display a "Welcome" message every time you spawn
        // JA : スポーン時に毎回「ようこそ」メッセージを表示する
        self ShowWelocomeMessage( );

        // EN : Automatically perform each function when you respawn after you die
        // JA : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
        self RecoveryFunctions( );
    }
}



//++++++++++++++++++++++++++++++
// EN : What happens when a player dies
// JA : プレイヤーが死んだときに実行される処理
//++++++++++++++++++++++++++++++
OnPlayerDied( )
{
    level Endon( "game_ended" );
    self Endon( "disconnect" );

    while ( true )
    {
        // EN : Wait for yourself to "dead"
        // JA : 自分が「死んだ」ことを待つ
        self WaitTill( "death" );
    }
}



//++++++++++++++++++++++++++++++
// EN : Automatically perform each function when you respawn after you die
// JA : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
//++++++++++++++++++++++++++++++
RecoveryFunctions( )
{
    
}



//++++++++++++++++++++++++++++++
// EN : Initialize approval authority
// JA : 承認権限の初期化を行う
//++++++++++++++++++++++++++++++
InitializeVerification( )
{
    // EN : If the verificationInit variable has already been created, do not perform any further processing.
    // JA : 既に verificationInit 変数が作られている場合は、以降の処理を行わない
    if ( IsDefined( self.verificationInit ) )
    {
        return;
    }

    // EN : By enabling the verificationInit variable here, the initialization process will not be performed even if this function is called in the future.
    // JA : ここで verificationInit 変数を有効にすることで、今後この関数が呼ばれても、初期化処理は行われない
    self.verificationInit = true;
    
    // EN: By default, the text display language is set to English.
    // JA: 初期状態では文字表示の言語を英語にする
    self.curLang = level.MODDEF.LN_EN;
    
    // EN: Assign equivalent privileges to the host
    // JA: ホストに相当する権限を割り振る
    self.verificationStatusIndex = level.MODDEF.LV_HOST;

    // EN: Create a variable that only you will use while processing the mod
    // JA: 自分のみがModの処理中に使う変数を作成する
    self InitializeSelfData( );
    
    // EN: Start button monitoring process
    // JA: ボタンモニタリング処理を開始する
    self thread OnButtonMonitoring( );
}



//++++++++++++++++++++++++++++++
// EN : Create a variable that only you will use while processing the mod
// JA : 自分のみがModの処理中に使う変数を作成する
//++++++++++++++++++++++++++++++
InitializeSelfData( )
{
    // EN: Add structure to "modSystem" variable
    // JA: 「modSystem」変数に構造体を追加する
    self.modSystem = SpawnStruct( );

    // EN: Define a variable array for each item.
    // JA: 各項目の変数配列を定義する
    self.optStat = [];
    
    // EN: Assume that the button monitoring process has not been executed
    // JA: ボタンモニタリング処理が未実行であるとする
    self.modSystem.buttonMonitoring = false;

    // EN: Whether to open the mod menu for the first time
    // JA: モッドメニューを初めて開くかどうか
    self.modSystem.menuFirstOpen = true;

    // EN: Whether the mod menu is open
    // JA: モッドメニューを開いているかどうか
    self.modSystem.menuActive = false;

    // EN: Can you operate the mod menu
    // JA: モッドメニューを操作できるかどうか
    self.modSystem.menuControl = true;

    // EN: Current mod menu open page
    // JA: 現在のモッドメニューの開いているページ
    self.modSystem.menuLayerCurrent = level.MODDEF.VALUE_ROOT;

    // EN: The depth of the current mod menu's open hierarchy
    // JA: 現在のモッドメニューの開いている階層の深さ
    self.modSystem.menuLayerDepth = level.MODDEF.VALUE_ROOT;

    // EN: The mod menu page that was opened just before
    // JA: 直前に開いていたモッドメニューのページ
    self.modSystem.menuLayerPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuLayerCurrent;

    // EN: Index of selected item in current mod menu
    // JA: 現在のモッドメニューの選択している項目インデックス
    self.modSystem.menuOptionCurrent = level.MODDEF.VALUE_ROOT;

    // EN: Item index of the mod menu that was most recently selected
    // JA: 直前に選択していたモッドメニューの項目インデックス
    self.modSystem.menuOptionPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuOptionCurrent;
}



//++++++++++++++++++++++++++++++
// EN : Destroy variables that only you use while processing a mod (called when it becomes Unverified)
// JA : 自分のみがModの処理中に使う変数を破棄する（未承認になった時に呼ばれる）
//++++++++++++++++++++++++++++++
FinalizeSelfData( )
{
    wait 0.31;
    // EN: Issue a "RemoveAuth" event to yourself (this will end the looping function)
    // JA: 自分に対して「RemoveAuth」イベントを発行する（これでループ処理している関数が終了する）
    self Notify( "RemoveAuth" );

    // EN: Wait a little while for the loop to finish
    // JA: ループ処理が終了するのを少しだけ待つ
    WaitFrame( );

    // EN: Discard various variables
    // JA: 各種変数を破棄する
    self.modSystem.menuFirstOpen        = undefined;
    self.modSystem.menuActive           = undefined;
    self.modSystem.menuControl          = undefined;
    self.modSystem.menuLayerCurrent     = undefined;
    self.modSystem.menuLayerDepth       = undefined;
    self.modSystem.menuLayerPrevious    = undefined;
    self.modSystem.menuOptionCurrent    = undefined;
    self.modSystem.menuOptionPrevious   = undefined;
    self.modSystem.menuPlayer           = undefined;
    self.modSystem.buttonMonitoring     = undefined;
    self.modSystem.menuFunction         = undefined;
    self.modSystem.menuText             = undefined;
    self.modSystem                      = undefined;
    self.optStat                   = undefined;
}



//++++++++++++++++++++++++++++++
// EN : Check if you have been assigned permissions of "Unverified" or higher
// JA : 自分に「未承認」以上の権限が割り振られているか調べる
//++++++++++++++++++++++++++++++
IsVerified( )
{
    // EN: If the approval authority has not been initialized yet, it is considered "Unverified".
    // JA: まだ承認権限の初期化がされていない場合は「未承認」とみなす
    if ( !IsDefined( self.verificationInit ) )
    {
        return false;
    }

    // EN: Check if it is greater than or equal to "Unverified" and return the result
    // JA: 「Unverified」以上かどうかを確認して、その結果を返す
    if ( self.verificationStatusIndex <= level.MODDEF.LV_UNVERIFIED )
    {
        return false;
    }
    
    return true;
}



//++++++++++++++++++++++++++++++
// EN : Display a "Welcome" message
// JA : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
ShowWelocomeMessage( )
{
    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

    // EN : Get the translation equivalent to the specified text ID in the current language
    // JA : 現在の言語で、指定したテキストIDに相当する翻訳を取得する
    l_textWelcome           = GetMultilingualText( self.curLang , "WelcomeTo" );
    l_textProjectName       = GetMultilingualText( self.curLang , "ProjectName" );
    l_textModdedLobby       = GetMultilingualText( self.curLang , "ModdedLobby" );
    
    l_textYourMenuStatus    = GetMultilingualText( self.curLang , "YourMenuStatus" );
    l_textVerifiedLevel     = GetMultilingualText( self.curLang , GetVerifiedText( self.verificationStatusIndex ) );
    l_textMenuDescription   = GetMultilingualText( self.curLang , "ModMenuOpenDescription" );
    l_textMenuLanguage      = GetMultilingualText( self.curLang , "ChangeLanguageDescription" );

    // EN : Display a message in the kill log area at the bottom left of your screen(The kill log has 6 lines, so fill in 3 blank lines)
    // JA : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( l_textMenuLanguage );
    self iPrintln( l_textMenuDescription );
    self iPrintln( l_textYourMenuStatus + l_textVerifiedLevel );
    self iPrintln( l_textWelcome + l_textProjectName + l_textModdedLobby );
}



//++++++++++++++++++++++++++++++
// EN : Allow player actions
// JA : プレイヤーの行動を許可する
//++++++++++++++++++++++++++++++
AllowPlayerMovements( )
{
    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

    // EN : Unfreeze state
    // JA : フリーズ状態を解除する
    self FreezeControls( false );
    
    // EN : be able to move
    // JA : 動けるようにする
    self AllowMovement( true );
    
    // EN : make it possible to run
    // JA : 走れるようにする
    self AllowSprint( true );
    
    // EN : allow jumping
    // JA : ジャンプができるようにする
    self AllowJump( true );
    
    // EN : Allows melee attacks
    // JA : 近接攻撃ができるようにする
    self AllowMelee( true );
    
    // EN : Allows attacks
    // JA : 攻撃ができるようにする
    self AllowFire( true );
}



//++++++++++++++++++++++++++++++
// EN : Button monitoring process
// JA : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
OnButtonMonitoring( )
{
    self Endon( "disconnect" );

    // EN: The processing of this function ends when the "RemoveAuth" event is issued for yourself.
    // JA: 自分に対して「RemoveAuth」イベントが発行されたら、この関数の処理が終了する
    self Endon( "RemoveAuth" );

    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

    // EN: If button monitoring processing has already been executed, do not perform subsequent processing.
    // JA: ボタンモニタリング処理が実行済みである場合、以降の処理を行わない
    if ( self.modSystem.buttonMonitoring == true )
    {
        return;
    }

    // EN: Mark button monitoring processing as executed
    // JA: ボタンモニタリング処理を実行済みとする
    self.modSystem.buttonMonitoring = true;


    // EN: Infinite loop only while button monitoring processing is running
    // JA: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( self.modSystem.buttonMonitoring == true )
    {
        // EN: If the "Aim" button and "Melee Attack" button are pressed at the same time
        // JA: 「エイム」ボタンと「近接攻撃」ボタンが同時に押されたら
        if ( self GetKeycodePressed( "Ads" , "Ads" ) && self GetKeycodePressed( "Melee" , "Melee" ) )
        {
            // EN : give specified weapon
            // JA : 指定の武器を与える
            self thread ProvideWeapon( /* weap */ "Random" , /* proj */ true , /* wpGroup */ undefined , /* attach */ "Random" , /* camo */ "Random" , /* cmGroup */ undefined , /* akimbo */ undefined , /* hand */ true , /* notice */ true , /* getID */ undefined );
            wait 0.3;
        }
        
        // EN: If the "Aim" and "Throw Tactical" buttons are pressed at the same time
        // JA: "エイム" ボタンと "タクティカルを投げる" ボタンが同時に押されたら
        if ( self GetKeycodePressed( "Ads" , "Ads" ) && self GetKeycodePressed( "Tactical" , "Tactical" ) )
        {
            // EN : Change language
            // JA : 言語を変更する
            self ChangeLanguage( );
            // EN : Display a "Welcome" message every time you spawn
            // JA : スポーン時に毎回「ようこそ」メッセージを表示する
            self ShowWelocomeMessage( );
            wait 0.3;
        }

        WaitFrame( );
    }
}



//++++++++++++++++++++++++++++++
// EN : General-purpose processing to display the fixed phrase "[Category] Sentence 1: Sentence 2"
// JA : "[カテゴリ] 文章1 : 文章2" という定型文を表示するための汎用処理
//++++++++++++++++++++++++++++++
ShowCenterMessage( selfLang , tagName , msg1 , msg2 , content , prefix )
{
    // EN : define empty string
    // JA : 空の文字列を定義
    l_Content = "";
    
    // EN : If sentence 2 is set, get the translation of sentence 2
    // JA : 文章2が設定されている場合は、文章2の翻訳を取得する
    if ( IsDefined( msg2 ) )
    {
        l_Content = " : ^5" + GetMultilingualText( selfLang , msg2 );
    }
    // EN : If a content sentence is set, set the sentence as is.
    // JA : コンテンツ文が設定されている場合は、そのままの文章を設定する
    else if ( IsDefined( content ) )
    {
        l_Content = " : ^5" + content;
    }
    
    // EN : If endings are set, add the ending translation to the end
    // JA : 語尾が設定されている場合は、語尾の翻訳を最後に追加する
    if ( IsDefined( prefix ) )
    {
        l_Content = l_Content + GetMultilingualText( selfLang , prefix );
    }

    // EN : Display fixed phrases in the center of the screen
    // JA : 定型文を画面中央に表示する
    self iPrintlnBold( GetMultilingualText( selfLang , tagName ) + GetMultilingualText( selfLang , msg1 ) + l_Content );
}



//++++++++++++++++++++++++++++++
// EN : Obtain input judgment results tailored to keyboard and controller
// JA : キーボード、コントローラーに合わせた入力判定結果を取得する
//++++++++++++++++++++++++++++++
GetKeycodePressed( kbType , controllerType )
{
    l_KeyType = "";

    // EN: If you are using a gamepad
    // JA: ゲームパッドを使用中の場合
    if ( self UsingGamepad( ) ) { l_KeyType = controllerType; }
    // EN: When using a keyboard and mouse
    // JA: キーボード・マウスを使用中の場合
    else                        { l_KeyType = kbType; }
    
    // EN: Get the input judgment corresponding to the specified key
    // JA: 指定のキーに相当する入力判定を取得する
    switch ( l_KeyType )
    {
        // EN: While the "Aim" button is pressed
        // JA: 「エイム」ボタンが押されている間
        case "Ads": return self AdsButtonPressed( );

        // EN: When the button to throw tactical is pressed
        // JA: タクティカルを投げるボタンが押されたら
        case "Tactical": return self SecondaryOffhandButtonPressed( );

        // EN: While the "Use" button is pressed
        // JA: 「使用」ボタンが押されている間
        case "Use": return self UseButtonPressed( );

        // EN: When the "Reload" button is pressed
        // JA: 「リロード」ボタンが押されたら
        case "Reload": return self ReloadButtonPressed( );

        // EN: When the "Melee Attack" button is pressed
        // JA: 「近接攻撃」ボタンが押されたら
        case "Melee": return self MeleeButtonPressed( );

        // EN: When the "Attack" button is pressed
        // JA: 「攻撃」ボタンが押されたら
        case "Attack": return self AttackButtonPressed( );

        // EN: When the button to throw lethal is pressed
        // JA: リーサルを投げるボタンが押されたら
        case "Lethal": return self FragButtonPressed( );

        // EN: When the "Crouch/Prone" button is pressed
        // JA: 「しゃがみ・伏せ」ボタンが押されたら
        case "Stance": return self StanceButtonPressed( );

        // EN: When the "Jump" button is pressed
        // JA: 「ジャンプ」ボタンが押されたら
        case "Jump": return self JumpButtonPressed( );

        // EN: When the "Run/Hold your breath" button is pressed
        // JA: 「走る・息止め」ボタンが押されたら
        case "Sprint": return self SprintButtonPressed( );

        // EN: If any other specific key is pressed
        // JA: それ以外の特定のキーが押されたら
        //default: return self scripts\mp\utility\player::_GetButtonPressed( l_KeyType );
        //default: return self ButtonPressed( l_KeyType );
        default:
            if ( !IsDefined( self.buttonspressed ) )            { return false; }
            if ( !IsDefined( self.buttonspressed[l_KeyType] ) ) { return false; }
            return self.buttonspressed[l_KeyType].pressed;

    }
}



//++++++++++++++++++++++++++++++
// EN : give specified weapon
// JA : 指定した武器を与える
//++++++++++++++++++++++++++++++
ProvideWeapon( weaponID , inProjectile , onlyGroup , attachmentID , camoID , camoGroup , akimbo , changeHand , notice , onlyGetID )
{ 
    l_WeaponArray = [];
    l_CamoArray = [];
    l_CamoID = camoID;

    // EN : If the weapon type is specified as "random"
    // JA : 武器種類が「ランダム」と指定されている場合
    if ( weaponID == "Random" )
    {
        // EN : Loop for the number of weapon type groups
        // JA : 武器種類のグループ数分ループ
        for ( weaponType = 0; weaponType <= 7; weaponType++ )
        {
            // EN : Assemble the weapon type string “weapon_??”
            // JA : 「weapon_??」という武器種類の文字列を組み立てる
            l_WeaponType = "weapon_";
            switch ( weaponType )
            {
                case 0: l_WeaponType += "assault"; break;
                case 1: l_WeaponType += "smg"; break;
                case 2: l_WeaponType += "lmg"; break;
                case 3: l_WeaponType += "sniper"; break;
                case 4: l_WeaponType += "dmr"; break;
                case 5: l_WeaponType += "shotgun"; break;
                case 6: l_WeaponType += "pistol"; break;
                case 7: l_WeaponType += "projectile"; break;
            }
            // EN : Add the assembled weapon type string to the array
            // JA : 組み立てた武器種類の文字列を配列に追加する
            l_WeaponArray = scripts\engine\utility::Array_Add( l_WeaponArray , l_WeaponType );
        }

        // EN : Exclude explosives from array if random weapons do not include explosives
        // JA : ランダム武器に爆発物を含めない場合は、配列から爆発物を除外する
        if ( !IsDefined( inProjectile ) )
        {
            l_WeaponArray = scripts\engine\utility::Array_Remove( l_WeaponArray , "weapon_projectile" );
        }

        // EN : If a single weapon group is specified, recreate the weapon group array to only have one.
        // JA : 単一の武器グループの指定がある場合は、武器グループ配列を作り直して1個だけにする
        if ( IsDefined( onlyGroup ) )
        {
            l_WeaponArray = undefined;
            l_WeaponArray = [];
            l_WeaponArray[0] = onlyGroup;
        }
    }
    
    // EN : If the camouflage type is specified
    // JA : 迷彩種類が指定されている場合
    if ( IsDefined( camoID ) )
    {
        // EN : If the camouflage type is specified as "random"
        // JA : 迷彩種類が「ランダム」と指定されている場合
        if ( camoID == "Random" )
        {
            // EN : Loop for the number of camouflage types
            // JA : 迷彩種類の個数分ループ
            for ( camoSize = 0; camoSize <= 11; camoSize++ )
            {
                // EN : Loop for the number of camouflage type groups
                // JA : 迷彩種類のグループ数分ループ
                for ( camoType = 0; camoType <= 9; camoType++ )
                {
                    l_CamoType = "camo_";

                    // EN : If the current loop count is less than 10, fill in 0 with the prefix
                    // JA : 今のループ回数が10回未満であれば、プレフィックスで0を補完する
                    if ( camoSize < 10 ) { l_CamoType += "0"; }
                    l_CamoType += "" + (camoSize + 1);

                    // EN : Assemble a camouflage type string like "camo_01a"
                    // JA : 「camo_01a」のような迷彩種類の文字列を組み立てる
                    switch ( camoType )
                    {
                        case 0: l_CamoType += "a"; break;
                        case 1: l_CamoType += "b"; break;
                        case 2: l_CamoType += "c"; break;
                        case 3: l_CamoType += "d"; break;
                        case 4: l_CamoType += "e"; break;
                        case 5: l_CamoType += "f"; break;
                        case 6: l_CamoType += "g"; break;
                        case 7: l_CamoType += "h"; break;
                        case 8: l_CamoType += "i"; break;
                        case 9: l_CamoType += "j"; break;
                    }
                    // EN : Add the assembled camouflage type string to the array
                    // JA : 組み立てた迷彩種類の文字列を配列に追加する
                    l_CamoArray = scripts\engine\utility::Array_Add( l_CamoArray , l_CamoType );
                }
            }
        }
    }
    // EN : Get a random camouflage within a camouflage group
    // JA : 迷彩グループ内でランダムに迷彩を取得する
    else if ( camoID == "Group" )
    {
        l_CamoType = "camo_" + ( RandomIntRange( 0 , 11 ) + 1 ) + camoGroup;
    }

    while ( true )
    {
        // EN : If the camouflage type is specified
        // JA : 迷彩種類が指定されている場合
        if ( IsDefined( camoID ) )
        {
            // EN : If the camouflage type is specified as "random"
            // JA : 迷彩種類が「ランダム」と指定されている場合
            if ( camoID == "Random" )
            {
                // EN : Pick a camouflage type randomly from the array
                // JA : 配列内からランダムに迷彩種類を取り出す
                l_CamoID = scripts\engine\utility::Random( l_CamoArray );
            }
        }
        // EN : If the camouflage type is not specified
        // JA : 迷彩種類が指定されていない場合
        else
        {
            // EN : Leave camouflage type unspecified
            // JA : 迷彩種類を未指定とする
            l_CamoID = undefined;
        }

        // EN : If the weapon type is not specified as "random"
        // JA : 武器種類が「ランダム」と指定されていない場合
        if ( weaponID != "Random" )
        {
            // EN : If attachment ID is specified
            // JA : アタッチメントIDが指定されている場合
            if ( IsDefined( attachmentID ) )
            {
                // EN : If the attachment ID is not specified as "random"
                // JA : アタッチメントIDが "ランダム" と指定されていない場合
                if ( attachmentID != "Random" )
                {
                    // EN : Add attachment ID to weapon ID
                    // JA : 武器IDにアタッチメントIDを追加する
                    weaponID += attachmentID;
                }
            }

            // EN : Extract attachment ID from weapon ID
            // JA : 武器IDからアタッチメントIDを取り出す
            l_AttachmentList = StrTok( weaponID , "+" );

            // EN : Generate weapon data from the specified weapon type and camouflage type.
            // JA : 指定の武器種類、迷彩種類から、武器データを生成する
            l_WeaponBuild = scripts\mp\class::BuildWeapon( scripts\mp\utility\weapon::GetWeaponRootName( weaponID ) , l_AttachmentList , l_CamoID , "none" , -1 , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            // l_WeaponBuild = scripts\mp\class::BuildWeapon( weaponID , undefined , l_CamoID , undefined , undefined , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            // EN : Get random attachment
            // JA : ランダムアタッチメント取得
            l_WeaponBuild = ProvideRandomAttachment( l_WeaponBuild , attachmentID );
            // EN : Get the full weapon name from the generated weapon data
            // JA : 生成された武器データから、完全な武器名を取得する
            l_WeaponName = GetCompleteWeaponName( l_WeaponBuild );

            // EN : If you want to get only the weapon ID
            // JA : 武器IDのみを取得する場合
            if ( IsDefined( onlyGetID ) )
            {
                return l_WeaponName;
            }
            // EN : When giving a player a weapon
            // JA : 武器をプレイヤーに持たせる場合
            else
            {
                // EN : Gives the specified weapon and returns the result whether it was successful or not.
                // JA : 指定した武器を与えて、成功したかどうかの結果を返す
                l_WeaponData = self ConfigureWeapon( l_WeaponName , undefined , changeHand , undefined , akimbo , notice );
                return l_WeaponData;
            }
        }
        // EN : If the weapon type is specified as "random"
        // JA : 武器種類が「ランダム」と指定されている場合
        else
        {
            // EN : Pick a weapon type randomly from the array
            // JA : 配列内からランダムに武器種類を取り出す
            l_WeaponGroupID = scripts\engine\utility::Random( l_WeaponArray );
            // EN : Randomly select a weapon from the weapon types
            // JA : 武器種類からランダムに武器を選ぶ
            l_WeaponID = scripts\mp\utility\weapon::GetRandomWeaponFromGroup( l_WeaponGroupID );
            // EN : Generate weapon data from the specified weapon type and camouflage type.
            // JA : 指定の武器種類、迷彩種類から、武器データを生成する
            l_WeaponBuild = scripts\mp\class::BuildWeapon( l_WeaponID , undefined , l_CamoID , undefined , undefined , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            
            // EN : If generated weapon data exists
            // JA : 生成された武器データが存在する場合
            if ( IsDefined( l_WeaponBuild ) )
            {
                // EN : Get random attachment
                // JA : ランダムアタッチメント取得
                l_WeaponBuild = ProvideRandomAttachment( l_WeaponBuild , attachmentID );
                // EN : Get the full weapon name from the generated weapon data
                // JA : 生成された武器データから、完全な武器名を取得する
                l_WeaponName = GetCompleteWeaponName( l_WeaponBuild );

                // EN : If you want to get only the weapon ID
                // JA : 武器IDのみを取得する場合
                if ( IsDefined( onlyGetID ) )
                {
                    return l_WeaponName;
                }
                // EN : When giving a player a weapon
                // JA : 武器をプレイヤーに持たせる場合
                else
                {
                    // EN : Gives the specified weapon and returns the result whether it was successful or not.
                    // JA : 指定した武器を与えて、成功したかどうかの結果を返す
                    l_WeaponData = self ConfigureWeapon( l_WeaponName , undefined , changeHand , true , akimbo , notice );
                    return l_WeaponData;
                }
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Get random attachment
// JA : ランダムアタッチメント取得
//++++++++++++++++++++++++++++++
ProvideRandomAttachment( weaponBuild , attachmentID )
{
    l_WeaponBuild = weaponBuild;

    // EN : If attachment ID is specified
    // JA : アタッチメントIDが指定されている場合
    if ( IsDefined( attachmentID ) )
    {
        // EN : If the attachment ID is specified as "random"
        // JA : アタッチメントIDが "ランダム" と指定されている場合
        if ( attachmentID == "Random" )
        {
            // EN : Randomly determine the number of attachments
            // JA : アタッチメントの個数をランダムに決める
            l_AttachmentMax = RandomIntRange( 1 , 8 );
            // EN : Loop for the number of attachments
            // JA : アタッチメントの個数分ループ
            for ( attachCount = 0; attachCount < l_AttachmentMax; attachCount++ )
            {
                // EN : Get attachment types that can be set in weapon data
                // JA : 武器データに設定可能なアタッチメント種類を取得する
                l_AttachmentData = scripts\mp\weapons::GetRandomGraveRobberAttachment( l_WeaponBuild );
                // EN : If attachment data exists
                // JA : アタッチメントデータが存在する場合
                if ( IsDefined( l_AttachmentData ) )
                {
                    // EN : Add attachment to weapon data
                    // JA : 武器データにアタッチメントを追加する
                    l_WeaponFullData = scripts\mp\weapons::AddAttachmentToWeapon( l_WeaponBuild , l_AttachmentData );
                    // EN : Update weapon data if weapon data integration is successful
                    // JA : 武器データの統合が成功している場合、武器データを更新する
                    if ( IsDefined( l_WeaponFullData ) )
                    {
                        l_WeaponBuild = l_WeaponFullData;
                    }
                }
            }
        }
    }

    return l_WeaponBuild;
}



//++++++++++++++++++++++++++++++
// EN : Give or take away the specified weapon
// JA : 指定した武器を与えるか、もしくは取り上げる
//++++++++++++++++++++++++++++++
ConfigureWeapon( weaponData , takeHand , changeHand , randomChoose , akimbo , notice )
{
    l_WeaponData = weaponData;
    l_TextID = "FailedBuildWeapon";

    // EN : If you already have the specified weapon
    // JA : 既に指定された武器を持っている場合
    if ( self HasWeapon( weaponData ) )
    {
        // EN : When picking up a weapon
        // JA : 武器を取り上げる場合
        if ( IsDefined( takeHand ) )
        {
            // EN : Pick up the specified weapon and initialize the weapon data
            // JA : 指定された武器を取り上げて、武器データを初期化する
            self scripts\cp_mp\utility\inventory_utility::_TakeWeapon( weaponData );
            l_WeaponData = undefined;
            
            // EN : Set text id
            // JA : テキストIDを設定
            l_TextID = "TakedWeapon";

            // EN : When switching weapons
            // JA : 武器を切り替える場合
            if ( IsDefined( changeHand ) )
            {
                // EN : Waits a millisecond to confirm that the weapon is no longer in your possession.
                // JA : 武器が手元から無くなったことを確認するため、ミリ秒待機する
                WaitFrame( );
            }
        }
        // EN : When giving a weapon
        // JA : 武器を与える場合
        else
        {
            // EN : Switch to the same weapon because you already have it
            // JA : 既に同じ武器を持っているため、その武器に切り替える
            self SetSpawnWeapon( weaponData );
        }
    }
    // EN : If you do not have the specified weapon
    // JA : 指定された武器を持っていない場合
    else
    {
        // EN : When picking up a weapon
        // JA : 武器を取り上げる場合
        if ( IsDefined( takeHand ) )
        {
            // EN : Set the result of failing to pick up a weapon because you no longer have one
            // JA : 既に武器を持っていないため、武器の取り上げに失敗した結果を設定する
            l_WeaponData = undefined;
        }
        // EN : When giving a weapon
        // JA : 武器を与える場合
        else
        {
            // EN : give specified weapon
            // JA : 指定した武器を与える
            self scripts\cp_mp\utility\inventory_utility::_GiveWeapon( weaponData , undefined , akimbo , 1 );
            self SetSpawnWeapon( weaponData );
            
            // EN: Gives maximum ammo for that weapon
            // JA: その武器の最大弾薬数を与える
            self GiveMaxAmmo( weaponData );
            
            // EN : Set text id
            // JA : テキストIDを設定
            l_TextID = "GetWeapon";
        }
    }
    
    // EN : When switching weapons
    // JA : 武器を切り替える場合
	if ( IsDefined( changeHand ) )
    {
        // EN : If the specified weapon exists
        // JA : 指定された武器が存在する場合
        if ( IsDefined( l_WeaponData ) )
        {
            // EN : switch weapons
            // JA : 武器を切り替える
            self scripts\cp_mp\utility\inventory_utility::_SwitchToWeaponImmediate( weaponData );
        }
        // EN : If the specified weapon does not exist
        // JA : 指定された武器が存在しない場合
        else
        {
            // EN : If you don't have any weapons in hand
            // JA : 今手に持っている武器が何もない場合
            if ( IsNullWeapon( self GetCurrentWeapon( ) ) )
            {
                // EN : If you have a main weapon, switch to that weapon.
                // JA : メイン武器を所持していれば、その武器に切り替える
                if ( IsDefined( self.primaryweapon ) )
                {
                    self scripts\cp_mp\utility\inventory_utility::_SwitchToWeaponImmediate( self.primaryweapon );
                }
            }
        }
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: Display the text "[Notification] Weapon operation status: Weapon ID" in the center of the screen.
        // JA: 画面中央に "[通知] 武器の操作状態 : 武器ID" という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , l_TextID , undefined , weaponData , undefined );
    }

    // EN : Return weapon processing results
    // JA : 武器の処理結果を返す
    return l_WeaponData;
}



//++++++++++++++++++++++++++++++
// EN : Change language
// JA : 言語を変更する
//++++++++++++++++++++++++++++++
ChangeLanguage( )
{
    self.curLang += 1;
    if ( level.MODDEF.LN_RU < self.curLang ) { self.curLang = level.MODDEF.LN_EN; }
}



//++++++++++++++++++++++++++++++
// EN : Returns the text sentence of the corresponding permission status from "Current permission status"
// JA : 「現在の権限状態」から、該当する権限状態のテキスト文章を返す
//++++++++++++++++++++++++++++++
GetVerifiedText( verificationStatus )
{
    if (        verificationStatus == level.MODDEF.LV_UNVERIFIED )  { return "Unverified"; }
    else if (   verificationStatus == level.MODDEF.LV_VERIFIED )    { return "Verified"; }
    else if (   verificationStatus == level.MODDEF.LV_VIP )         { return "VIP"; }
    else if (   verificationStatus == level.MODDEF.LV_ADMIN )       { return "Admin"; }
    else if (   verificationStatus == level.MODDEF.LV_COHOST )      { return "Cohost"; }
    else if (   verificationStatus == level.MODDEF.LV_HOST )        { return "Host"; }
    else                                                            { return "Unverified"; }
}



//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translated text from the "current language", "current menu hierarchy", and "currently selected item index"
// JA : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetModMenuText( selfLang , selfLayer , selfOption )
{
    if ( IsDefined( level.modMenuData[selfLayer] ) )
    {
        if ( IsDefined( level.modMenuData[selfLayer].item[selfOption] ) )
        {
            if ( IsDefined( level.modMenuData[selfLayer].item[selfOption].textID ) )
            {
                return GetMultilingualText( selfLang , level.modMenuData[selfLayer].item[selfOption].textID );
            }
        }
    }
    return "<TEXT_UNDEFINED>";
}



//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translation from the current language and specified text ID
// JA : 現在の言語と指定のテキストIDから、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetMultilingualText( selfLang , textID , useGamepad )
{
    switch ( textID )
    {
        case "ProjectName":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7Project ^5H^7iN^1A^7tyu"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7プロジェクト ^5ひ^7な^1ち^7ゅ"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^5H^7iN^1A^7tyu ^7計畫"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7проект ^5огонь^1На^7Чуу"; }
            break;

        case "Notice":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^3Notice^7] "; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^3通知^7] "; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^3通知^7] "; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^3уведомление^7] "; }
            break;

        case "Host":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^5Host^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^5ホスト^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^5主持人^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^5хозяин^7]"; }
            break;

        case "Cohost":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^4Co-host^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^4副ホスト^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^4次要宿主^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^4вторичный хост^7]"; }
            break;

        case "Admin":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^1Admin^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^1管理者^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^1行政人员^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^1администратор^7]"; }
            break;

        case "VIP":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^2VIP^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^2要人^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^2重要的人^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^2важная личность^7]"; }
            break;

        case "Verified":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^6Verified^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^6承認者^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^6授权人^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^6Авторизирующий^7]"; }
            break;

        case "Unverified":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^3Unverified^7]"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^3未承認^7]"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^3未批准^7]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^3Не одобрено^7]"; }
            break;

        case "WelcomeTo":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Welcome to "; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^3ようこそ、"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^3欢迎，"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^3добро пожаловать,"; }
            break;

        case "ModdedLobby":
            if (        selfLang == level.MODDEF.LN_EN ) { return " ^3modded lobby."; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return " ^3の改造部屋へ。"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return " ^3前往改造后的房间。"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return " ^3В отремонтированную комнату."; }
            break;

        case "YourMenuStatus":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3" + self.name + " status : "; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^3" + self.name + "の権限階級 : "; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^3" + self.name + " 地位 : "; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^3" + self.name + " положение дел : "; }
            break;

        case "ModMenuOpenDescription":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Give random weapon to press^1 [{+speed_throw}] + [{+melee}] ^3."; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^3ランダム武器は^1 [{+speed_throw}] + [{+melee}] ^3で取得できます。"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^3随机武器^1 [{+speed_throw}] + [{+melee}] ^3你可以得到。"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^3случайное оружие ^1 [{+speed_throw}] + [{+melee}] ^3вы можете получить."; }
            break;

        case "ChangeLanguageDescription":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Change language to press^1 [{+speed_throw}] + [{+smoke}] ^3."; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "^3言語変更は^1 [{+speed_throw}] + [{+smoke}] ^3でできます。"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "^3改变语言^1 [{+speed_throw}] + [{+smoke}]"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "^3Изменить язык ^1 [{+speed_throw}] + [{+smoke}]"; }
            break;
            
        case "FailedBuildWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Failed build weapon"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の生成に失敗"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "打造武器失败"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "Не удалось построить оружие"; }
            break;
            
        case "GetWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Get weapon"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の入手"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "获取武器"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "Получить оружие"; }
            break;

        case "TakedWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Taked weapon"; }
            else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の剥奪"; }
            else if (   selfLang == level.MODDEF.LN_CN ) { return "拿起武器"; }
            else if (   selfLang == level.MODDEF.LN_RU ) { return "Взятое оружие"; }
            break;
            
        default:
            return textID;
    }
}