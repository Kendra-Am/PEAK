import SwiftUI
//have stretches in the order of hams, quads, calvs, ankel
struct LegsView: View {
    var body: some View {
        VStack {
            ScrollView{
                //Top Image
                
               
                //What
                //https://www.verywellfit.com/hamstring-stretches-2696359 
                //https://www.gloveworx.com/blog/quad-stretches-help-become-unstoppable/
                //https://www.self.com/gallery/essential-calf-stretches
                //https://www.healthline.com/health/fitness-exercise/ankle-stretches#ankle-circles
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
                    Text("Simple Stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Sit on the floor with both legs out straight. Extend your arms and reach forward by bending at the waist as far as possible while keeping your knees straight.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("simple stretch")
                        .resizable()
                        .frame(width: 220, height: 160)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Hurdler Stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Sit on the floor with one leg out straight. Bend the other knee and position the sole of that foot against your opposite inner thigh. Reach forward as far as possible.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("hurdler stretch")
                        .resizable()
                        .frame(width: 230, height: 160)
                        .padding(.bottom, 130)
                }
                
                //Quad
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text(" Simple Quad Stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stand on one leg. Grab your other foot, using your right hand, and pull it towards your butt. Be sure to push your chest up and hips forward. Hold for 20-30 seconds.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("simple quad stretch")
                        .resizable()
                        .frame(width: 80, height: 180)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Kneeling Stretch\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Start in a high lunge position and drop one knee to the floor. Reach back with your right arm, and grab your ankle, or toes, depending on what’s easiest.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("kneeling stretch")
                        .resizable()
                        .frame(width: 190, height: 180)
                        .padding(.bottom, 130)
                        .padding(.trailing, -30)
                }
                
                //Clavs
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Downward Dog\n")
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
                        .frame(width: 210, height: 180)
                        .padding(.bottom, 130)
                        .padding(.trailing, -30)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Foot Pedal\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Start in a downwards dog position. Rise up on the toes of one foot while you press the heel of the opposite foot into the floor. Reverse the motion.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("foot pedal")
                        .resizable()
                        .frame(width: 190, height: 180)
                        .padding(.bottom, 130)
                        .padding(.trailing, -30)
                }
                
                //Ankels
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Ankle circles\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Start by turning your ankle around slowly in circles to the left, then the right. Or try drawing the alphabet in the air with your foot. Lead with your big toe.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("ankle circles")
                        .resizable()
                        .frame(width: 190, height: 180)
                        .padding(.bottom, 130)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Chair Pose\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Stand tall, raise both of your arms overhead. Bend both of your knees slightly, your torso should make a right angle with the tops of your thighs.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("chair")
                        .resizable()
                        .frame(width: 90, height: 180)
                        .padding(.bottom, 130)
                }
            }
        }
    }
}
