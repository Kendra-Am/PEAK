import SwiftUI
//have stretches in the order of hams, quads, calvs, ankel
struct Legs2View: View {
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
                //https://www.strengthlog.com/leg-day-workout/
                Text("Legs")
                    .frame(width: 400, height: 17, alignment: .center)
                    .padding(.bottom, 40)
                    .font(Font.custom("Titan One", size: 31))
                
                //Ham
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                    //.fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Romanian Deadlift\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("brace your core slightly, and lean forward by hinging in your hips. Keep your knees almost completely extended, without rounding your back.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("Romanian deadlift")
                        .resizable()
                        .frame(width: 190, height: 180)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Bulgarian Split Squat\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stand with your back turned against a bench. Place one foot on the bench behind you. Squat down with control until right before the knee of the back leg touches the floor.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("split squat")
                        .resizable()
                        .frame(width: 220, height: 180)
                        .padding(.bottom, 130)
                }
                
                //Quad
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Calf Raise\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Place your toes and the ball of your feet on the foot support. Lower yourself down by bending your ankles in a controlled movement. Push yourself up by extending your ankles.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("calf raise")
                        .resizable()
                        .frame(width: 220, height: 170)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Squat\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Place the bar on your upper back. Squat as deep as possible with good technique. With control, stop and reverse the movement, extending your hips and legs again.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("squat")
                        .resizable()
                        .frame(width: 180, height: 170)
                        .padding(.bottom, 130)
                }
                
            }
        }
    }
}
