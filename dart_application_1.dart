


import 'player.dart';

void main() {
  /*
  Player p1 = Player(
    name: 'lee',
    hp: 100,
    minDmg: 3,
    maxDmg: 20
  );

  Player p2 = Player(
    name: 'kim',
    hp: 100,
    minDmg: 7,
    maxDmg: 16
  );
  List<Player> players = [p1,p2];
  */
  List<Player> players =[];
  players.add(Player(name: 'lee',hp: 100,minDmg: 3,maxDmg: 20));
  players.add(Player(name: 'kim',hp: 100,minDmg: 7,maxDmg: 16));

  int attacker = 0;
  int defender = 1;
  while(true){
    print('${players[attacker].name} 공격할 차례입니다.');
    int dmg = players[attacker].attack();
    print('${players[attacker].name} 님이 ${players[defender].name} 에게 $dmg 만큼 공격');

    players[defender].def(dmg);

    if(players[defender].isDead()){
      print('${players[attacker].name}이 이겼습니다. 짝짝짝');
      break;
    }

    attacker = 1 - attacker;
    defender = 1 - defender;
  }
}
