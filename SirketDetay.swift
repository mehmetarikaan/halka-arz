import SwiftUI

struct SirketDetay: View {
   // var sirket: Sirketler
    var arzlar: Arzlar
    var body: some View {
        ScrollView{
            VStack{
                HStack(alignment: .center, spacing: 20){
                    Image(systemName: "multiply.circle.fill")
                    .data(urll: URL(string: "http://appranax.com/api/resimler/\(arzlar.arzLogo)")!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .cornerRadius(6)
                        .padding(.trailing, 10)
                        .padding(.vertical, 1)
                    VStack(alignment:.leading, spacing: 3){
                        Text(arzlar.arzAd)
                            .fontWeight(.bold)
                            .font(.title2)
                        Text(arzlar.arzKod)
                            .font(.title3)
                            .lineLimit(2)
                            .minimumScaleFactor(0.9) // Metin arttıkça yazı tipini küçültüyor.
                        Text("Halka Arz Bilgileri")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }.padding()
                }.navigationTitle(arzlar.arzKod)
                
                Text("Güncel Bilgiler")
                    .bold()
                    .padding(.top, 20)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal, 50)
                VStack{
                    HStack{
                        Text("Halka Arz Tarihi")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text(arzlar.arzTarih)
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Pay / Lot Miktarı")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(String(arzlar.arzAdet))")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Lot Fiyatı")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(String(arzlar.arzFiyat)) ₺")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Aracı Kurum")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(String(arzlar.arzAracikurum))")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Dağıtım Yöntemi")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(String(arzlar.arzDagitim))")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Bist Kodu")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(String(arzlar.arzKod))")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    HStack{
                        Text("Halka Açıklık Oranı")
                            .fontWeight(.light)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("%\(String(arzlar.arzAciklikorani))")
                            .bold()
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 30)
                        .padding(.vertical, 7)
                    VStack{
                        Text("Şirket Hakkında")
                            .bold()
                            .padding(.top, 30)
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                            .padding(.horizontal, 50)
                        Text(arzlar.arzAciklama)
                            .padding(.horizontal, 30)
                    }
                }
            }
        } .background(Color("mor"))
            .foregroundColor(Color.white)
            .preferredColorScheme(.dark)
    }
}

struct SirketDetay_Previews: PreviewProvider {
    static var previews: some View {
        SirketDetay(arzlar: Arzlar.init(arzID: "ss", arzAd: "ss", arzLogo: "aztek.png", arzKod: "ss", arzTarih: "ss", arzFiyat: "ss", arzAdet: "ss", arzBorsatarihi: "ss", arzDagitim: "ss", arzAracikurum: "ss", arzPazar: "ss", arzAciklikorani: "ss", arzAciklama: "ss"))
    }
}
