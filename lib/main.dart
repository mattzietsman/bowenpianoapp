import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:restart_app/restart_app.dart';
import 'package:google_fonts/google_fonts.dart';




// -- TO DO --
//0. Look at Dads notes

//1. Update Top Container Height to base it on the screen size
//2. Create an identical second screen or game where only the required key is not disabled
//3. Create a 3rd game after step 2 where the required key lights up
//4. [[ DONE ]] --  Add Game Exit Button in Top Left Corner of AppBar

//5. Create List of Enhancements
// - Recording of Songs
// - Real Music Sheet


//6. Make Coding Notes in Code





void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(BowenPianoApp());
  });
}


class songList {
  String instrumentKey;

  songList({String k1}) {
    instrumentKey = k1;
  }
}



class BowenPianoApp extends StatefulWidget {
  @override
  _BowenPianoAppState createState() => _BowenPianoAppState();
}

class _BowenPianoAppState extends State<BowenPianoApp> {



  void playSound(String keyNumber) {
    final player = AudioCache();
    player.play('piano notes_all/$keyNumber.mp3');
  }

  void keyPressed() {
    setState(() {
      //noteKey1 = Colors.transparent;
      //noteContainer1 = Colors.transparent;
      //noteBorder1 = Colors.transparent;

      if(_keyCounter<_fullsongListLength){
        _keyCounter = _keyCounter+1;
      }
      else
      {_keyCounter = _fullsongListLength;}


      if(_keyCounterNext<_fullsongListLength){
        _keyCounterNext = _keyCounterNext+1;
      }
      else
      {_keyCounterNext = _fullsongListLength;}


      if(_keyCounterAfterNext<_fullsongListLength){
        _keyCounterAfterNext = _keyCounterAfterNext+1;
      }
      else
      {_keyCounterAfterNext = _fullsongListLength;}

      if (_keyCounter == 11){
        _songListLength = _songListLength + 11;
        _key0 = _key0 + 11;
        _key1 = _key1 + 11;
        _key2 = _key2 + 11;
        _key3 = _key3 + 11;
        _key4 = _key4 + 11;
        _key5 = _key5 + 11;
        _key6= _key6 + 11;
        _key7 = _key7 + 11;
        _key8 = _key8 + 11;
        _key9= _key9 + 11;
        _key10 = _key10 + 11;
        _key11 = _key11 + 11;
      };

      if (_keyCounter == 22){
        print('PRINT PRINT PRINT PRINT PRINT PRINT PRINT');
        print(_keyCounter);
        print(_songListLength);
        print(_songListLengthB);
        _songListLength = _keyCounter+11;
        //_songListLengthB = _keyCounter;

        print('PRINT PRINT PRINT PRINT PRINT PRINT PRINT');
        print(_keyCounter);
        print(_songListLength);
        print(_songListLengthB);

        _key0 = _keyCounter;
        _key1 = _keyCounter+1;
        _key2 = _keyCounter+2;
        _key3 = _keyCounter+3;
        _key4 = _keyCounter+4;
        _key5 = _keyCounter+5;
        _key6= _keyCounter+6;
        _key7 = _keyCounter+7;
        _key8 = _keyCounter+8;
        _key9= _keyCounter+9;
        _key10 = _keyCounter+10;
        _key11 = _keyCounter+11;


      }

      if (_keyCounter == 33){
        _songListLength = _songListLength + 11;
        //_songListLengthB = _songListLengthB + 11;
        _key0 = _key0 + 11;
        _key1 = _key1 + 11;
        _key2 = _key2 + 11;
        _key3 = _key3 + 11;
        _key4 = _key4 + 11;
        _key5 = _key5 + 11;
        _key6= _key6 + 11;
        _key7 = _key7 + 11;
        _key8 = _key8 + 11;
        _key9= _key9 + 11;
        _key10 = _key10 + 11;
        _key11 = _key11 + 11;
      }


      _myKey = listsSongKeysOne[_keyCounter].instrumentKey;
      _myKeyNext = listsSongKeysOne[_keyCounterNext].instrumentKey;

    });
  }

  String _x;
  String _myKey;
  String _emptyKey = '';
  String _myKeyNext;
  String _myKeyAfterNext;

  int _key0 = 0;
  int _key1 = 1;
  int _key2 = 2;
  int _key3 = 3;
  int _key4 = 4;
  int _key5 = 5;
  int _key6 = 6;
  int _key7 = 7;
  int _key8 = 8;
  int _key9 = 9;
  int _key10 = 10;
  int _key11 = 11;
  int _key12 = 12;


  int _keyCounter = 0;
  int _keyCounterNext = 1;
  int _keyCounterAfterNext = 2;
  int _songListLength;
  int _songListLengthB;
  int _fullsongListLength;
  int _songKeyResetA = 11;
  int _songKeyResetB = 21;


  Color pianoNoteF = Colors.purpleAccent;
  Color pianoNoteG = Colors.green;
  Color pianoNoteA = Colors.lightBlueAccent;
  Color pianoNoteB = Colors.yellow[700];
  Color pianoNoteC = Colors.red;
  Color pianoNoteD = Colors.indigoAccent;
  Color pianoNoteE = Colors.deepOrange;

  double chordMargin = 1.0;
  double chordPadding = 1.0;
  Color dividerOneColor = Colors.transparent;
  double dividerOneThickness = 5.0;
  Color dividerTwoColor = Colors.black;
  double dividerTwoThickness = 5.0;
  double chordTextSize = 20.0;

  String pianoNoteF_white_Text = 'F';
  String pianoNoteF_black_Text = 'F#';
  String pianoNoteG_white_Text = 'G';
  String pianoNoteG_black_Text = 'G#';
  String pianoNoteA_white_Text = 'A';
  String pianoNoteA_black_Text = 'A#';
  String pianoNoteB_white_Text = 'B';
  String pianoNoteC_white_Text = 'C';
  String pianoNoteC_black_Text = 'C#';
  String pianoNoteD_white_Text = 'D';
  String pianoNoteD_black_Text = 'D#';
  String pianoNoteE_white_Text = 'E';

  String pianoNote_Dead_Text = '';
  List<songList> myPianoSong;




  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();


    setState(() {
      // _myKey = 'key$_keyCounter';
      _myKey = listsSongKeysOne[_keyCounter].instrumentKey;
      _myKeyNext = listsSongKeysOne[_keyCounter+1].instrumentKey;
      _myKeyAfterNext = listsSongKeysOne[_keyCounterAfterNext].instrumentKey;
      _songKeyResetA = 11;
      _songKeyResetB = 21;

      _fullsongListLength = 45;
      _songListLength = 11;
      _songListLengthB = 11;



      HighlightPianoKey();
      KeyColourOne();
      KeyColourTwo();
      KeyColourThree();
      KeyColourFour();
      KeyColourFive();
      KeyColourSix();
      KeyColourSeven();
      KeyColourEight();
      KeyColourNine();
      KeyColourTen();
      KeyColourEleven();
      KeyColourTwelve();
      KeyColourThirteen();
      KeyColourFourteen();
      KeyColourFifteen();
      KeyColourSixteen();






      String _musicNoteEmojiOn = '🎵';
      String _musicNoteEmojiOff = '';


    });
  }

// Piano Key Widget -------------------
  // ;):):):):) NO1buildLey works

  // WHITE KEYS
  Expanded NO1buildKey({BorderRadius border, Color color, String keyNumber, String keyLetter, Color keyColor, Color pianoKeyColor, Icon myicon})
  {
    return Expanded(

      child: Container(
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.transparent,
          image: DecorationImage(
            //alignment: Alignment.center,
            fit: BoxFit.fitWidth,
            image: AssetImage(
                "assets/White Piano Key.png"),
          ),
        ),
        child: Column(
          children: [
            //placeholder for music notes
            Container(
              child:  Text('',textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.normal, color: keyColor,fontSize: 1.0)),
            ),
            Container(
              height: 1.0,
            ),

            Expanded(
              child: ElevatedButton (
                style: ElevatedButton.styleFrom(
                  //maximumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  foregroundColor: Colors.red[800],
                  backgroundColor: color,
                  elevation: 10.0,),

                child:  Text(keyLetter,textAlign: TextAlign.center,style: TextStyle(height:-1.7,fontStyle:FontStyle.normal, color: pianoKeyColor,fontSize: 30.0)),



                //color: color,

                onPressed: () {
                  print('PRINT MYKEY');
                  print(_myKey);
                  print('PRINT KEYNUMBER');
                  print(keyLetter);
                  playSound(keyNumber);


                  if(_myKey == keyLetter)
                    // if(_myKey == keyNumber)

                      {keyPressed();}

                  else if(_myKeyNext == _emptyKey)
                  {
                    setState(() {
           //TBC
                    });
                    print('GAME COMPLETED ----------------- GAME COMPLETED --------- GAME COMPLETED');
                  };

                  KeyColourOne();
                  KeyColourTwo();
                  KeyColourThree();
                  KeyColourFour();
                  KeyColourFive();
                  KeyColourSix();
                  KeyColourSeven();
                  KeyColourEight();
                  KeyColourNine();
                  KeyColourTen();
                  KeyColourEleven();
                  KeyColourTwelve();
                  KeyColourThirteen();
                  KeyColourFourteen();
                  KeyColourFifteen();
                  KeyColourSixteen();
                  HighlightPianoKey();


                },
              ),
            ),
            Container(
              child:  Text('',textAlign: TextAlign.start,style: TextStyle(fontStyle:FontStyle.normal, color: keyColor,fontSize: 5.0)),
            ),

          ],
        ),
      ),
    );
  }


  //SONG 1 ==> Twinkle Twinkle Little Star Notes
  List<songList> listsSongKeysOne = [

    songList (k1: 'E'),
    songList (k1: 'E'),
    songList (k1: 'B'),
    songList (k1: 'B'),
    songList (k1: 'C#'),
    songList (k1: 'C#'),
    songList (k1: 'B'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G#'),
    songList (k1: 'G#'),
    songList (k1: 'F#'),
    songList (k1: 'F#'),
    songList (k1: 'E'),
    songList (k1: 'B'),
    songList (k1: 'B'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G#'),
    songList (k1: 'G#'),
    songList (k1: 'F#'),
    songList (k1: 'B'),
    songList (k1: 'B'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G#'),
    songList (k1: 'G#'),
    songList (k1: 'F#'),
    songList (k1: 'E'),
    songList (k1: 'E'),
    songList (k1: 'B'),
    songList (k1: 'B'),
    songList (k1: 'C#'),
    songList (k1: 'C#'),
    songList (k1: 'B'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G#'),
    songList (k1: 'G#'),
    songList (k1: 'F#'),
    songList (k1: 'F#'),
    songList (k1: 'E'),
    songList (k1: ''),
    //songList (k1:'D','D','A', 'A','B','B', 'A', 'G','G','E' ), // Jingle Bells
  ];


  //SONG 2 ==> Old Macdonald
  List<songList> listsSongKeysTwo = [

    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'G'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G'),

    songList (k1: 'E'),
    songList (k1: 'E'),
    songList (k1: 'D'),
    songList (k1: 'D'),
    songList (k1: 'C'),

    songList (k1: 'G'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'G'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G'),

    songList (k1: 'E'),
    songList (k1: 'E'),
    songList (k1: 'D'),
    songList (k1: 'D'),
    songList (k1: 'C'),

    songList (k1: 'G'),
    songList (k1: 'G'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'G'),
    songList (k1: 'G'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),

    songList (k1: 'C'),

    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'C'),
    songList (k1: 'G'),
    songList (k1: 'A'),
    songList (k1: 'A'),
    songList (k1: 'G'),

    songList (k1: 'E'),
    songList (k1: 'E'),
    songList (k1: 'D'),
    songList (k1: 'D'),
    songList (k1: 'C'),

    //OLD SONGLIST
    //songList (k1:'D','D','A', 'A','B','B', 'A', 'G','G','E' ), // Jingle Bells
  ];


  // BLACK KEYS
  Expanded NO2buildKey({BorderRadius border, Color color, String keyNumber, String keyLetter, Color keyColor, Icon myicon})
  {
    return Expanded(

      child: Container(
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.transparent,
          image: DecorationImage(
            //alignment: Alignment.center,
            fit: BoxFit.fitWidth,
            image: AssetImage(
                "assets/Black Piano Key.png"),
          ),
        ),

        child: Column(
          children: [
            //placeholder for music notes
            Container(
              child:  Text('',textAlign: TextAlign.start,style: TextStyle(fontStyle:FontStyle.normal, color: keyColor,fontSize: 1.0)),
            ),
            Container(
              height: 1.0,
            ),

            Container(
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: DecorationImage(
                      //alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                          "assets/Black Piano Key.png"),
                    ),
                  ),
                  child: ElevatedButton (
                    style: ElevatedButton.styleFrom(
                      //maximumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(vertical: 1.0),
                      foregroundColor: Colors.red[800],
                      backgroundColor: color,
                      elevation: 10.0,),

                    child:  Text(keyLetter,textAlign: TextAlign.end, style: TextStyle(height:-2.3, fontStyle:FontStyle.normal, color: Colors.white,fontSize: 28.0)),


                    onPressed: () {
                      print('PRINT MYKEY');
                      print(_myKey);
                      print('PRINT KEYNUMBER');
                      print(keyNumber);
                      playSound(keyNumber);


                      if(_myKey == keyLetter)

                      {
                        keyPressed();


                      }

                      else if(_myKeyNext == _emptyKey)
                      {
                        setState(() {
                          // noteActiveKey = Colors.transparent;
                          // noteActiveContainer = Colors.transparent;
                          // noteActiveBorder = Colors.transparent;
                          // When incorrect 1st key pressed then painoKey2 is set to yellow.. but only on fist note


                          // notePassiveKey = Colors.transparent;
                          // notePassiveContainer = Colors.transparent;
                          // notePassiveBorder = Colors.transparent;
                        });
                        print('GAME COMPLETED ----------------- GAME COMPLETED --------- GAME COMPLETED');
                      };

                      KeyColourOne();
                      KeyColourTwo();
                      KeyColourThree();
                      KeyColourFour();
                      KeyColourFive();
                      KeyColourSix();
                      KeyColourSeven();
                      KeyColourEight();
                      KeyColourNine();
                      KeyColourTen();
                      KeyColourEleven();
                      KeyColourTwelve();
                      KeyColourThirteen();
                      KeyColourFourteen();
                      KeyColourFifteen();
                      KeyColourSixteen();
                      HighlightPianoKey();

                    },
                  ),
                ),
              ),
            ),

            Container(
              child:  Text('',textAlign: TextAlign.start,style: TextStyle(fontStyle:FontStyle.normal, color: keyColor,fontSize: 7.0)),
            ),
          ],
        ),
      ),
    );
  }



// ----------- MUSIC SHEET BELOW -----------------------

  double noteBorderWidth = 3.0;
  double noteDeadBorderWidth = 2.0;

  Color noteActiveKey = Colors.pink[600];
  Color noteActiveContainer = Colors.lightGreenAccent;
  Color noteActiveBorder = Colors.green[800];


  Color notePassiveKey = Colors.white;
  Color notePassiveContainer = Colors.orange[200];
  Color notePassiveBorder = Colors.yellow[600];



  Color noteDeadKey = Colors.transparent;
  Color noteDeadContainer = Colors.transparent;
  Color noteDeadBorder = Colors.transparent;



  Color noteKey1 = Colors.purpleAccent;
  Color noteContainer1 = Colors.white;
  Color noteBorder1 = Colors.black;

  Color noteKey2 = Colors.purpleAccent;
  Color noteContainer2 = Colors.white;
  Color noteBorder2 = Colors.black;

  Color noteKey3 = Colors.green;
  Color noteContainer3 = Colors.white;
  Color noteBorder3 = Colors.black;

  Color noteKey4 = Colors.green;
  Color noteContainer4 = Colors.white;
  Color noteBorder4 = Colors.black;

  Color noteKey5 = Colors.lightBlueAccent;
  Color noteContainer5 = Colors.white;
  Color noteBorder5 = Colors.black;

  Color noteKey6 = Colors.lightBlueAccent;
  Color noteContainer6 = Colors.white;
  Color noteBorder6 = Colors.black;

  Color noteKey7 = Colors.yellow[700];
  Color noteContainer7 = Colors.white;
  Color noteBorder7 = Colors.black;

  Color noteKey8 = Colors.red;
  Color noteContainer8 = Colors.white;
  Color noteBorder8 = Colors.black;

  Color noteKey9 = Colors.red;
  Color noteContainer9 = Colors.white;
  Color noteBorder9 = Colors.black;

  Color noteKey10 = Colors.indigoAccent;
  Color noteContainer10 = Colors.white;
  Color noteBorder10 = Colors.black;

  Color noteKey11 = Colors.indigoAccent;
  Color noteContainer11 = Colors.white;
  Color noteBorder11 = Colors.black;

  Color noteKey12 = Colors.deepOrange;
  Color noteContainer12 = Colors.white;
  Color noteBorder12 = Colors.black;

  Color noteKey13 = Colors.red;
  Color noteContainer13 = Colors.white;
  Color noteBorder13 = Colors.black;

  Color noteKey14 = Colors.purpleAccent;
  Color noteContainer14 = Colors.white;
  Color noteBorder14 = Colors.black;

  Color noteKey15 = Colors.green;
  Color noteContainer15 = Colors.white;
  Color noteBorder15 = Colors.black;

  Color noteKey16 = Colors.green;
  Color noteContainer16 = Colors.white;
  Color noteBorder16 = Colors.black;

  Color pianoKey1 = Colors.white;
  Color pianoKey2 = Colors.white;
  Color pianoKey3 = Colors.black;
  Color pianoKey4 = Colors.white;
  Color pianoKey5 = Colors.black;
  Color pianoKey6 = Colors.white;
  Color pianoKey7 = Colors.black;
  Color pianoKey8 = Colors.white;
  Color pianoKey9 = Colors.white;
  Color pianoKey10 = Colors.black;
  Color pianoKey11 = Colors.white;
  Color pianoKey12 = Colors.black;
  Color pianoKey13 = Colors.white;
  Color pianoKey14 = Colors.white;
  Color pianoKey15 = Colors.black;
  Color pianoKey16 = Colors.white;
// -------------------------------


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Center(
            child: Text(
              'Bowens  Piano - Twinkle Twinkle',
              style: GoogleFonts.indieFlower(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          actions: <Widget>[
            // action button

            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.pinkAccent,
                  //width: 2.0,
                ),
              ),
              child: IconButton(
                padding: EdgeInsets.all(0.0),

                //icon:  ImageIcon(AssetImage("images/activeimages/image21.png")),
                icon: Image.asset(
                  "assets/RefreshButton1.png",
                ),

                onPressed: () {
                  Restart.restartApp();

                },
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.pinkAccent,
                  //width: 2.0,
                ),
              ),
              child: IconButton(
                padding: EdgeInsets.all(0.0),

                //icon:  ImageIcon(AssetImage("images/activeimages/image21.png")),
                icon: Image.asset(
                  "assets/ExitButton2.png",
                ),

                onPressed: () {
                  SystemNavigator.pop();

                },
              ),
            ),

          ],
        ),

        body: SafeArea(
          child:

          Column(
            children: [


              Stack(
                children: [

                  // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> NOTE>> BELOW IS CONTAINER FOR THE TOP PART OF SCREEN CONTAINING THE MUSIC SHEET AND BACKGROUND.
                  // >>>>>> BOTH THE HEIGHTS OF THE TOP ROW AND THE BOTTOM ROW WITH KEYS ARE DEPENDENT ON THIS CONTAINERS HEIGHT
                  // >>>>>> TO DO  ---  THE HEIGHT NUMBER FOR THIS CONTAINER NEEDS TO BE CHANGED TO BE BASED ON THE SCREEN SIZE


                  Container(

                    height: 350,
                    //color: Colors.red[800],
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      color: Colors.red[800],
                      //border: Border.all(color: Colors.red[800], width: 1.0),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/BackgroundImage12.jpg"),
                      ),
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.all(1.0),
                    padding: EdgeInsets.all(10.0),
                    height: 340,
                    decoration: BoxDecoration(
                        color: Colors.transparent
                    ),



                    child: Column(
                      children: [



// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Top Row Line of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

// BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer14,
                                  border: Border.all(color: noteBorder14, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteF_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey14,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-9)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey10,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer15,
                                  border: Border.all(color: noteBorder15, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteF_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey15,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey11,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // >>>>>>>>>>>>> Above Container to be updated for 12th key

                          ],
                        ),
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Trebal Clef >> Row 1 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


// <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            // <<<<<<<<<<<<<<<<<<<<<<<<Below Container to be updated for 12th Key >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer13,
                                  border: Border.all(color: noteBorder13, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteE_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey13,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey12,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),

                          ],
                        ),
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Trebal Clef >> Row 6 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer11,
                                  border: Border.all(color: noteBorder11, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteD_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey11,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-9)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey10,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer12,
                                  border: Border.all(color: noteBorder12, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteD_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey12,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey11,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // >>>>>>>>>>>>> Above Container to be updated for 12th key

                          ],
                        ),
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Trebal Clef >> Row 5 of Music Sheet Chords >>>

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer9,
                                  border: Border.all(color: noteBorder9, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteC_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey9,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-7)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey8,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer10,
                                  border: Border.all(color: noteBorder10, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteC_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey10,fontSize: chordTextSize)),

                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<<<<<Below Container to be updated for 12th Key >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                          ],
                        ),


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Trebal Clef >> Row 4 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer8,
                                  border: Border.all(color: noteBorder8, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteB_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey8,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-6)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey7,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            //*********************************************************
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>





                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // >>>>>>>>>>>>> Above Container to be updated for 12th key

                          ],
                        ),
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Trebal Clef >> Row 3 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer6,
                                  border: Border.all(color: noteBorder6, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteA_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey6,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-4)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey5,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer7,
                                  border: Border.all(color: noteBorder7, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteA_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey7,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-5)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey6,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                              ),
                            ),


                          ],
                        ),




// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Trebal Clef >> Row 2 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer4,
                                  border: Border.all(color: noteBorder4, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteG_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey4,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-2)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey3,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer5,
                                  border: Border.all(color: noteBorder5, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteG_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey5,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-3)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey4,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // *************************************************


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // >>>>>>>>>>>>> Above Container to be updated for 12th key

                          ],
                        ),
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Trebal Clef >> Row 7 of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer2,
                                  border: Border.all(color: noteBorder2, width: noteBorderWidth),
                                ),

                                child: Text(pianoNoteF_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey2,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey1,fontSize: chordTextSize)),
                              ),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer3,
                                  border: Border.all(color: noteBorder3, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteF_black_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey3,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-1)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey2,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            // <<<<<<<<<<<<<<<<<<<<<<<<Transparent  Key >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey12,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),

                            // ******************************
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<<<<<Transparent  Key >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey12,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),

                            // ******************************
                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            // <<<<<<<<<<<<<<<<<<<<<<<<Transparent  Key >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                //child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey12,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            //********************************


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-2)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey3,fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-3)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey4,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-4)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey5,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-5)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey6,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-6)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey7,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-7)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey8,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-8)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey9,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-9)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey10,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,

                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteDeadContainer,
                                  border: Border.all(color: noteDeadBorder, width: noteBorderWidth),
                                ),
                                child: Text(pianoNote_Dead_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteDeadKey,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-10)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(color: noteKey11,fontStyle:FontStyle.italic, fontSize: chordTextSize)),
                              ),
                            ),


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerOneColor,
                                    thickness: dividerOneThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                          ],
                        ),


// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Final Line Row of Music Sheet Chords >>>
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            // BELOW IS THE 1ST REQUIRED KEY TO BE PRESSED IN THE MUSIC SHEET


                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(chordMargin),
                                padding: EdgeInsets.all(chordPadding),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: noteContainer1,
                                  border: Border.all(color: noteBorder1, width: noteBorderWidth),
                                ),
                                child: Text(pianoNoteE_white_Text,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey1,fontSize: chordTextSize)),
                                // child: Text(listsSongKeysOne[_songListLength-(_songListLengthB-2)].instrumentKey,textAlign: TextAlign.center,style: TextStyle(fontStyle:FontStyle.italic, color: noteKey3,fontSize: chordTextSize)),
                              ),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),



                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            // <<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            Expanded(
                              child: new Container(
                                //margin: const EdgeInsets.only(left: 1.0, right: 1.0),
                                  child: Divider(
                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                  )),
                            ),
                            //<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


                            Expanded(
                              child: new Container(
                                  margin:  EdgeInsets.only(left: 0.0, right: 0.0),
                                  padding: EdgeInsets.only(left: 0.0, bottom: 0.0),
                                  child: Divider(

                                    color: dividerTwoColor,
                                    thickness: dividerTwoThickness,
                                    indent:0.0,
                                    endIndent:0.0,
                                  )),
                            ),

                            // >>>>>>>>>>>>> Above Container to be updated for 12th key

                          ],
                        ),


//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<END OF LAST ROW >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                      ],
                    ),
                  ),
                ],
              ),

              Container(
                height: 1 ,
                color: Colors.red[800],
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red[800], width: 1.0),
                    color: Colors.red[800],
                  ),
                  // color: Colors.red[800],
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(3.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

//<<<<<<<<<<<<<<<<<<<<<<<<<<<  LEFT HAND PIANO KEYS  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red[800], width: 1.0),
                            color: Colors.yellow,
                          ),
                          margin: EdgeInsets.all(0.0),
                          padding: EdgeInsets.all(3.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[

                                Container(width: 5),
                                NO1buildKey(color: pianoKey1, keyNumber: 'e4', keyLetter: 'E',keyColor: Colors.white, pianoKeyColor:pianoNoteE),

                                Container(width: 10),
                                NO1buildKey(color: pianoKey2, keyNumber: 'f4', keyLetter: 'F',keyColor: Colors.white, pianoKeyColor:pianoNoteF),

                                Container(width: 10),
                                NO2buildKey(color: pianoKey3, keyNumber: 'f-4', keyLetter: 'F#',keyColor: Colors.green),

                                Container(width: 10),
                                NO1buildKey(color: pianoKey4, keyNumber: 'g4', keyLetter: 'G', keyColor: Colors.green, pianoKeyColor:pianoNoteG),

                                Container(width: 10),
                                NO2buildKey(color: pianoKey5, keyNumber: 'g-4', keyLetter: 'G#', keyColor: Colors.green),

                                Container(width: 10),
                                NO1buildKey(color: pianoKey6, keyNumber: 'a5', keyLetter: 'A', keyColor: Colors.red, pianoKeyColor:pianoNoteA),

                                Container(width: 10),
                                NO2buildKey(color: pianoKey7, keyNumber: 'a-5', keyLetter: 'A#', keyColor: Colors.green),

                                Container(width: 10),
                                NO1buildKey(color: pianoKey8, keyNumber: 'b5', keyLetter: 'B', keyColor: Colors.white60, pianoKeyColor:pianoNoteB),

                                // Container(width: 3),
                                // NO2buildKey(color: pianoKey7, keyNumber: 'G4', keyLetter: 'G4', keyColor: Colors.red),
                                Container(width: 5),
                              ]
                          ),
                        ),
                      ),

                      Container(width: 6,color: Colors.red[800],margin: EdgeInsets.all(1.0),),


                      //<<<<<<<<<<<<<<<<<<<<<<<<<<<  RIGHT HAND PIANO KEYS  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red[800], width: 1.0),
                            color: Colors.indigo,
                          ),
                          margin: EdgeInsets.all(0.0),
                          padding: EdgeInsets.all(3.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[


                              Container(width: 5),


                              NO1buildKey(color: pianoKey9, keyNumber: 'c5', keyLetter: 'C', keyColor: Colors.white60, pianoKeyColor:pianoNoteC),
                              Container(width: 10),

                              NO2buildKey(color: pianoKey10, keyNumber: 'c-5', keyLetter: 'C#', keyColor: Colors.white60),
                              Container(width: 10),

                              NO1buildKey(color: pianoKey11, keyNumber: 'd5', keyLetter: 'D', keyColor: Colors.white60, pianoKeyColor:pianoNoteD),
                              Container(width: 10),

                              NO2buildKey(color: pianoKey12, keyNumber: 'd-5', keyLetter: 'D#', keyColor: Colors.white60),
                              Container(width: 10),

                              NO1buildKey(color: pianoKey13, keyNumber: 'e5', keyLetter: 'E', keyColor: Colors.white60, pianoKeyColor:pianoNoteE),
                              Container(width: 10),

                              NO1buildKey(color: pianoKey14, keyNumber: 'f5', keyLetter: 'F', keyColor: Colors.white60, pianoKeyColor:pianoNoteE),

                              Container(width: 10),
                              NO2buildKey(color: pianoKey15, keyNumber: 'f-5', keyLetter: 'F#',keyColor: Colors.green),

                              Container(width: 10),
                              NO1buildKey(color: pianoKey16, keyNumber: 'g5', keyLetter: 'G', keyColor: Colors.green, pianoKeyColor:pianoNoteG),


                              // NO2buildKey(color: pianoKey14, keyNumber: 'G5', keyLetter: 'G5', keyColor: Colors.white60),
                              // Container(width: 3),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),

              Container(
                height: 4,
                color: Colors.red[800],
              ),
            ],
          ),
        ),
      ),
    );
  }


  void KeyColourOne() {
    setState(() {
      // if(_keyCounter!=_key0){
      //
      // }

      if(_myKey == 'E') {
        noteKey1 = noteActiveKey;
        noteContainer1 = noteActiveContainer;
        noteBorder1 = noteActiveBorder;
      }


      else
      {
        noteKey1 = notePassiveKey;
        noteContainer1 = notePassiveContainer;
        noteBorder1 = notePassiveBorder;
      };



    });
  }

  void KeyColourTwo() {
    setState(() {

      if(_myKey == 'F') {
        noteKey2 = noteActiveKey;
        noteContainer2 = noteActiveContainer;
        noteBorder2 = noteActiveBorder;
      }

      else {
        noteKey2 = notePassiveKey;
        noteContainer2 = notePassiveContainer;
        noteBorder2 = notePassiveBorder;
      };
    });
  }

  void KeyColourThree() {
    setState(() {

      if(_myKey == "F#") {
        noteKey3 = noteActiveKey;
        noteContainer3 = noteActiveContainer;
        noteBorder3 = noteActiveBorder;
      }

      else {
        noteKey3 = notePassiveKey;
        noteContainer3 = notePassiveContainer;
        noteBorder3 = notePassiveBorder;
      };
    });
  }

  void KeyColourFour() {
    setState(() {

      if(_myKey == "G") {
        noteKey4 = noteActiveKey;
        noteContainer4 = noteActiveContainer;
        noteBorder4 = noteActiveBorder;
      }

      else {
        noteKey4 = notePassiveKey;
        noteContainer4 = notePassiveContainer;
        noteBorder4 = notePassiveBorder;
      };

    });
  }

  void KeyColourFive() {
    setState(() {

      if(_myKey == "G#") {
        noteKey5 = noteActiveKey;
        noteContainer5 = noteActiveContainer;
        noteBorder5 = noteActiveBorder;
      }

      else {
        noteKey5 = notePassiveKey;
        noteContainer5 = notePassiveContainer;
        noteBorder5 = notePassiveBorder;
      };

    });
  }

  void KeyColourSix() {
    setState(() {

      if(_myKey == "A") {
        noteKey6 = noteActiveKey;
        noteContainer6 = noteActiveContainer;
        noteBorder6 = noteActiveBorder;
      }

      else {
        noteKey6 = notePassiveKey;
        noteContainer6 = notePassiveContainer;
        noteBorder6 = notePassiveBorder;
      };

    });
  }


  void KeyColourSeven() {
    setState(() {

      if(_myKey == "A#") {
        noteKey7 = noteActiveKey;
        noteContainer7 = noteActiveContainer;
        noteBorder7 = noteActiveBorder;
      }

      else {
        noteKey7 = notePassiveKey;
        noteContainer7 = notePassiveContainer;
        noteBorder7 = notePassiveBorder;
      };

    });
  }

  void KeyColourEight() {
    setState(() {

      if(_myKey == "B") {
        noteKey8 = noteActiveKey;
        noteContainer8 = noteActiveContainer;
        noteBorder8 = noteActiveBorder;
      }

      else {
        noteKey8 = notePassiveKey;
        noteContainer8 = notePassiveContainer;
        noteBorder8 = notePassiveBorder;
      };

    });
  }

  void KeyColourNine() {
    setState(() {

      if(_myKey == "C") {
        noteKey9 = noteActiveKey;
        noteContainer9 = noteActiveContainer;
        noteBorder9 = noteActiveBorder;
      }

      else {
        noteKey9 = notePassiveKey;
        noteContainer9 = notePassiveContainer;
        noteBorder9 = notePassiveBorder;
      };

    });
  }

  void KeyColourTen() {
    setState(() {

      if(_myKey == "C#") {
        noteKey10 = noteActiveKey;
        noteContainer10 = noteActiveContainer;
        noteBorder10 = noteActiveBorder;
      }

      else {
        noteKey10 = notePassiveKey;
        noteContainer10 = notePassiveContainer;
        noteBorder10 = notePassiveBorder;
      };

    });
  }

  void KeyColourEleven() {
    setState(() {
      if(_myKey == "D") {
        noteKey11 = noteActiveKey;
        noteContainer11 = noteActiveContainer;
        noteBorder11 = noteActiveBorder;
      }

      else {
        noteKey11 = notePassiveKey;
        noteContainer11 = notePassiveContainer;
        noteBorder11 = notePassiveBorder;
      };

    });
  }


  void KeyColourTwelve() {
    setState(() {
      if(_myKey == "D#") {
        noteKey12 = noteActiveKey;
        noteContainer12 = noteActiveContainer;
        noteBorder12 = noteActiveBorder;
      }
      else {
        noteKey12 = notePassiveKey;
        noteContainer12 = notePassiveContainer;
        noteBorder12 = notePassiveBorder;
      };
    });
  }

  void KeyColourThirteen() {
    setState(() {
      if(_myKey == "E") {
        noteKey13 = noteActiveKey;
        noteContainer13 = noteActiveContainer;
        noteBorder13 = noteActiveBorder;
      }
      else {
        noteKey13 = notePassiveKey;
        noteContainer13 = notePassiveContainer;
        noteBorder13 = notePassiveBorder;
      };
    });
  }

  void KeyColourFourteen() {
    setState(() {
      if(_myKey == "F") {
        noteKey14 = noteActiveKey;
        noteContainer14 = noteActiveContainer;
        noteBorder14 = noteActiveBorder;
      }
      else {
        noteKey14 = notePassiveKey;
        noteContainer14 = notePassiveContainer;
        noteBorder14 = notePassiveBorder;
      };
    });
  }

  void KeyColourFifteen() {
    setState(() {
      if(_myKey == "F#") {
        noteKey15 = noteActiveKey;
        noteContainer15 = noteActiveContainer;
        noteBorder15 = noteActiveBorder;
      }
      else {
        noteKey15 = notePassiveKey;
        noteContainer15 = notePassiveContainer;
        noteBorder15 = notePassiveBorder;
      };
    });
  }

  void KeyColourSixteen() {
    setState(() {
      if(_myKey == "G") {
        noteKey16 = noteActiveKey;
        noteContainer16 = noteActiveContainer;
        noteBorder16 = noteActiveBorder;
      }
      else {
        noteKey16 = notePassiveKey;
        noteContainer16 = notePassiveContainer;
        noteBorder16 = notePassiveBorder;
      };
    });
  }



  void HighlightPianoKey() {
    setState(() {

      if (_myKey == 'E')
      {

        pianoKey1 = Colors.lightGreenAccent;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == '')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'F')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.lightGreenAccent;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'F#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.lightGreenAccent;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'G')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.lightGreenAccent;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'G#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.lightGreenAccent;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'A')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.lightGreenAccent;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }
      else if (_myKey == 'A#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.lightGreenAccent;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'B')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.lightGreenAccent;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'C')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.lightGreenAccent;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'C#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.lightGreenAccent;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'D')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.lightGreenAccent;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
      }

      else if (_myKey == 'D#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.lightGreenAccent;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
        ;
      }

      else if (_myKey == 'E')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.lightGreenAccent;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
        ;
      }

      else if (_myKey == 'F')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.lightGreenAccent;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.white;
        ;
      }

      else if (_myKey == 'F#')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.lightGreenAccent;
        pianoKey16 = Colors.white;
        ;
      }

      else if (_myKey == 'G')
      {
        pianoKey1 = Colors.white;
        pianoKey2 = Colors.white;
        pianoKey3 = Colors.black;
        pianoKey4 = Colors.white;
        pianoKey5 = Colors.black;
        pianoKey6 = Colors.white;
        pianoKey7 = Colors.black;
        pianoKey8 = Colors.white;
        pianoKey9 = Colors.white;
        pianoKey10 = Colors.black;
        pianoKey11 = Colors.white;
        pianoKey12 = Colors.black;
        pianoKey13 = Colors.white;
        pianoKey14 = Colors.white;
        pianoKey15 = Colors.black;
        pianoKey16 = Colors.lightGreenAccent;
        ;
      }

    });
  }



}
