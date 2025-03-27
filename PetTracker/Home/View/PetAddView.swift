import SwiftUI

struct PetAddView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    @State private var name = ""
    @State private var type = ""
    @State private var breed = ""
    @State private var birthday = ""
    @State private var weight = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.brown.ignoresSafeArea()
            
            VStack {
                ZStack {
                    Text("Добавляем питомца")
                        .font(.custom("AmaticSC-Bold", size: width * 0.1))
                    
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: width * 0.06)
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                    }
                }
                
                CustomTextField(title: "Кличка", text: $name)
                    .padding(.top)
                CustomTextField(title: "Вид", text: $type)
                CustomTextField(title: "порода", text: $breed)
                CustomTextField(title: "дата рождения", text: $birthday)
                CustomTextField(title: "вес", text: $weight)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("verifyBtn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width * 0.55)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
    }
}

struct CustomTextField: View {
    let title: String
    @Binding var text: String
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("\(title)")
                .font(.custom("AmaticSC-Bold", size: width * 0.08))
            
            VStack(spacing: 0){
                TextField("", text: $text)
                    .font(.custom("AmaticSC-Bold", size: width * 0.06))
                Color.black.frame(height: 1)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PetAddView()
}
