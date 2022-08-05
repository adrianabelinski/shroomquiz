import SwiftUI

struct AboutView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {
        Text("""
        ShroomQuiz is a mushroom guessing game for mycelium-loving maniacs of all kinds. Study your favorites mushrooms, and learn more about their characteristics, edibility, and where they grow.
        
        ShroomQuiz is an [open source](https://github.com/adrianabelinski/shroomquiz) SwiftUI app developed by [Adriana Belinski](https://github.com/adrianabelinski/)!
        """)
        .bodyStyle()
        
        Text("Disclaimer")
          .headerStyle()
        
        Text("Use this information at your own risk. The information here is used to teach and entertain, but is by no means reviewed by fungi experts. Please don't go picking and chewing on every mushroom you find, because that'd be bad! Consult the pros before you begin any actual foraging.")
          .bodyStyle()
        
        Text("Attributions")
          .headerStyle()
        
        Text("""
        [Giant puffball image](https://commons.wikimedia.org/wiki/File:Calvatia_gigantea.jpg) © Hans Hillewaert
        [Omphalotus illudens image](https://commons.wikimedia.org/wiki/File:2007-08-05_Omphalotus_illudens_(Schwein.)_Bresinsky_%26_Besl_1018098506.jpg) © Jason Hollinger
        [Entoloma abortivum image](https://commons.wikimedia.org/wiki/File:Armillaria_gallica_57535.jpg) © Dan Molter
        [Ganoderma applanatum image](https://commons.wikimedia.org/wiki/File:Ganoderma_applanatum_2010_G1.jpg) © George Chernilevsky
        [Fistulina hepatica image](https://commons.wikimedia.org/wiki/File:Fistulina_hepatica.JPG) © Jiří Berkovec
        [Craterellus cornucopioides image](https://commons.wikimedia.org/wiki/File:Craterellus_cornucopioides_JPG1.jpg) © Jean-Pol GRANDMONT
        [Corn Smut image](https://commons.wikimedia.org/wiki/File:Ustilago_maydis_J1b.jpg) © Jamain
        [Peniophora albobadia image](https://commons.wikimedia.org/wiki/File:Peniophora_albobadia_196080.jpg) © Patrick Harvey
        [Chlorophyllum molybdites image](https://commons.wikimedia.org/wiki/File:Chlorophyllum_molybdites_Guadalajara.jpg) © Alan Rockefeller
        [Hydnum umbilicatum image](https://commons.wikimedia.org/wiki/File:Hydnum_umbilicatum_mycowalt.jpg) © Walt Sturgeon. Editied background.
        [Pleurotus eryngii image](https://commons.wikimedia.org/wiki/File:Seta_de_cardo_(Pleurotus_eryngii),_2012-10-03,_DD_01.JPG) © Diego Delso. Editied background.
        [Lactarius image](https://commons.wikimedia.org/wiki/File:Lactarius_quietus_2010_G1_crop.jpg) © George Chernilevsky
        [Matsutake image](https://commons.wikimedia.org/wiki/File:Matsutake.jpg) © Tomomarusan
        [Gomphus clavatus image](https://commons.wikimedia.org/wiki/File:Gomphus_clavatus_II_Totes_Gebirge.jpg) © Vavrin
        [Lingzhi image](https://commons.wikimedia.org/wiki/File:Ganoderma_lingzhi_Wu,_Cao_%26_Dai_574883.jpg) © Leoboudv
        [Russula image](https://commons.wikimedia.org/wiki/File:Russulamexicana.jpg) © Alan Rockefeller
        [Shiitake Image](https://commons.wikimedia.org/wiki/File:Shiitakegrowing.jpg) © frankenstoen from Portland, Oregon
        [Suillus luteus Image](https://en.wikipedia.org/wiki/File:Suillus_luteus_475376.jpg) © walt sturgeon
        [Clavariadelphus truncatus Image](https://commons.wikimedia.org/wiki/File:Clavariadelphus_truncatus_69586.jpg) © amadej trnkoczy
        [Termitomyces reticulatus Image](https://commons.wikimedia.org/wiki/File:Termitomyces_reticulatus_37340.jpg) © Candice at Mushroom Observer
        [Clitocybe nuda Image](https://commons.wikimedia.org/wiki/File:Clitocybe_nuda_(Fr.)_H.E._Bigelow_%26_A.H._Sm_267650.jpg) © Jimmie Veitch
        [Stropharia rugosoannulata Image](https://commons.wikimedia.org/wiki/File:2011-05-19_Stropharia_rugosoannulata_Farl._ex_Murrill_183478.jpg) © Ann F. Berger
        [Truffle Image](https://commons.wikimedia.org/wiki/File:Truffe_noire_du_P%C3%A9rigord.jpg) ©  moi-même
        """
        )
        .bodyStyle()
        
      }
      .padding()
    }
    .navigationTitle("About")
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView()
  }
}
