import UIKit

struct CardRepository {
  let cards: Set<Card> = [ //Set has only unique items and order doesn't matter
    Card(
      scientificName: "Amanita muscaria",
      commonName: "Fly Agaric",
      imageName: "fly-agaric",
      edible: false,
      description: "Amanita muscaria, commonly known as the fly agaric or fly amanita,[5] is a basidiomycete of the genus Amanita. Arguably the most iconic toadstool species, the fly agaric is a large white-gilled, white-spotted, usually red mushroom. Although poisonous, death due to poisoning from A. muscaria ingestion is quite rare",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Amanita_muscaria"
    ),
    Card(
      scientificName: "Pleurotus ostreatus",
      commonName: "Oyster Mushroom",
      imageName: "oyster-mushroom",
      edible: true,
      description: "Pleurotus is a genus of gilled mushrooms which includes one of the most widely eaten mushrooms, P. ostreatus. Species of Pleurotus may be called oyster, abalone, or tree mushrooms, and are some of the most commonly cultivated edible mushrooms in the world. Pleurotus fungi have also been used in mycoremediation of pollutants, such as petroleum and polycyclic aromatic hydrocarbons.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Pleurotus"
    ),
    Card(
      scientificName: "Morchella",
      commonName: "Morel Mushroom",
      imageName: "morel-mushroom",
      edible: true,
      description: "Morchella, the true morels, is a genus of edible sac fungi closely related to anatomically simpler cup fungi in the order Pezizales (division Ascomycota). These distinctive fungi have a honeycomb appearance due to the network of ridges with pits composing their caps. Morels are prized by gourmet cooks, particularly in Catalan and French cuisine. Due to difficulties in cultivation, commercial harvesting of wild morels has become a multimillion-dollar industry in the temperate Northern Hemisphere, in particular North America, Turkey, China, the Himalayas, India, and Pakistan where these highly prized fungi are found in abundance.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Morchella"
    ),
    Card(
      scientificName: "Laetiporus",
      commonName: "Chicken of the Woods",
      imageName: "chicken-of-the-woods",
      edible: true,
      description: "Laetiporus is a genus of edible mushrooms found throughout much of the world. Some species, especially Laetiporus sulphureus, are commonly known as sulphur shelf, chicken of the woods, the chicken mushroom, or the chicken fungus because it is often described as tasting like and having a texture similar to that of chicken meat. The name Laetiporus means with bright pores. Individual shelves range from 5 to 25 cm (2 to 10 inches) across.  It is most commonly found on wounds of trees, mostly oak, though it is also frequently found on eucalyptus, yew, sweet chestnut, and willow, as well as conifers in some species. Laetiporus species are parasitic and produce brown rot in the host on which they grow.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Laetiporus"
    ),
    Card(
      scientificName: "Cantharellus",
      commonName: "Chanterelle",
      imageName: "chanterelle",
      edible: true,
      description: "Cantharellus is a genus of popular edible mushrooms, commonly known as chanterelles/ˌʃæntəˈrɛl/, a name which can also refer to the type species, Cantharellus cibarius. They are mycorrhizal fungi, meaning they form symbiotic associations with plants, making them very difficult to cultivate. Caution must be used when identifying chanterelles for consumption due to lookalikes, such as the jack-o'-lantern mushroom (Omphalotus olearius and others), which can make a person very ill. Despite this, chanterelles are one of the most recognized and harvested groups of edible mushrooms.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Cantharellus"
    ),
    Card(
      scientificName: "Trametes versicolor",
      commonName: "Turkey Tail",
      imageName: "turkey-tail",
      edible: true,
      description: "Trametes versicolor – also known as Coriolus versicolor and Polyporus versicolor – is a common polypore mushroom found throughout the world. Meaning of several colors, versicolor reliably describes this fungus that displays a variety of colors. The flesh itself is 1–3 mm thick and has a leathery texture. It commonly grows in tiled layers on in groups or rows on logs and stumps of deciduous trees, and is common in North America. The mushroom is stalkless and the cap is rust-brown or darker brown, sometimes with black zones. The pore surface is whitish to light brown, with pores round and with age twisted and labyrinthine. 3–8 pores per millimeter.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Trametes_versicolor"
    ),
    Card(
      scientificName: "Ramaria stricta",
      commonName: "Coral Fungus",
      imageName: "coral-fungus",
      edible: false,
      description: "Ramaria stricta, commonly known as the strict-branch coral is a coral fungus of the genus Ramaria. It has a cosmopolitan distribution, and grows on dead wood, stumps, trunks, and branches of both deciduous and coniferous trees. Its fruit body is up to 10 cm (3+7⁄8 in) tall, made of multiple slender, compact, and vertical parallel branches. Its color is typically light tan to vinaceous-brown.  The fungus is inedible due to its unpleasant odor and bitter taste. The color of the fruit body is brownish to yellow, becoming paler toward extremities.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Ramaria_stricta"
    ),
    Card(
      scientificName: "Auricularia auricula-judae",
      commonName: "Woods Ear",
      imageName: "woods-ear",
      edible: true,
      description: "Wood-ear or tree ear (Chinese: 木耳; pinyin: mù'ěr, Korean: 목이 버섯), also translated wood jellyfish or tree jellyfish (Japanese: キクラゲ, Hepburn: ki-kurage), can refer to a few similar-looking edible fungi used primarily in Chinese cuisine; these are commonly sold in Asian markets shredded and dried.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Wood_ear"
    ),
    Card(
      scientificName: "Astraeus hygrometricus",
      commonName: "Earthstar Mushroom",
      imageName: "earth-star",
      edible: false,
      description: "Astraeus hygrometricus, commonly known as the hygroscopic earthstar, the barometer earthstar, or the false earthstar, is a species of fungus in the family Diplocystaceae. Young specimens resemble a puffball when unopened. In maturity, the mushroom displays the characteristic earthstar shape that is a result of the outer layer of fruit body tissue splitting open in a star-like manner.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Astraeus_hygrometricus"
    ),
    Card(
      scientificName: "Coprinopsis atramentaria",
      commonName: "Inky Cap",
      imageName: "inky-cap",
      edible: false,
      description: "Coprinopsis atramentaria, commonly known as the common ink cap or inky cap, is an edible (although poisonous, when combined with alcohol) mushroom found in Europe and North America. Previously known as Coprinus atramentarius, it is the second best known ink cap and previous member of the genus Coprinus after C. comatus. It is a widespread and common fungus found throughout the northern hemisphere. Clumps of mushrooms arise after rain from spring to autumn, commonly in urban and disturbed habitats such as vacant lots and lawns, as well as grassy areas. The grey-brown cap is initially bell-shaped before opening, after which it flattens and disintegrates. The flesh is thin and the taste mild. It can be eaten but is poisonous when consumed with alcohol – hence another common name, tippler's bane.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Coprinopsis_atramentaria"
    ),
    Card(
      scientificName: "Boletus edulis",
      commonName: "Porcini",
      imageName: "porcini",
      edible: false,
      description: "The fungus grows in deciduous and coniferous forests and tree plantations, forming symbiotic ectomycorrhizal associations with living trees by enveloping the tree's underground roots with sheaths of fungal tissue. The fungus produces spore-bearing fruit bodies above ground in summer and autumn. The fruit body has a large brown cap which on occasion can reach 30 cm (12 in), rarely 40 cm (16 in) in diameter and 3 kg (6 lb 10 oz) in weight. Like other boletes, it has tubes extending downward from the underside of the cap, rather than gills; spores escape at maturity through the tube openings, or pores. Prized as an ingredient in various culinary dishes, B. edulis is an edible mushroom held in high regard in many cuisines, and is commonly prepared and eaten in soups, pasta, or risotto.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Boletus_edulis"
    ),
    Card(
      scientificName: "Cerioporus squamosus",
      commonName: "Pheasant Back",
      imageName: "pheasant-back",
      edible: true,
      description: "Cerioporus squamosus aka Polyporus squamosus is a basidiomycete bracket fungus, with common names including dryad's saddle and pheasant's back mushroom.[2] It has a widespread distribution, being found in North America, Australia, Asia, and Europe, where it causes a white rot in the heartwood of living and dead hardwood trees. The name dryad's saddle refers to creatures in Greek mythology called dryads who could conceivably fit and ride on this mushroom, whereas the pheasant's back analogy derives from the pattern of colors on the bracket matching that of a pheasant's back. ",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Cerioporus_squamosus"
    ),
    Card(
      scientificName: "Phallus indusiatus",
      commonName: "Bridal Veil Stinkhorn",
      imageName: "bridal-veil-stinkhorn",
      edible: true,
      description: "Phallus indusiatus, commonly called the bamboo mushrooms, bamboo pith, long net stinkhorn, crinoline stinkhorn or veiled lady, is a fungus in the family Phallaceae, or stinkhorns. It has a cosmopolitan distribution in tropical areas, and is found in southern Asia, Africa, the Americas, and Australia, where it grows in woodlands and gardens in rich soil and well-rotted woody material. The cap is covered with a greenish-brown spore-containing slime, which attracts flies and other insects that eat the spores and disperse them. An edible mushroom featured as an ingredient in Chinese haute cuisine, it is used in stir-fries and chicken soups. The mushroom, grown commercially and commonly sold in Asian markets, is rich in protein, carbohydrates, and dietary fiber.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Phallus_indusiatus"
    ),
    Card(
      scientificName: "Cortinarius violaceus",
      commonName: "Violet Webcap",
      imageName: "violet-webcap",
      edible: false,
      description: "Cortinarius violaceus, commonly known as the violet webcap or violet cort, is a fungus in the webcap genus Cortinarius native across the Northern Hemisphere. The fruit bodies are dark purple mushrooms with caps up to 15 cm (6 in) across, sporting gills underneath. The dark flesh has a smell reminiscent of cedar wood. Forming symbiotic (ectomycorrhizal) relationships with the roots of various plant species, C. violaceus is found predominantly in conifer forests in North America and deciduous forests in Europe. ",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Cortinarius_violaceus"
    ),
    Card(
      scientificName: "Flammulina filiformis",
      commonName: "Enoki",
      imageName: "enoki",
      edible: true,
      description: "Flammulina filiformis is a species of agaric (gilled mushroom) in the family Physalacriaceae. It is well known for its role in Japanese cuisine, where it is called enokitake and is widely cultivated in east Asia. Cultivated enokitake are not exposed to light, resulting in white or pallid fruitbodies with long stipes and small caps. The fungus is found on dead wood of Betula platyphylla, Broussonetia papyrifera, Dipentodon sinicus, Neolitsea sp., Salix spp, and other broad-leaved trees. It grows naturally in China, Korea, and Japan.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Flammulina_filiformis"
    ),
    Card(
      scientificName: "Lycoperdon perlatum",
      commonName: "Common Puffball",
      imageName: "common-puffball",
      edible: true,
      description: "Lycoperdon perlatum, popularly known as the common puffball, warted puffball, gem-studded puffball, wolf farts or the devil's snuff-box, is a species of puffball fungus in the family Agaricaceae.  It is off-white with a top covered in short spiny bumps or jewels, which are easily rubbed off to leave a netlike pattern on the surface. When mature it becomes brown, and a hole in the top opens to release spores in a burst when the body is compressed by touch or falling raindrops. The puffball grows in fields, gardens, and along roadsides, as well as in grassy clearings in woods. It is edible when young and the internal flesh is completely white, although care must be taken to avoid confusion with immature fruit bodies of poisonous Amanita species.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Lycoperdon_perlatum"
    ),
    Card(
      scientificName: "Sparassis",
      commonName: "Cauliflower",
      imageName: "cauliflower",
      edible: true,
      description: "Sparassis (also known as cauliflower mushroom) is a genus of parasitic and saprobic mushrooms characterised by their unique shape and appearance. Can be found around the globe. This appearance can be described as similar to a sea sponge, a brain, or a head of cauliflower, from which it has been given its popular name.They are increasingly cultivated and being sold in Korea, Japan, United States and Australia.The generic name comes from the Greek sparassein meaning to tear. Sparassis crispa can be very tasty, but should be thoroughly cleaned before use. The folds can contain dirt and other material because, as it grows, the basidiocarp envelops objects around it such as pine needles.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Sparassis"
    ),
    Card(
      scientificName: "Hericium erinaceus",
      commonName: "Lion's Mane",
      imageName: "lions_mane",
      edible: true,
      description: "Hericium erinaceus (also called lion's mane mushroom, mountain-priest mushroom or bearded tooth fungus) is an edible mushroom belonging to the tooth fungus group. Native to North America, Europe and Asia, it can be identified by its long spines (greater than 1 cm length), occurrence on hardwoods, and tendency to grow a single clump of dangling spines. The fruit bodies can be harvested for culinary use. ",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Hericium_erinaceus"
    ),
    Card(
      scientificName: "Gyromitra",
      commonName: "False Morel",
      imageName: "false_morel",
      edible: false,
      description: "Gyromitra is a genus of about 18 species of ascomycete fungi. They are a false morel - a frequently toxic mushroom that can be mistaken for edible mushrooms of the genus Morchella (morels). The name Gyromitra comes from gyro meaning convoluted and mitra meaning turban. Some types of Gyromitra are highly poisonous when raw due to the presence of gyromitrin, although some species are edible when cooked and Gyromitra are sought after in Scandinavian countries.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Gyromitra"
    ),
    Card(
      scientificName: "Calvatia gigantea",
      commonName: "Giant Puffball",
      imageName: "giant_puffball",
      edible: true,
      description: "Calvatia gigantea, commonly known as the giant puffball, is a puffball mushroom commonly found in meadows, fields, and deciduous forests usually in late summer and autumn. It is found in temperate areas throughout the world. The fruiting body of a puffball mushroom will develop within the period of a few weeks and soon begin to decompose and rot, at which point it is dangerous to eat. Unlike most mushrooms, all the spores of the giant puffball are created inside the fruiting body; large specimens can easily contain several trillion spores. Spores are yellowish, smooth, and 3–5 μm in size.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Calvatia_gigantea"
    ),
    Card(
      scientificName: "Amanita bisporigera",
      commonName: "Destroying Angel",
      imageName: "destroying_angel",
      edible: false,
      description: "Amanita bisporigera is a deadly poisonous species of fungus in the family Amanitaceae. It is commonly known as the eastern destroying angel amanita,[3] the eastern North American destroying angel or just as the destroying angel, although the fungus shares this latter name with three other lethal white Amanita species, A. ocreata, A. verna and A. virosa.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Amanita_bisporigera"
    ),
    Card(
      scientificName: "Omphalotus illudens",
      commonName: "Jack-o'lantern",
      imageName: "jack-olantern",
      edible: false,
      description: "Omphalotus illudens, commonly known as the eastern jack-o'lantern mushroom, is a large, orange mushroom that is often found in clumps on decaying stumps, buried roots, or at the base of hardwood trees in eastern North America. Its gills often exhibit a weak green bioluminescence when fresh. It is believed that this display serves to attract insects to the mushroom’s gills during nighttime, which can then distribute its spores across a wider area. Omphalotus illudens is sometimes confused with edible chanterelles, but can be distinguished by its thicker, fleshier appearance, tendency to form large clusters, and clearly separated caps when young.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Omphalotus_illudens"
    ),
    Card(
      scientificName: "Armillaria mellea",
      commonName: "Honey Fungus",
      imageName: "honey-fungus",
      edible: true,
      description: "Armillaria mellea, commonly known as honey fungus, is a basidiomycete fungus in the genus Armillaria. The mushrooms are edible but some people may be intolerant to them. This species is capable of producing light via bioluminescence in its mycelium. Armillaria mellea is widely distributed in temperate regions of the Northern Hemisphere. The fruit body or mushroom, commonly known as stump mushroom, stumpie, honey mushroom, pipinky or pinky, grows typically on hardwoods but may be found around and on other living and dead wood or in open areas.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Armillaria_mellea"
    )
  ]
  
  init() { 
    // Checks for missing images and return a fatal error for a missing image.
    for card in cards {
      if UIImage(named: card.imageName) == nil {
        fatalError("\(card.commonName) is missing the image.")
      }
    }
  }
  
  func getAlphabetizedCards() -> [Card]  {
    return Array(cards).sorted(by: { $0.commonName < $1.commonName })
  }
  
  func getRandomCard() -> Card {
    let randomIndex = Int.random(in: 0...cards.count - 1)
    let randomCard = Array(cards)[randomIndex]
    return randomCard
  }
  
  func wrongCards(for rightCard: Card) -> [Card] {
    var otherCards = cards
    otherCards.remove(rightCard)
    
    let randomizedOtherCardsArray = Array(otherCards)
      .shuffled()
    
    return Array(randomizedOtherCardsArray[0...2])
  }
}
