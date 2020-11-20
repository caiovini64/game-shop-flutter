import 'package:steam_redesign/providers/game.dart';

// ignore: non_constant_identifier_names
final DUMMY_GAMES = [
  Game(
    id: 'p1',
    popular: true,
    title: 'CyberPunk 2077',
    description:
        'Cyberpunk 2077 is an open-world, action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification. You play as V, a mercenary outlaw going after a one-of-a-kind implant that is the key to immortality.',
    price: 29.99,
    coverUrl:
        'https://gamenoticia.com.br/wp-content/uploads/2020/06/keanu-reeves-cyberpunk-2077-johnny-silverhand.jpg',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png',
  ),
  Game(
    id: 'p2',
    popular: false,
    title: 'Watch Dogs Legion',
    description:
        'Watch Dogs: Legion is an action-adventure game played from a third-person perspective, and takes place within an open world setting based upon London, which can be explored either on foot ─ utilizing parkour moves ─ vehicles, or fast-travelling via the citys Underground stations.',
    price: 59.99,
    imageUrl:
        'https://www.elite3d.com/wp-content/uploads/2019/12/elite3d-watch-dogs-legion-cover.jpg',
  ),
  Game(
    id: 'p3',
    popular: false,
    title: 'NBA 2K21',
    description:
        'NBA 2K21 is a basketball simulation video game that was developed by Visual Concepts and published by 2K Sports, based on the National Basketball Association (NBA).',
    price: 19.99,
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/91gRaPKrOTL._SL1500_.jpg',
  ),
];
