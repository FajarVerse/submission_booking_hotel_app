class Hotel {
  String name;
  String city;
  String location;
  String description;
  String price;
  String image;
  double rating;
  List<String> imageList;
  List<String> facilities;

  Hotel({
    required this.name,
    required this.city,
    required this.location,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    required this.imageList,
    required this.facilities,
  });
}

var hotelList = [
  Hotel(
    name: "Grand Bekasi Residence",
    city: "Bekasi",
    location: "Jl. Cut Mutia No. 10",
    price: "480.000",
    image: "images/grand_bekasi_residence.jpg",
    rating: 4.3,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Restoran"],
    description:
        "Grand Bekasi Residence menawarkan konsep hunian modern dengan fasilitas yang mendukung kenyamanan tamu selama menginap.",
  ),

  Hotel(
    name: "Margonda Stay",
    city: "Depok",
    location: "Jl. Margonda Raya",
    price: "320.000",
    image: "images/margonda_stay.jpg",
    rating: 4.0,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC"],
    description:
        "Margonda Stay adalah penginapan sederhana yang berlokasi di pusat aktivitas Kota Depok dengan akses mudah ke berbagai fasilitas umum.",
  ),
  Hotel(
    name: "Depok Cozy Hotel",
    city: "Depok",
    location: "Jl. Kukusan No. 5",
    price: "290.000",
    image: "images/depok_cozy_hotel.jpg",
    rating: 3.9,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC"],
    description:
        "Depok Cozy Hotel menyediakan penginapan dengan suasana tenang dan nyaman, cocok untuk tamu yang mengutamakan kenyamanan dasar.",
  ),

  Hotel(
    name: "Bogor Valley Resort",
    city: "Bogor",
    location: "Jl. Pajajaran No. 3",
    price: "420.000",
    image: "images/bogor_valley_resort.jpg",
    rating: 4.3,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Restoran"],
    description:
        "Bogor Valley Resort menawarkan suasana asri dengan lingkungan hijau khas Bogor, cocok untuk wisatawan yang ingin bersantai.",
  ),
  Hotel(
    name: "Puncak View Resort",
    city: "Bogor",
    location: "Jl. Raya Puncak",
    price: "780.000",
    image: "images/puncak_view_resort.jpg",
    rating: 4.8,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Pemandangan Alam"],
    description:
        "Puncak View Resort merupakan penginapan dengan pemandangan alam pegunungan yang menawarkan pengalaman menginap yang nyaman dan tenang.",
  ),

  Hotel(
    name: "BSD Smart Hotel",
    city: "Tangerang Selatan",
    location: "Jl. BSD Boulevard",
    price: "540.000",
    image: "images/bsd_smart_hotel.jpg",
    rating: 4.4,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Gym"],
    description:
        "BSD Smart Hotel menawarkan fasilitas modern dan cocok bagi tamu yang melakukan perjalanan bisnis di kawasan BSD.",
  ),
  Hotel(
    name: "Serpong Comfort Stay",
    city: "Tangerang Selatan",
    location: "Jl. Serpong Raya",
    price: "390.000",
    image: "images/serpong_comfort_stay.jpg",
    rating: 4.1,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC"],
    description:
        "Serpong Comfort Stay menyediakan akomodasi nyaman dengan lokasi strategis di wilayah Tangerang Selatan.",
  ),
  Hotel(
    name: "Airport Transit Hotel",
    city: "Tangerang",
    location: "Jl. Bandara Soekarno-Hatta",
    price: "470.000",
    image: "images/airport_transit_hotel.jpg",
    rating: 4.3,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Shuttle Bandara"],
    description:
        "Airport Transit Hotel cocok bagi tamu yang membutuhkan penginapan dekat bandara dengan akses cepat dan fasilitas pendukung perjalanan.",
  ),

  Hotel(
    name: "Central City Inn",
    city: "Jakarta Pusat",
    location: "Jl. Cikini",
    price: "360.000",
    image: "images/central_city_inn.jpeg",
    rating: 4.0,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC"],
    description:
        "Central City Inn menawarkan penginapan praktis di pusat kota Jakarta dengan fasilitas standar.",
  ),
  Hotel(
    name: "North Shore Hotel",
    city: "Jakarta Utara",
    location: "Jl. Pantai Indah Kapuk",
    price: "680.000",
    image: "images/nort_shore_oceanfront.jpg",
    rating: 4.6,
    imageList: [
      "images/penginapan_1.jpg",
      "images/penginapan_2.jpg",
      "images/penginapan_3.jpg",
    ],
    facilities: ["WiFi", "AC", "Kolam Renang"],
    description:
        "North Shore Hotel merupakan hotel dengan konsep modern yang berlokasi di kawasan Jakarta Utara.",
  ),
];
