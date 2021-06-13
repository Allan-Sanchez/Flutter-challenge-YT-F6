class Products {
  final String name;
  final String image;
  final int color;

  Products({required this.name, required this.image, required this.color});
}

final products = <Products>[
  Products(
    name: 'Beer',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571913/flutter/png/001-beer_mug_cvoovo.png',
    // color: 0XFFDBEAFE,
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Corn',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571915/flutter/png/011-corn_i622vl.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Chocolate',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571916/flutter/png/006-chocolate_bar_zeydg4.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Tacos',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571916/flutter/png/048-tacos_goyjty.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Hot Dog',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571916/flutter/png/004-hot_dog_rj71cw.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Chicken',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571915/flutter/png/016-chicken_cdhnuh.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Atole',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571915/flutter/png/038-atole_myvcdi.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'French Fries',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571914/flutter/png/010-french_fries_ll11bk.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Tequila',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571914/flutter/png/045-tequila_ogbsnz.png',
    color: 0XFFBFDBFE,
  ),
  Products(
    name: 'Cake',
    image:
        'https://res.cloudinary.com/dx9n8tsyu/image/upload/v1623571913/flutter/png/043-cake_opnoui.png',
    color: 0XFFBFDBFE,
  ),
];
