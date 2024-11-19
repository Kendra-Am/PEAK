import SwiftUI

struct welcomeScreenView: View {
    var body: some View {
        ZStack{
            //Color(#colorLiteral(red: 0.5934523940086365, green: 0.7777777910232544, blue: 0.8942194581031799, alpha: 1.0))
            ZStack{
                Image("BlueBlob1")
                    //.opacity(1.0)
                    .scaleEffect(1.8)
                    .onAppear {
                        withAnimation(.easeIn(duration: 4.2)) {
                            //self.size = 0.9
                            //self.opacity = 1.0
                        }
                    }
                VStack{
                    Image(systemName: "cat")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 239, height: 268)
                        .padding(.bottom, 22)
                    Text("Welcome")
                        .font(Font.custom("Titan One", size: 40))
                        .foregroundColor(.black.opacity(0.80))
                        //.transition(.opacity)
                        //.transition(.move(edge: .bottom))
                }
                .scaleEffect(1.5)
                .opacity(1.0)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        //self.size = 0.9
                        //self.opacity = 1.0
                    }
                }
            }
        }
    }
    
    struct splashScreenView2: PreviewProvider {
        static var previews: some View {
            welcomeScreenView()
        }
    }
}

