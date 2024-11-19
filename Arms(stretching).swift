import SwiftUI
//have stretches in the order of Shoulder, tricep, wrists
struct ArmsView: View {
    var body: some View {
        VStack {
            ScrollView{
                //Top Image
                
                
                //What
                //https://www.medicalnewstoday.com/articles/324647#shoulder-rolls 
                //https://www.healthline.com/health/exercise-fitness/tricep-stretches
                //https://www.medicalnewstoday.com/articles/324489#Wrist-and-hand-stretches
                Text("Arms")
                    .frame(width: 400, height: 17, alignment: .center)
                    .padding(.bottom, 40)
                    .font(Font.custom("Titan One", size: 31))
                
                //Shoulder
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                    //.fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Shoulder Stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("The cross-body shoulder stretch helps extend the back of the shoulder. Bring the right arm across the body and Hook the left forearm under the right arm. Hold for 20 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("shoulder stretch")
                        .resizable()
                        .frame(width: 160, height: 180)
                        .padding(.bottom, 130)
                        .padding(.trailing, 60)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Cross Arm Swings\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Arm swings help warm up the shoulder joint and increase movement. Stand with the feet hip-width apart. Cross the left arm under the right, keeping both arms straight.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("cross arm swings")
                        .resizable()
                        .frame(width: 260, height: 170)
                        .padding(.bottom, 130)
                }
                
                //Tricep
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Overhead Triceps\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("You can do this while standing or sitting. Extend your arm then bend at the elbow to bring the palm to your back. Use your left hand to gently push your elbow in toward the center and down.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("overhead triceps")
                        .resizable()
                        .frame(width: 160, height: 170)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Dynamic Triceps\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Extend your arms straight out to the sides. Rotate your arms in backward circles. Rotate your arms in forward circles. Do the same movement backward, up, and down.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("dynamic triceps")
                        .resizable()
                        .frame(width: 260, height: 170)
                        .padding(.bottom, 130)
                }
                
                //Wrists
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text(" Wrist Rotations\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stretch your arm out in front of you. point the fingers down until you feel a stretch. Use the other hand to gently pull the raised hand toward you. Hold this position for 3–5 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("wrist rotations")
                        .resizable()
                        .frame(width: 80, height: 170)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Prayer position\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Sit with your palms together and your elbows on the table in a prayer position. Lower the sides of the hands toward the table until you feel a stretch. Hold this position for 5–7 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("prayer position ")
                        .resizable()
                        .frame(width: 80, height: 170)
                        .padding(.bottom, 130)
                }
            }
        }
    }
}
