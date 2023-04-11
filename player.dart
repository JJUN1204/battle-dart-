
import 'dart:math';

class Player{
  final String name;
  int hp;
  final int minDmg, maxDmg;


  Player(
    {
      required this.name, 
      required this.hp,
      required this.minDmg,
      required this.maxDmg
    }
  );

  int attack(){
    final rd = Random(); 
    return minDmg + rd.nextInt(maxDmg - minDmg);
  }

 void def(int dmg){
    hp = hp - dmg;
 }

 //bool isDead(){
  //if(hp > 0) return false;
  //else return true;
  //return hp > 0 ? true : false;
 //}

 bool isDead() => hp > 0 ? false : true;
}

