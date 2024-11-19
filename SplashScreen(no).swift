import SwiftUI

struct splashScreenView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive {
                welcomeScreenView()
            }else{
                ZStack{
                    Image("BlueBlob1")
                    Image(systemName: "cat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}



/*
struct splashScreenViewTwo: PreviewProvider {
    static var previews: some View {
        Image(systemName: "bird")
            .resizable()
            .aspectRatio(contentMode: .fill)
        //.frame(width: 239, height: 268)
            .clipped()
            .frame(width: 239, height: 268)
    }
}
*/
