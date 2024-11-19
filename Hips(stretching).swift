import SwiftUI
//just hips straight up 
struct HipsView: View {
    var body: some View {
        VStack {
            ScrollView{
                //Top Image
                
              
                //What
                //https://www.medicalnewstoday.com/articles/325377#10-hip-stretches 
                Text("Hips")
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
                    Text("Knee lift\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Lie on the back on the floor or a mat with both. Move the left knee up to the chest. Use both hands to pull the knee gently closer to the chest. Hold this stretch for 10 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("knee lift")
                        .resizable()
                        .frame(width: 240, height: 160)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text(" External hip rotator\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Sit with your legs extended. Bend one leg and cross it over the other. Use the right arm to push the left knee toward the right shoulder. Hold this pose for up to 30 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("external hip rotator")
                        .resizable()
                        .frame(width: 200, height: 150)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Double hip rotation\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Lie flat on the back on the floor and bend the knees. Keeping the knees together, lower them to the floor on the left side. Make sure that both shoulders stay firmly against the floor or mat.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("double hip rotator")
                        .resizable()
                        .frame(width: 220, height: 160)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
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
                        .frame(width: 200, height: 180)
                        .padding(.bottom, 130)
                }
                
                //Clavs
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Hip and back stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Lie flat on the back on the floor. Pull the knees into the chest. Bring the knees slightly closer to the shoulders. Do not go farther than is comfortable.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("hip and back stretch")
                        .resizable()
                        .frame(width: 220, height: 160)
                        .padding(.bottom, 130)
                }
            }
        }
    }
}

