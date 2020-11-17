import 'package:steam_redesign/models/game.dart';

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
    title: 'Horizon Zero Dawn',
    description:
        'Join Aloy on her journey across a vast open-world that’s defined by the presence of robotic wildlife. Equipped with a futuristic bow and an augmented reality device called the Focus, Aloy will have to face against the mechanical life forms in combat sequences that are presented from a third-person perspective.',
    price: 59.99,
    imageUrl:
        'https://cdn-products.eneba.com/resized-products/cfp1c3QENHakdjuf424Yt6hVn_mmFbOV-M8rITUoVj8_350x200_1x-0.jpeg',
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
