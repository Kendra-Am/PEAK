import SwiftUI

struct ProfileView: View {
    //profile:
    @State private var sport = ""
    @State private var age = ""
    @State private var weight = ""
    @State private var activity = ""
    //end of profile
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1))
            //front
            RoundedRectangle(cornerRadius: 55)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 393, height: 786)
                .padding(.bottom, -300)
            //photo
            Circle()
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 146, height: 146)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.11999999731779099)), radius:6, x:0, y:5)
                .padding(.bottom, 480)
            //pofile
            Circle()
                .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                .frame(width: 126, height: 126)
                .padding(.bottom, 480)
            Image("WavingFish")
                .resizable().frame(width: 126, height: 126)
                .padding(.bottom, 480).frame(width:100, height: 100)
            //Sir Bubbles
            Text("Sir Bubbles")
                .font(Font.custom("Titan One", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                .multilineTextAlignment(.center)
                .padding(.bottom, 270)
            //Email
            ZStack{
                RoundedRectangle(cornerRadius: 90)
                    .fill(Color(#colorLiteral(red: 0.7450980544090271, green: 0.8588235378265381, blue: 0.9333333373069763, alpha: 1)))
                    .frame(width: 177, height: 25)
                Text("thesirbubbles@gmailcom")
                    .font(.custom("Open Sans", size: 10))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
            }
            .padding(.bottom, 190)
            
            VStack{
                //General
                Text("General")
                    .font(.custom("Open Sans Regular", size: 10))
                    .frame(width: 299, height:20, alignment: .bottomLeading)
                
                //general
                ZStack{
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 299, height: 43)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                    HStack{
                        Image(systemName: "gear")
                            .imageScale(.small)
                            .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                        //.padding(.leading, -30)
                        //.padding(.trailing, -20)
                        Text("Version")
                            .font(.custom("Open Sans Regular", size: 14))
                            .font(.subheadline)
                            .foregroundColor(.black)
                        Text("1.0.0")
                            .font(.custom("Open Sans Regular", size: 14))
                            .frame(width: 90, height: 40, alignment: .trailing)
                            .foregroundColor(.gray)
                            .padding(.leading, 100)
                    }
                }
                //Info
                VStack{
                    Text("Information")
                        .font(.custom("Open Sans Regular", size: 10))
                        .frame(width: 299, height:20, alignment: .bottomLeading)
                    ZStack{
                        TextField("Sport", text: $sport)
                            .foregroundStyle(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                            .padding()
                            .font(.custom("Open Sans", size: 14))
                            .frame(width: 299, height: 43)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(18)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        Image(systemName: "sportscourt.fill")
                            .padding(.leading, 250)
                            .foregroundColor(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                    }
                    ZStack{
                        TextField("Activity Level", text: $activity)
                            .foregroundStyle(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                            .padding()
                            .font(.custom("Open Sans", size: 14))
                            .frame(width: 299, height: 43)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(18)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        Image(systemName: "heart.circle.fill")
                            .padding(.leading, 250)
                            .foregroundColor(Color(#colorLiteral(red: 0.8941176533699036, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1)))
                    }
                    ZStack{
                        TextField("Age", text: $age)
                            .foregroundStyle(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                            .padding()
                            .font(.custom("Open Sans", size: 14))
                            .frame(width: 299, height: 43)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(18)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        Image(systemName: "person.fill")
                            .padding(.leading, 250)
                            .foregroundColor(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                        
                    }
                    ZStack{
                        TextField("Weight", text: $weight)
                            .foregroundStyle(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                            .padding()
                            .font(.custom("Open Sans", size: 14))
                            .frame(width: 299, height: 43)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(18)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        Image(systemName: "cross.fill")
                            .padding(.leading, 250)
                            .foregroundColor(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                    }
                }
                .padding(.top, 20)
                
                //Acount
                VStack{
                    Text("Account")
                        .font(.custom("Open Sans Regular", size: 10))
                        .frame(width: 299, height:20, alignment: .bottomLeading)
                    ZStack{
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 299, height: 43)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        HStack{
                            Image(systemName: "arrow.left.circle.fill")
                                .imageScale(.small)
                            //.font("Version")
                                .foregroundColor(Color(#colorLiteral(red: 0.9708333611488342, green: 0.3563980162143707, blue: 0.024270832538604736, alpha: 1)))
                            //.padding(.leading, -30)
                            //.padding(.trailing, -20)
                            Text("Sign Out")
                                .font(.custom("Open Sans Regular", size: 14))
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Text("1.0.0")
                                .font(.custom("Open Sans Regular", size: 14))
                                .frame(width: 90, height: 40, alignment: .trailing)
                                .foregroundColor(.white)
                                .padding(.leading, 100)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 299, height: 43)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.17000000178813934)), radius:4, x:0, y:2)
                        HStack{
                            Image(systemName: "arrow.left.circle.fill")
                                .imageScale(.small)
                                .foregroundColor(Color(#colorLiteral(red: 0.9708333611488342, green: 0.3563980162143707, blue: 0.024270832538604736, alpha: 1)))
                            Text("Delete Account")
                                .font(.custom("Open Sans Regular", size: 14))
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Text("1.0.0")
                                .font(.custom("Open Sans Regular", size: 14))
                                .frame(width: 90, height: 40, alignment: .trailing)
                                .foregroundColor(.white)
                                .padding(.leading, 60)
                        }
                    }
                }
                .padding(.top, 20)
            }
            .padding(.top, 290)
        }
    }
}

/*
 import Foundation
 struct User: Identifiable, Codable {
 let id: String
 let fullname: String
 let email: String
 }
 */
