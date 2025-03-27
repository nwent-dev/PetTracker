import SwiftUI

struct HomeStartView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        NavigationView {
            ZStack {
                Color.brown.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    Spacer()
                    
                    HStack {
                        Image("cat0")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width * 0.4)
                        
                        Spacer()
                    }
                    Text("У ВАС НЕТ ПИТОМЦЕВ")
                        .font(.custom("AmaticSC-Bold", size: width * 0.165))
                    
                    Spacer()
                    
                    NavigationLink {
                        PetAddView()
                    } label: {
                        Image("addBtn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width * 0.55)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeStartView()
}
