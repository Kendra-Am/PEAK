import SwiftUI
//just hips straight up 
struct FullBodyView: View {
    var body: some View {
        VStack {
            ScrollView{
                //Top Image
                
                Image("Groceries")
                    .resizable()
                    .frame(width: 330, height: 292)
                    .cornerRadius(20)
                    .padding(.top, 20)
                
                //What
                //https://www.healthline.com/health/full-body-stretch#leg-swings 
                //https://www.outsideonline.com/health/training-performance/full-body-stretch/
                Text("Full Body")
                    .frame(width: 400, height: 17, alignment: .center)
                    .padding(.bottom, 40)
                    .font(Font.custom("Titan One", size: 31))
                
                //hip
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                    //.fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Leg swings\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stand with your feet shoulder-width apart. Balancing on your left leg, swing your right leg back and forth in front of your body, only going as far as is comfortable.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("leg swings")
                        .resizable()
                        .frame(width: 280, height: 170)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Chest stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stand in an open doorway and place your forearms vertically on the doorframe. Lean forward until you feel a stretch through your chest. Hold the stretch for 30 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("chest stretch")
                        .resizable()
                        .frame(width: 230, height: 170)
                        .padding(.bottom, 130)
                        .padding(.trailing, -100)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Downwards Dog\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Start in a high plank. Pressing through your fingers and palms, shift your weight back to bring your butt to the ceiling, so your body’s in an inverted V shape.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("downwards dog")
                        .resizable()
                        .frame(width: 230, height: 170)
                        .padding(.bottom, 130)
                        .padding(.trailing, -30)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Hip abduction\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Place the hands on your hips for balance. Raise the left leg out to the side as high as possible. Hold for 5 seconds. Return to the starting position and repeat 10 times.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("hip abduction")
                        .resizable()
                        .frame(width: 170, height: 170)
                        .padding(.bottom, 130)
                }
            }
        }
    }
}

