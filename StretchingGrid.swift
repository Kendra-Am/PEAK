import SwiftUI

struct stretchingGridView: View {
    let items = Array(1...10).map({"image \($0)" })
    let layout = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
        //GridItem(.adaptive(minimum: 1000))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView {
                //Profile
                Image("Jerd Icon")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .mask(Circle())
                    .frame(width: 334, height: 54, alignment: .topTrailing)
                    .padding()
                    .padding(.bottom, 15)
                
                //Stretching & Injury Prevention
                Text("Stretching & \n Injury \n Prevention")
                    .font(Font.custom("Titan One", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                    .frame(width: 384, height: 114, alignment: .leading)
                //.padding(.bottom, 70)
                
                //tab bar
                HStack{
                    NavigationLink(destination: WeightsGridView()){
                        Text("Weights")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                            .padding(.trailing, 32)
                    }
                    .buttonStyle(PlainButtonStyle()) 
                    .navigationBarBackButtonHidden(true)
                    ZStack{
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                            .frame(width: 55, height: 20)
                            .opacity(0.5)
                            .padding(.trailing, 2)
                        Text("Stretching")
                            .font(.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                    }
                    NavigationLink(destination: FoodGridView()) {
                        Text("Nutrition")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                        .padding(.leading, 32)                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarBackButtonHidden(true)
                }
                .padding(.top, -1)
                .padding(.bottom, 60)
                .padding(.trailing, 15)
                .navigationBarBackButtonHidden(true)
                
                LazyVGrid(columns: layout, content: {
                    //Arms
                    NavigationLink(destination: ArmsView()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                                .frame(width: 167, height: 221)
                                .padding(.leading, -100)
                                .padding(.bottom, 5)
                            Text("Arms\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.leading, -120)
                                .padding(.top, 115)
                                .padding(.bottom, -20)
                            Text("6 stretches")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.leading, -120)
                                .padding(.top, 155)
                            Image("shoulder stretch")
                                .resizable()
                                .frame(width: 120, height: 130)
                                .cornerRadius(20)
                                .padding(.leading, -135)
                                .padding(.bottom, 5)
                                .padding(.bottom, 35)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //Legs
                    NavigationLink(destination: LegsView()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                                .opacity(1.0)
                                .frame(width: 167, height: 173)
                                .padding(.trailing, -60)
                                .padding(.top, -50)
                            Text("Legs\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.trailing, 20)
                                .padding(.top, 52)
                            //.padding(.bottom, -20)
                            Text("8 stretches")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.trailing, -2)
                                .padding(.top, 70)
                            Image("simple stretch")
                                .resizable()
                                .frame(width: 120, height: 90)
                                .cornerRadius(20)
                                .padding(.leading, 50)
                                .padding(.bottom, 5)
                                .padding(.bottom, 75)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //hips
                    NavigationLink(destination: HipsView()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                                .frame(width: 167, height: 221)
                                .padding(.leading, -100)
                            Text("Hips\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.leading, -120)
                                .padding(.top, 115)
                                .padding(.bottom, -20)
                            Text("5 stretches")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.leading, -120)
                                .padding(.top, 155)
                            Image("external hip rotator")
                                .resizable()
                                .frame(width: 130, height: 120)
                                .cornerRadius(20)
                                .padding(.leading, -100)
                                .padding(.bottom, 5)
                                .padding(.bottom, 45)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //back
                    NavigationLink(destination: BackView()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                                .frame(width: 167, height: 221)
                                .padding(.trailing, -60)
                                .padding(.top, -90)
                            Text("Back\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.trailing, 20)
                                .padding(.top, 52)
                            //.padding(.bottom, -20)
                            Text("5 stretches")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.trailing, -2)
                                .padding(.top, 70)
                            Image("knee to chest")
                                .resizable()
                                .frame(width: 140, height: 90)
                                .cornerRadius(20)
                                .padding(.leading, 70)
                                .padding(.bottom, 5)
                                .padding(.bottom, 75)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //White Shadowww
                    NavigationLink(destination: LegsView()) {
                        //Rectangle 5
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1.0000001192092896, green: 1.0000001192092896, blue: 1.0000001192092896, alpha: 1.0)))
                            .frame(width: 167, height: 173)
                            .padding(.leading, -100)
                    }.buttonStyle(PlainButtonStyle())
                    
                    //Full Body
                    NavigationLink(destination: FullBodyView()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                                .frame(width: 167, height: 173)
                                .padding(.trailing, -60)
                                .padding(.top, -80)
                            Text("Full Body\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.trailing, -30)
                                .padding(.top, 30)
                            //.padding(.bottom, -20)
                            Text("3 stretches")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.trailing, -2)
                                .padding(.top, 45)
                            Image("downwards dog")
                                .resizable()
                                .frame(width: 120, height: 90)
                                .cornerRadius(20)
                                .padding(.leading, 70)
                                .padding(.bottom, 5)
                                .padding(.bottom, 95)
                        }
                    }.buttonStyle(PlainButtonStyle())
                })
            }
        }
        .navigationBarBackButtonHidden(true)          
    }
}
