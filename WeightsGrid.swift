import SwiftUI
public struct WeightsGridView: View{
    let items = Array(1...10).map({"image \($0)" })
    let layout = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    public var body: some View {
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
                /*Circle()
                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                    .frame(width: 334, height: 54, alignment: .topTrailing)
                    .padding()
                    .padding(.bottom, 15)*/
                
                //Stretching & Injury Prevention
                Text("Weights & \n Strength \n Training")
                    .font(Font.custom("Titan One", size: 32))
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                    .frame(width: 384, height: 114, alignment: .leading)
                //.padding(.bottom, 70)
                
                //tab bar
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                            .frame(width: 55, height: 20)
                            .opacity(0.5)
                            .padding(.trailing, 32)
                        Text("Weights")
                            .font(.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                            .padding(.trailing, 32)
                    }
                    NavigationLink(destination: stretchingGridView()) {
                        Text("Stretching")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                            .padding(.trailing, 2)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarBackButtonHidden(true)
                    NavigationLink(destination: FoodGridView()) {
                        Text("Nutrition")
                            .font(Font.custom("Open Sans Regular", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                            .padding(.leading, 32)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarBackButtonHidden(true)
                }
                .padding(.top, -1)
                .padding(.bottom, 60)
                .padding(.trailing, 30)
                //.navigationBarBackButtonHidden(true)
                
                LazyVGrid(columns: layout, content: {
                    //Arms
                    NavigationLink(destination: Arms2View()) {
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
                            Text("6 exercises")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.leading, -120)
                                .padding(.top, 155)
                            Image("jacked arm")
                                .resizable()
                                .frame(width: 100, height: 90)
                                .cornerRadius(20)
                                .padding(.leading, -100)
                                .padding(.bottom, 5)
                                .padding(.bottom, 35)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //Legs
                    NavigationLink(destination: Legs2View()) {
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
                            Text("4 exercises")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.trailing, -2)
                                .padding(.top, 70)
                            Image("Leg")
                                .resizable()
                                .frame(width: 120, height: 110)
                                .cornerRadius(20)
                                .padding(.leading, 50)
                                .padding(.bottom, 5)
                                .padding(.bottom,75)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //hips
                    NavigationLink(destination: Core2View()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.3137255012989044, blue: 0, alpha: 1)))
                                .frame(width: 167, height: 173)
                                .padding(.leading, -100)
                            Text("Core\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.leading, -120)
                                .padding(.top, 80)
                                .padding(.bottom, -20)
                            Text("4 exercises")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.leading, -120)
                                .padding(.top, 115)
                            Image("Abs")
                                .resizable()
                                .frame(width: 110, height: 120)
                                .cornerRadius(20)
                                .padding(.leading, -100)
                                .padding(.bottom, 5)
                                .padding(.bottom, 5)
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //back
                    NavigationLink(destination: Back2View()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                                .frame(width: 167, height: 221)
                                .padding(.trailing, -60)
                                .padding(.top, -40)
                            Text("Back\n")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1))) 
                                .padding(.trailing, 20)
                                .padding(.top, 102)
                            //.padding(.bottom, -20)
                            Text("3 exercises")
                                .font(Font.custom("Open Sans Regular", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 0.46)))
                                .padding(.trailing, -2)
                                .padding(.top, 120)
                            Image("Back")
                                .resizable()
                                .frame(width: 130, height: 120)
                                .cornerRadius(20)
                                .padding(.leading, 60)
                                .padding(.bottom, 5)
                                .padding(.bottom,75)
                        }
                    }.buttonStyle(PlainButtonStyle())
                })
            }
        }
        .navigationBarBackButtonHidden(true) 
    }
    
}

