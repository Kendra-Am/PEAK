import SwiftUI
public struct FoodGridView: View{
    public var body: some View {
        VStack {
            ScrollView{
                //Profile
                Image("Jerd Icon")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .mask(Circle())
                    .frame(width: 334, height: 54, alignment: .topTrailing)
                    .padding()
                    .padding(.bottom, 15)
                
                //Stretching & Injury Prevention
                Text(" Food & \n Nutrition \n Facts")
                    .font(Font.custom("Titan One", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                    .frame(width: 384, height: 114, alignment: .leading)
                //.padding(.bottom, 70)
                
                //tab bar
                HStack{
                    NavigationLink(destination: WeightsGridView()) {
                        Text("Weights")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                            .padding(.trailing, 32)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarBackButtonHidden(true)
                    NavigationLink(destination: stretchingGridView()) {
                        Text("Stretching")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarBackButtonHidden(true)
                    ZStack{
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                            .frame(width: 55, height: 20)
                            .opacity(0.5)
                            .padding(.trailing, -25)
                        Text("Nutrition ")
                            .font(.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                            .padding(.leading, 32)
                    }
                }
                .padding(.top, -1)
                //.padding(.bottom, 60)
                .padding(.trailing, 15)
                .navigationBarBackButtonHidden(true)
                
                //Nutriton Facts
                Text("Athletes who exercise strenuously for more than 60 to 90 minutes every day may need to increase the amount of energy they consume. \n \n Its best for a high-carb meal 3 to 4 hours before exercise. \n \n Rapid replacement of glycogen is important following exercise. Carbs and fluids should be consumed after exercise, particularly in the first one to 2 hours after exercise.")
                    .frame(width: 325, height: 325)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Open Sans", size: 13))
                //.padding(.bottom, 40)
                
                //pre
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Pre Workout\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Examples of appropriate pre-exercise meals and snacks include cereal and low-fat milk, toast/muffins/crumpets, fruit salad and yogurt, pasta with tomato-based sauce. ")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("pre workout")
                        .resizable()
                        .frame(width: 200, height: 180)
                        .cornerRadius(20)
                        .padding(.bottom, 130)
                }
                
                //During
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("During Workout\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("30 to 60 g of carbohydrate is recomended during workouts, and can be in the form of lollies, sports gels, sports drinks, low-fat muesli and sports bars or sandwiches with white bread. ")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("protein bar 2")
                        .resizable()
                        .frame(width: 200, height: 160)
                        .cornerRadius(20)
                        .padding(.bottom, 130)
                }
                
                //post
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                        .frame(width: 325, height: 325)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom, 20)
                    Text("Post Workout\n")
                        .frame(width: 325, height: 325)
                        .font(Font.custom("Titan One", size: 20))
                        .padding(.bottom, -100)
                    Text("Suitable choices to start refuelling include sports drinks, juices, cereal and low-fat milk, low-fat flavoured milk, sandwiches, pasta, muffins/crumpets, fruit and yoghurt.")
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 325, alignment: .bottom)
                        .font(Font.custom("Open Sans", size: 13))
                    Image("sandwich")
                        .resizable()
                        .frame(width: 200, height: 180)
                        .cornerRadius(20)
                        .padding(.bottom, 130)
                }
            }
        }
    }
    
}
