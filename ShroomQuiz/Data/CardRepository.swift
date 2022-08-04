import UIKit

struct CardRepository {
  let cards: Set<Card> = [ //Set has only unique items and order doesn't matter
    Card(
      scientificName: "Amanita muscaria",
      commonName: "Fly Agaric",
      imageName: "fly-agaric",
      edible: false,
      description: "Amanita muscaria, commonly known as the fly agaric or fly amanita, is a basidiomycete of the genus Amanita. Arguably the most iconic toadstool species, the fly agaric is a large white-gilled, white-spotted, usually red mushroom. Although poisonous, death due to poisoning from A. muscaria ingestion is quite rare",
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
      description: "Laetiporus is a genus of edible mushrooms found throughout much of the world. Some species, especially Laetiporus sulphureus, are commonly known as sulphur shelf, chicken of the woods, the chicken mushroom, or the chicken fungus because it is often described as tasting like and having a texture similar to that of chicken meat. The name Laetiporus means with bright pores. Individual shelves range from 5 to 25 cm (2 to 10 inches) across. It is most commonly found on wounds of trees, mostly oak, though it is also frequently found on eucalyptus, yew, sweet chestnut, and willow, as well as conifers in some species. Laetiporus species are parasitic and produce brown rot in the host on which they grow.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Laetiporus"
    ),
    Card(
      scientificName: "Cantharellus",
      commonName: "Chanterelle",
      imageName: "chanterelle",
      edible: true,
      description: "Cantharellus is a genus of popular edible mushrooms, commonly known as chanterelles, a name which can also refer to the type species, Cantharellus cibarius. They are mycorrhizal fungi, meaning they form symbiotic associations with plants, making them very difficult to cultivate. Caution must be used when identifying chanterelles for consumption due to lookalikes, such as the jack-o'-lantern mushroom (Omphalotus olearius and others), which can make a person very ill. Despite this, chanterelles are one of the most recognized and harvested groups of edible mushrooms.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Cantharellus"
    ),
    Card(
      scientificName: "Trametes versicolor",
      commonName: "Turkey Tail",
      imageName: "turkey-tail",
      edible: true,
      description: "Trametes versicolor – also known as Coriolus versicolor and Polyporus versicolor – is a common polypore mushroom found throughout the world. Meaning of several colors, versicolor reliably describes this fungus that displays a variety of colors. The flesh itself is 1–3 mm thick and has a leathery texture. It commonly grows in tiled layers on in groups or rows on logs and stumps of deciduous trees, and is common in North America. The mushroom is stalkless and the cap is rust-brown or darker brown, sometimes with black zones. The pore surface is whitish to light brown, with pores round and with age twisted and labyrinthine. 3–8 pores per millimeter. Polysaccharide-K (PSK or krestin), extracted from T. versicolor, is considered safe for use as an adjunct therapy for cancer treatment in Japan where it is known as kawaratake (roof tile mushroom) and approved for clinical use.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Trametes_versicolor"
    ),
    Card(
      scientificName: "Ramaria stricta",
      commonName: "Coral Fungus",
      imageName: "coral-fungus",
      edible: false,
      description: "Ramaria stricta, commonly known as the strict-branch coral is a coral fungus of the genus Ramaria. It has a cosmopolitan distribution, and grows on dead wood, stumps, trunks, and branches of both deciduous and coniferous trees. Its fruit body is up to 10 cm (3+7⁄8 in) tall, made of multiple slender, compact, and vertical parallel branches. Its color is typically light tan to vinaceous-brown. The fungus is inedible due to its unpleasant odor and bitter taste. The color of the fruit body is brownish to yellow, becoming paler toward extremities.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Ramaria_stricta"
    ),
    Card(
      scientificName: "Auricularia auricula-judae",
      commonName: "Wood Ear",
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
      description: "Cerioporus squamosus aka Polyporus squamosus is a basidiomycete bracket fungus, with common names including dryad's saddle and pheasant's back mushroom. It has a widespread distribution, being found in North America, Australia, Asia, and Europe, where it causes a white rot in the heartwood of living and dead hardwood trees. The name dryad's saddle refers to creatures in Greek mythology called dryads who could conceivably fit and ride on this mushroom, whereas the pheasant's back analogy derives from the pattern of colors on the bracket matching that of a pheasant's back. ",
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
      description: "Lycoperdon perlatum, popularly known as the common puffball, warted puffball, gem-studded puffball, wolf farts or the devil's snuff-box, is a species of puffball fungus in the family Agaricaceae. It is off-white with a top covered in short spiny bumps or jewels, which are easily rubbed off to leave a netlike pattern on the surface. When mature it becomes brown, and a hole in the top opens to release spores in a burst when the body is compressed by touch or falling raindrops. The puffball grows in fields, gardens, and along roadsides, as well as in grassy clearings in woods. It is edible when young and the internal flesh is completely white, although care must be taken to avoid confusion with immature fruit bodies of poisonous Amanita species.",
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
      description: "Amanita bisporigera is a deadly poisonous species of fungus in the family Amanitaceae. It is commonly known as the eastern destroying angel amanita, the eastern North American destroying angel or just as the destroying angel, although the fungus shares this latter name with three other lethal white Amanita species, A. ocreata, A. verna and A. virosa.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Amanita_bisporigera"
    ),
    Card(
      scientificName: "Omphalotus illudens",
      commonName: "Jack-o'-lantern",
      imageName: "jack-olantern",
      edible: false,
      description: "Omphalotus illudens, commonly known as the eastern jack-o'lantern mushroom, is a large, orange mushroom that is often found in clumps on decaying stumps, buried roots, or at the base of hardwood trees in eastern North America. Its gills often exhibit a weak green bioluminescence when fresh. It is believed that this display serves to attract insects to the mushroom’s gills during nighttime, which can then distribute its spores across a wider area. Omphalotus illudens is sometimes confused with edible chanterelles, but can be distinguished by its thicker, fleshier appearance, tendency to form large clusters, and clearly separated caps when young.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Omphalotus_illudens"
    ),
    Card(
      scientificName: "Entoloma abortivum",
      commonName: "Shrimp Mushroom",
      imageName: "shrimp-mushroom",
      edible: true,
      description: "Entoloma abortivum, commonly known as the aborted entoloma or shrimp of the woods, is an edible mushroom in the Entolomataceae family of fungi. Caution should be used in identifying the species before eating (similar species such as Entoloma sinuatum being poisonous). It was believed that the honey mushroom, Armillaria mellea, was parasitizing the entoloma. But research has indicated that the inverse may be true—the entoloma may be parasitizing the honey mushroom. There is still some disagreement by mushroom collectors about this since it is common to see both the aborted and unaborted forms of the entoloma on wood and in leaf litter, whereas Armillaria generally only fruits on wood. Both versions of the entoloma have also been observed when there are no Armillaria fruiting.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Entoloma_abortivum"
    ),
    Card(
      scientificName: "Ganoderma applanatum",
      commonName: "Artist's Conk",
      imageName: "artists-conk",
      edible: false,
      description: "Ganoderma applanatum (the artist's bracket, artist's conk, artist's fungus or bear bread) is a bracket fungus with a cosmopolitan distribution. This fungus is parasitic and saprophytic, and grows as a mycelium within the wood of living and dead trees. The Ganoderma applanatum grows in single, scattered, or compound formations. It forms fruiting bodies that are 3–30 cm wide × 5–50 cm long × 1–10 cm thick, hard as leather, woody-textured, and inedible. They are white at first but soon turn dark red-brown. The upper surface of the fruiting body is covered with reddish brown conidia. Brown spores are released from the pores on the underside of the fruiting body. The fruiting bodies are perennial, and may persist for multiple years, increasing in size and forming new layers of pores as they grow. These layers can be distinguished in a cross section or from observation of the concentric rings on the upper surface of the fruiting body. This allows the fruiting body's age to be determined using the same method as tree rings.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Ganoderma_applanatum"
    ),
    Card(
      scientificName: "Fistulina hepatica",
      commonName: "Beefsteak Fungus",
      imageName: "beefsteak-fungus",
      edible: true,
      description: "Fistulina hepatica (beefsteak fungus, also known as beefsteak polypore, poor man’s steak, ox tongue, or tongue mushroom) is an unusual bracket fungus classified in the Agaricales, that is commonly seen in Britain, but can be found in North America, Australia, North Africa, Southern Africa and the rest of Europe. As its name suggests, it looks remarkably similar to a slab of raw meat. It has been used as a meat substitute in the past, and can still be found in some French markets. It has a sour, slightly acidic taste. For eating it must be collected young and it may be tough and need long cooking. The cap is 7–30 cm wide and 2–6 cm thick. Is shape resembles a large tongue, and it is rough-surfaced with a reddish-brown colour. The spores are pink and released from minute pores on the creamy-white underside of the fruit body. A younger Fistulina hepatica is a pinkish-red colour, and it darkens with age. It bleeds a dull red juice when cut, which can cause stains, and the cut flesh further resembles meat. It is sour in taste, edible and considered choice by some, although older specimens should be soaked overnight, as their juice can cause gastric upset.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Fistulina_hepatica"
    ),
    Card(
      scientificName: "Craterellus cornucopioides",
      commonName: "Black Trumpet",
      imageName: "black-trumpet",
      edible: true,
      description: "Craterellus cornucopioides, or horn of plenty, is an edible mushroom. It is also known as the black chanterelle, black trumpet, trompette de la mort (French), trombetta dei morti (Italian) or trumpet of the dead, djondjon (Haitian). The Cornucopia, in Greek mythology, referred to the magnificent horn of the nymph Amalthea's goat (or of herself in goat form), that filled itself with whatever meat or drink its owner requested. It has become the symbol of plenty. A possible origin for the name trumpet of the dead is that the growing mushrooms were seen as being played as trumpets by dead people under the ground. This fungus is found in woods in Europe, North America, and East Asia. Mainly it grows under beech, oak or other broad-leaved trees, especially in moss in moist spots on heavy calcareous soil. In Europe it is generally common but seems to be rare in some countries such as the Netherlands. It appears from June to November, and in the UK, from August to November. The mushroom is usually almost black, and it is hard to find because its dark colour easily blends in with the leaf litter on the forest floor. Hunters of this mushroom say it is like looking for black holes in the ground.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Craterellus_cornucopioides"
    ),
    Card(
      scientificName: "Ustilago maydis",
      commonName: "Corn Smut",
      imageName: "corn-smut",
      edible: true,
      description: "Corn smut is a plant disease caused by the pathogenic fungus Ustilago maydis that causes smut on maize and teosinte. The fungus forms galls on all above-ground parts of corn species. It is edible, and is known in Mexico as the delicacy huitlacoche; which is eaten, usually as a filling, in quesadillas and other tortilla-based foods, and in soups. The fungus infects all parts of the host plant by invading the ovaries of its host. The infection causes the corn kernels to swell up into tumor-like galls, whose tissues, texture, and developmental pattern are mushroom-like. The galls grow to 4 to 5 inches in diameter. These galls are made up of hypertrophied cells of the infected plant, along with resulting fungal threads, and blue-black spores. These dark-colored spores give the cob a burned, scorched appearance; this is the origin of the generic name Ustilago, from the Latin word ustilare (to burn).",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Corn_smut"
    ),
    Card(
      scientificName: "Peniophora albobadia",
      commonName: "Giraffe Spots",
      imageName: "giraffe-spots",
      edible: false,
      description: "Peniophora albobadia is a species of crust fungus in the family Peniophoraceae. It is a plant pathogen that affects stone fruits. First described scientifically by Lewis David de Schweinitz in 1822, it was transferred to the genus Peniophora by Jacques Boidin in 1961. It is most commonly found in the United States.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Peniophora_albobadia"
    ),
    Card(
      scientificName: "Chlorophyllum molybdites",
      commonName: "Green-spored Lepiota",
      imageName: "green-spored-lepiota",
      edible: false,
      description: "Chlorophyllum molybdites, which has the common names of false parasol, green-spored Lepiota and vomiter, is a widespread mushroom. Poisonous and producing severe gastrointestinal symptoms of vomiting and diarrhea, it is commonly conflated with the shaggy parasol or shaggy mane, and is the most commonly misidentified poisonous mushroom in North America. Chlorophyllum molybdites is the most frequently eaten poisonous mushroom in North America. The symptoms are predominantly gastrointestinal in nature, with vomiting, diarrhea and colic, often severe, occurring 1–3 hours after consumption. Although these poisonings can be severe, particularly in children, none have yet resulted in death.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Chlorophyllum_molybdites"
    ),
    Card(
      scientificName: "Lactarius",
      commonName: "Milk Caps",
      imageName: "milk-caps",
      edible: false,
      description: "Lactarius is a genus of mushroom-producing, ectomycorrhizal fungi, containing several edible species. The species of the genus, commonly known as milk-caps, are characterized by the milky fluid they exude when cut or damaged. Like the closely related genus Russula, their flesh has a distinctive brittle consistency. It is a large genus with over 500 known species, mainly distributed in the Northern hemisphere. Recently, the genus Lactifluus has been separated from Lactarius based on molecular phylogenetic evidence.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Lactarius"
    ),
    Card(
      scientificName: "Grifola frondosa",
      commonName: "Hen-of-the-woods",
      imageName: "hen-of-the-woods",
      edible: true,
      description: "Grifola frondosa (also known as hen-of-the-woods, maitake, ram's head or sheep's head) is a polypore mushroom that grows at the base of trees, particularly old growth oaks or maples. It is typically found in late summer to early autumn. It is native to China, Europe, and North America. The species is a choice edible mushroom. Maitake has been consumed for centuries in China and Japan where it is one of the major culinary mushrooms. The softer caps must be thoroughly cooked.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Grifola_frondosa"
    ),
    Card(
      scientificName: "Hydnum umbilicatum",
      commonName: "Hedgehog Mushroom",
      imageName: "hedgehog-mushroom",
      edible: true,
      description: "Hydnum umbilicatum, commonly known as the depressed hedgehog, is a species of tooth fungus in the family Hydnaceae. It was scientifically described in 1902 by American mycologist Charles Horton Peck. It is found in North America and in Europe. It is edible and good. Hydnum umbilicatum has been found to be associated with pines. Can be confused with Hydnum repandum, also known as the Wood Hedgehog. These two can be distinguished by their teeth, the Wood Hedgehog being decurrent.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Hydnum_umbilicatum"
    ),
    Card(
      scientificName: "Pleurotus eryngii",
      commonName: "King Oyster",
      imageName: "king-oyster",
      edible: true,
      description: "Pleurotus eryngii (also known as king trumpet mushroom, French horn mushroom, eryngi, king oyster mushroom, king brown mushroom) is an edible mushroom native to Mediterranean regions of Europe, the Middle East, and North Africa, but also grown in many parts of Asia. Pleurotus eryngii is the largest species in the oyster mushroom genus, Pleurotus, which also contains the oyster mushroom Pleurotus ostreatus. It has a thick, meaty white stem and a small tan cap (in young specimens). Its natural range extends from the Atlantic Ocean through the Mediterranean Basin and Central Europe into Western Asia and India. Unlike other species of Pleurotus, which are primarily wood-decay fungi, the P. eryngii complex are also weak parasites on the roots of herbaceous plants, although they may also be cultured on organic wastes.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Pleurotus_eryngii"
    ),
    Card(
      scientificName: "Tricholoma matsutake",
      commonName: "Matsutake",
      imageName: "matsutake",
      edible: true,
      description: "Matsutake (Japanese: 松茸/マツタケ), Tricholoma matsutake, is a highly sought species of choice edible mycorrhizal mushroom that grows in East Asia, Europe, and North America. It is prized in Japanese cuisine for its distinct spicy-aromatic odor. Matsutake are hard to find because of their specific growth requirements, the rarity of appropriate forest and terrain, and competition from wild animals such as squirrels, rabbits, and deer for the once-yearly harvest of mushrooms.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Matsutake"
    ),
    Card(
      scientificName: "Russula",
      commonName: "Russula",
      imageName: "russula",
      edible: false,
      description: "Russula is a very large genus composed of around 750 worldwide species of ectomycorrhizal mushrooms. They are typically common, fairly large, and brightly colored – making them one of the most recognizable genera among mycologists and mushroom collectors. Their distinguishing characteristics include usually brightly coloured caps, a white to dark yellow spore print, brittle, attached gills, an absence of latex, and absence of partial veil or volva tissue on the stem. Humans collect several species of Russula for food. There is a cultural divide toward interpretation of Russula edibility. In general, North American field guides tend to list mostly non-edible species and advise caution when consuming any member of the genus. In contrast, European field guides have a more favorable opinion and list more edible species.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Russula"
    ),
    Card(
      scientificName: "Shiitake",
      commonName: "Shiitake",
      imageName: "shiitake",
      edible: true,
      description: "The shiitake (Lentinula edodes) is an edible mushroom native to East Asia, which is now cultivated and consumed around the globe. It is considered a medicinal mushroom in some forms of traditional medicine. The mushroom's Japanese name shiitake (椎茸) is composed of shii (椎, Castanopsis), for the tree Castanopsis cuspidata that provides the dead logs on which it is typically cultivated, and take (茸, mushroom). The specific epithet edodes is the Latin word for edible. Shiitake grow in groups on the decaying wood of deciduous trees, particularly shii and other chinquapins, chestnut, oak, maple, beech, sweetgum, poplar, hornbeam, ironwood, and mulberry. Its natural distribution includes warm and moist climates in Southeast Asia.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Shiitake"
    ),
    Card(
      scientificName: "Suillus luteus",
      commonName: "Bolete - Suillus luteus",
      imageName: "bolete-suillus-luteus",
      edible: true,
      description: "Suillus luteus is a bolete fungus, and the type species of the genus Suillus. A common fungus native to Eurasia, from the British Isles to Korea, it has been introduced widely elsewhere, including North and South America, southern Africa, Australia and New Zealand. Commonly referred to as slippery jack or sticky bun in English-speaking countries, its names refer to the brown cap, which is characteristically slimy in wet conditions. The fungus, initially described as Boletus luteus by Carl Linnaeus in 1753, is now classified in a different family as well as genus. Suillus luteus is edible, though not as highly regarded as other bolete mushrooms, and is commonly prepared and eaten in soups, stews or fried dishes. The slime coating, however, may cause indigestion if not removed before eating. The fungus grows in coniferous forests in its native range, and pine plantations in countries where it has become naturalized. It forms symbiotic ectomycorrhizal associations with living trees by enveloping the tree's underground roots with sheaths of fungal tissue. The fungus produces spore-bearing fruit bodies, often in large numbers, above ground in summer and autumn. The fruit body cap often has a distinctive conical shape before flattening with age, reaching up to 13 cm (5 in) in diameter. Like other boletes, it has tubes extending downward from the underside of the cap, rather than gills; spores escape at maturity through the tube openings, or pores. The pore surface is yellow, and covered by a membranous partial veil when young. The pale stipe, or stem, measures up to 10 cm (4 in) tall and 3 cm (1.2 in) thick and bears small dots near the top. Unlike most other boletes, it bears a distinctive membranous ring that is tinged brown to violet on the underside.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Suillus_luteus"
    ),
    Card(
      scientificName: "Clavariadelphus truncatus",
      commonName: "Club Coral",
      imageName: "club-coral",
      edible: true,
      description: "Clavariadelphus truncatus is a species of mushroom. The common name of the species is truncated club or club coral. It is a member of the basidiomycete fungi family Gomphaceae. The species has a yellow-orange fruiting body in the shape of a club with a flat cap. The flesh is white, thin, and hollow at the top. The vertical side of the fruiting body normally has folds and wrinkles, but can be smooth. The spores are smooth and their spore print is pale yellow to ochre. The mushroom has a pleasant odor and a sweet taste. The mushroom's habitat is in coniferous forests from summer to autumn. The mushroom is edible and has a sweet taste. Old mushrooms may be spongy and soft inside. The species is high in nutrition and can be used for cooking. The mushroom contains clavaric acid, which has been shown to reduce the rate of tumor development when given to mice.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Clavariadelphus_truncatus"
    ),
    Card(
      scientificName: "Ganoderma lingzhi",
      commonName: "Reishi",
      imageName: "reishi",
      edible: true,
      description: "Lingzhi, Ganoderma lingzhi, also known as reishi, is a polypore fungus bracket fungus belonging to the genus Ganoderma. Its reddish brown varnished kidney-shaped cap with bands and peripherally inserted stem gives it a distinct fan-like appearance. When fresh, the lingzhi is soft, cork-like, and flat. It lacks gills on its underside, and instead releases its spores via fine pores (80–120 μm) in yellow colors. The lingzhi mushroom is used in traditional Chinese medicine. There is insufficient evidence to indicate that consuming lingzhi mushrooms or their extracts has any effect on human health or diseases. In nature, it grows at the base and stumps of deciduous trees, especially that of the maple. Only two or three out of 10,000 such aged trees will have lingzhi growth, and therefore its wild form is rare. Lingzhi may be cultivated on hardwood logs, sawdust, or woodchips.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Lingzhi_(mushroom)"
    ),
    Card(
      scientificName: "Termitomyces reticulatus",
      commonName: "Termitomyces",
      imageName: "termitomyces",
      edible: true,
      description: "Termitomyces is a genus of basidiomycete fungi belonging to the family Lyophyllaceae. There are 30-40 species in the genus, all of which are completely dependent on termites to survive. They are the food source for a subfamily of termites, the Macrotermitinae, who enjoy an obligate symbiosis with the genus similar to that between Atta ants and Attamyces mushrooms. Despite this relationship, spore transfer is still accomplished mainly by shedding from mushrooms, which protrude from the termite mounds. These mushrooms are edible for most people, and the larger species are a popular wild food where they occur. They include the largest edible mushroom in the world, Termitomyces titanicus of West Africa and Zambia, whose cap reaches 1 metre (3.28ft) in diameter. These fungi grow on 'combs' which are formed from the termites' excreta, dominated by tough woody fragments. Termitomyces was described by Roger Heim in 1942.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Termitomyces"
    ),
    Card(
      scientificName: "Clitocybe nuda",
      commonName: "Wood blewit",
      imageName: "wood-blewit",
      edible: true,
      description: "Clitocybe nuda, commonly known as the wood blewit and alternately described as Lepista nuda, is an edible mushroom native to Europe and North America. Described by Pierre Bulliard in 1790, it was also known as Tricholoma nudum for many years. It is found in both coniferous and deciduous woodlands. Wood blewits are generally regarded as a good edible, but they are known to cause allergic reactions in sensitive individuals. This is particularly likely if the mushroom is consumed raw, though allergic reactions are known even from cooked blewits. Nevertheless, it has been cultivated in Britain, the Netherlands and France. The French mycologist Pierre Bulliard described the wood blewit in his work Herbier de la France in 1790 as Agaricus nudus, reporting that it was common in the woods all year. He wrote of two varieties: one whose gills and cap are initially light violet and mature to burgundy, while the other has vine-coloured gills that intensify in colour with age.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Clitocybe_nuda"
    ),
    Card(
      scientificName: "Stropharia rugosoannulata",
      commonName: "Wine cap",
      imageName: "wine-cap",
      edible: true,
      description: "Stropharia rugosoannulata, commonly known as the wine cap stropharia, garden giant, burgundy mushroom or king stropharia (Japanese: saketsubatake), is an agaric of the family Strophariaceae found in Europe and North America, and introduced to Australia and New Zealand. The mushroom was reported in April 2018 in Colombia, in the city of Bogota. Unlike many other members of the genus Stropharia, it is regarded as a choice edible and is commercially cultivated. The king stropharia can grow to 20 cm high with a reddish-brown convex to flattening cap up to 30 cm across, the size leading to another colloquial name godzilla mushroom. The gills are initially pale, then grey, and finally dark purple-brown in colour. The firm flesh is white, as is the tall stem which bears a wrinkled ring. This is the origin of the specific epithet which means wrinkled-ringed. It is found on wood chips across North America in summer and autumn. Described as very tasty by some authors, king stropharia is easily cultivated on a medium similar to that on which it grows naturally. Antonio Carluccio recommends sautéeing them in butter or grilling them.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Stropharia_rugosoannulata"
    ),
    Card(
      scientificName: "Truffle",
      commonName: "Truffle",
      imageName: "truffle",
      edible: true,
      description: "A truffle is the fruiting body of a subterranean ascomycete fungus, predominantly one of the many species of the genus Tuber. In addition to Tuber, many other genera of fungi are classified as truffles including Geopora, Peziza, Choiromyces, Leucangium, and over a hundred others. These genera belong to the class Pezizomycetes and the Pezizales order. Several truffle-like basidiomycetes are excluded from Pezizales, including Rhizopogon and Glomus. Truffles are ectomycorrhizal fungi, so are usually found in close association with tree roots. Spore dispersal is accomplished through fungivores, animals that eat fungi. These fungi have significant ecological roles in nutrient cycling and drought tolerance. Some truffle species are highly prized as food. French gastronome Jean Anthelme Brillat-Savarin called truffles the diamond of the kitchen. Edible truffles are used in Italian, French and numerous other national haute cuisines. Truffles are cultivated and harvested from natural environments.",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Truffle"
    ),
    Card(
      scientificName: "Gomphus clavatus",
      commonName: "Pig's Ears",
      imageName: "pigs-ears",
      edible: false,
      description: "Gomphus clavatus, commonly known as pig's ears or the violet chanterelle, is an edible species of fungus in the genus Gomphus native to Eurasia and North America. The fruit body is vase- or fan-shaped with wavy edges to its rim, and grows up to 15–16 cm (6–6+1⁄4 in) wide and 17 cm (6+3⁄4 in) tall. The upper surface or cap is orangish-brown to lilac, while the lower spore-bearing surface, the hymenium, is covered in wrinkles and ridges rather than gills or pores, and is a distinctive purple color ",
      wikipediaUrlString: "https://en.wikipedia.org/wiki/Gomphus_clavatus"
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
  
  func getRandomCard(oldCard: Card?) -> Card {
    var newCard = Array(cards).randomElement()!
    
    if let oldCard = oldCard {
      while newCard == oldCard {
        newCard = Array(cards).randomElement()!
      }
    }
    return newCard
  }
  
  func wrongCards(for rightCard: Card) -> [Card] {
    var otherCards = cards
    otherCards.remove(rightCard)
    
    let randomizedOtherCardsArray = Array(otherCards)
      .shuffled()
    
    return Array(randomizedOtherCardsArray[0...2])
  }
}
