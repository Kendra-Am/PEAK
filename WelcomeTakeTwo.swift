import SwiftUI

struct welcomeTakeTwoView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LoginView()
        } else {
            ZStack{
                //Color(#colorLiteral(red: 0.5934523940086365, green: 0.7777777910232544, blue: 0.8942194581031799, alpha: 1.0))
                ZStack{
                    Image("BlueBlob1")
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.5)) {
                                self.size = 2.6
                                self.opacity = 1.0
                            }
                        }
                    VStack{
                        Image("WIS")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                            .frame(width: 239, height: 268)
                            .padding(.bottom, 22)
                        Text("Welcome")
                            .font(Font.custom("Titan One", size: 40))
                            .foregroundColor(.black.opacity(0.80))
                            .opacity(opacity)
                            //.curveEaseIn()
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}
