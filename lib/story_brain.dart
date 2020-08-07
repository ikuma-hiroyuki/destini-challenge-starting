//Step 6 - import the story.dart file into this file.
import 'story.dart';

//Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  int _storyNumber = 0;

  String getStory() => _storyData[_storyNumber].storyTitle;
  String getChoice1() => _storyData[_storyNumber].choice1;
  String getChoice2() => _storyData[_storyNumber].choice2;
  bool buttonShouldBeVisible() {
    if (_storyNumber <= 2) {
      return true;
    } else {
      return false;
    }
  }

  void nextStory({int userChoice}) {
    switch (_storyNumber) {
      case 0:
        if (userChoice == 1) {
          _storyNumber = 2;
        } else if (userChoice == 2) {
          _storyNumber = 1;
        }
        break;
      case 1:
        if (userChoice == 1) {
          _storyNumber = 2;
        } else if (userChoice == 2) {
          _storyNumber = 3;
        }
        break;
      case 2:
        if (userChoice == 1) {
          _storyNumber = 5;
        } else if (userChoice == 2) {
          _storyNumber = 4;
        }
        break;
      case 3:
      case 4:
      case 5:
        reStart();
    }
  }

  void reStart() {
    _storyNumber = 0;
  }

  List<Story> _storyData = [
    Story(
        storyTitle: 'あなたの車は、携帯電話の電波が届かない曲がりくねった道でタイヤがパンクしてしまった。'
            'あなたはヒッチハイクすることにしました。錆びたピックアップトラックが横に停車する。'
            '魂のない目をしたつばの広い帽子をかぶった男が助手席のドアを開けて尋ねた。乗らないか？',
        choice1: '飛び込んでみます。助けてくれてありがとう！',
        choice2: 'まず殺人犯かどうか聞いた方がいいな'),
    Story(
        storyTitle: '彼は質問に動じず、ゆっくりと頷く。',
        choice1: '少なくとも彼は正直だ 私が乗り込むわ',
        choice2: '待って、タイヤの交換方法を知っている。'),
    Story(
        storyTitle: '運転を始めると、見知らぬ男は母親との関係を話し始める。'
            '彼は刻一刻と怒りを増していく。グローブボックスを開けるように言われる。'
            '中には血まみれのナイフ、切断された2本の指、そしてエルトン・ジョンのカセットテープが入っています。'
            '彼はグローブボックスに手を伸ばす。',
        choice1: 'エルトン・ジョン大好き！カセットテープを渡して',
        choice2: '彼か私かだ！ナイフを持って彼を刺せ'),
    Story(
        storyTitle: '何だと？何てこった！交通事故が成人年齢層の事故死の第二の原因だと知っていましたか？',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle: 'ガードレールを突き破り、眼下の岩に向かって飛び出しながら、'
            '自分が乗っている車を運転しているときに誰かを刺すのはいかがわしいことかと反省します。',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle: '"今夜は愛を感じることができるか" の歌を歌いながら 殺人者との絆を深めていく。'
            '彼は次の町であなたを降ろします。帰る前に彼はあなたに死体を捨てるのに良い場所を知っているかと尋ねます。'
            'あなたは答える。桟橋に行ってみてください。',
        choice1: 'Restart',
        choice2: '')
  ];
}

//Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
