import SwiftUI

public struct AccountView: View {
    
    //calendar
    @State private var hw1 = ""
    @State private var hw2 = ""
    @State private var hw3 = ""
    @State private var hw4 = ""
    @State private var practice1 = ""
    @State private var practice2 = ""
    @State private var practice3 = ""
    @State private var time1 = ""
    @State private var time2 = ""
    @State private var time3 = ""
    @State private var todo1 = ""
    @State private var todo2 = ""
    @State private var todo3 = ""
    
    @State private var thw1 = false
    @State private var thw2 = false
    @State private var thw3 = false
    @State private var thw4 = false
    @State private var tpractice1 = false
    @State private var tpractice2 = false
    @State private var tpractice3 = false
    @State private var ttodo1 = false
    @State private var ttodo2 = false
    @State private var isSubscribed = false
    @State private var shapeSlide = false
    
    @State var selectedTab = 0
    //"AI" 1 and 3.... ?
    //calendar 2
    //nutrition 0
    //water tracker 4
    
    //water tracker:
    var totalW = 100
    var totalE = 2
    @State var w = 25
    @State var e = 1
    @State var valueW = 0.5
    @State var valueE = 0.5
    
    func addw(){
        self.w += 1
    }
    
    func adde(){
        self.e += 1
    }
    //end of water tracker
    //health resources:
    let items = Array(1...10).map({"image \($0)" })
    let layout = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    //end of health resources
    //profile:
    @State private var sport = ""
    @State private var age = ""
    @State private var weight = ""
    @State private var activity = ""
    //end of profile
    
    //AI
    @State private var isclicked = false
    @State private var Imoves1 = false
    @State private var Imoves2 = false 
    @State private var Imoves3 = false  
    //end of ai
    
    
    public var body: some View {
        TabView(selection: $selectedTab){
            ZStack{
                VStack{
                    Spacer()
                        .padding(.top, 300)
                    NavigationLink{
                        ProfileView()
                            .navigationBarBackButtonHidden(true)
                    }label:{
                        Image("Jerd Icon")
                            .resizable()
                            .frame(width: 56, height: 56)
                            .mask(Circle())
                    }
                    .frame(width: 260, height: 95, alignment: .topTrailing)
                    
                    
                    Text("What can I help you with today?")
                        .font(Font.custom("Titan One", size: 18))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        .padding(.bottom, 15)
                        //.padding(.top, 30)
                    
                    VStack{
                        Button{
                            withAnimation(.spring()) {
                                Imoves1.toggle()
                            }
                        }label:{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                                    .frame(width:280, height: 100)
                                Text("Injury")
                                    .font(Font.custom("Titan One", size: 16))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }
                        }
                        .opacity(Imoves1 ? 0 : 1)
                        Button{
                            
                        }label:{ 
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                                    .frame(width:280, height: 100)
                                Text("Nutrition")
                                    .font(Font.custom("Titan One", size: 16))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }
                        }
                        .opacity(Imoves1 ? 0 : 1)
                        Button{
                            
                        }label:{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                                    .frame(width:280, height: 100)
                                Text("Training")
                                    .font(Font.custom("Titan One", size: 16))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }
                        }
                        .opacity(Imoves1 ? 0 : 1)
                    }
                    
                    
                    //green buttons
                    Button{
                        
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves1 ? -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                            Text("Upper Body")
                                .offset(x: 0, y: Imoves1 ? -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves2 ? 0 : 1)
                    Button{
                        
                    }label:{ 
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves1 ? -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                            Text("Middle Body")
                                .offset(x: 0, y: Imoves1 ? -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves2 ? 0 : 1)
                    Button{
                        withAnimation(.spring()) {
                            Imoves2.toggle()
                        }
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves1 ?  -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                            Text("Lower Body")
                                .offset(x: 0, y: Imoves1 ?  -332 : 500)
                                .opacity(Imoves1 ? 1 : 0)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves2 ? 0 : 1)
                    
                    
                    
                    //Oink buttons
                    Button{
                        withAnimation(.spring()) {
                            Imoves3.toggle()
                        }
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves2 ? -664 : 500)
                            Text("Knee")
                                .offset(x: 0, y: Imoves2 ? -664 : 500)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves3 ? 0 : 1)
                    Button{
                        
                    }label:{ 
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves2 ? -664 : 500)
                            Text("Hamstrings")
                                .offset(x: 0, y: Imoves2 ? -664 : 500)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves3 ? 0 : 1)
                    Button{
                        
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                                .frame(width:280, height: 100)
                                .offset(x: 0, y: Imoves2 ?  -664 : 500)
                            Text("Ankle")
                                .offset(x: 0, y: Imoves2 ?  -664 : 500)
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                    }
                    .opacity(Imoves3 ? 0 : 1)
                    
                    
                }
                
                //answer box
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941177129745483, alpha: 1.0)))
                        .frame(width:280, height: 400)
                        .offset(x: 0, y: Imoves3 ? -65 : 500)
                    Text("I'm not a doctor, but I can offer some general tips for managing hamstring discomfort: \n Ice: Apply ice for 15-20 minutes every couple of hours to reduce swelling and numb the pain. \nGentle Stretching: Once the initial pain subsides, gentle stretching can help improve flexibility. Be careful not to overstretch. \nIf the pain persists or worsens, it’s a good idea to see a healthcare professional or physical therapist for a personalized assessment and treatment plan.")   
                        .offset(x: 0, y: Imoves3 ? -65 : 500)  
                        .font(Font.custom("Open Sans", size: 16))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        .frame(width: 250, height: 400)
                }
                .opacity(Imoves3 ? 1 : 0)
                /*
                Button{
                    
                }label:{ 
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 1.0, green: 0.2527073622, blue: 0.07590860873, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves1 ? -45 : 500)
                        Text("Upper Body")
                            .offset(x: 0, y: Imoves1 ? -45 : 500)
                    }
                }
                //.opacity(Imoves1 ? 0 : 1)
                Button{
                    
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.6933748722, green: 0.8683621287, blue: 0.5471815467, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves1 ? 67 : 500)
                        Text("Middle Body")   
                        .offset(x: 0, y: Imoves1 ? 67 : 500) 
                    }
                    
                }
                Button{
                    withAnimation(.spring()) {
                        Imoves2.toggle()
                    }
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.5875531435, green: 0.8266115785, blue: 0.3729653656, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves1 ?  178 : 500)
                        Text("Lower Body")   
                        .offset(x: 0, y: Imoves1 ? 178 : 500)  
                    }
                    
                    
                    
                    
                }
                 
             
                Button{
                    
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves2 ? -45 : 500)
                        Text("Ribs")   
                            .offset(x: 0, y: Imoves2 ? -45 : 500)                        
                    }
                }
                Button{
                    
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves2 ? 67 : 500)
                        Text("Back")   
                            .offset(x: 0, y: Imoves2 ? 67 : 500) 
                    }
                    
                }

                Button{
                    
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                            .frame(width:280, height: 100)
                            .offset(x: 0, y: Imoves2 ?  178 : 500)
                        Text("Hips")   
                            .offset(x: 0, y: Imoves2 ? 178 : 500)  
                    }
                }
                */
                /*
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941177129745483, alpha: 1.0)))
                        .frame(width:280, height: 400)
                        .offset(x: 0, y: Imoves3 ? 178 : 500)
                    Text("Explination")   
                        .offset(x: 0, y: Imoves3 ? 178 : 500)  
                }
                */
                
                      
            }
            .tabItem{
                Image(systemName: "stethoscope.circle.fill")
            }
            .tag(1)
            
            
            //health resources:
            NavigationView{
                ScrollView {
                    //Profile
                    Spacer()
                        .padding(.top, 50)
                    NavigationLink{
                        ProfileView()
                            //.navigationBarBackButtonHidden(true)
                    }label:{
                        Image("Jerd Icon")
                            .resizable()
                            .frame(width: 56, height: 56)
                            .mask(Circle())
                            //.padding()
                    }
                    .frame(width: 260, height: 95, alignment: .topTrailing)
                    
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
            .tabItem{
                Image(systemName: "fork.knife.circle.fill")
            }
            .tag(0)    
            
            
            VStack{
                ScrollView{
                    VStack{
                        NavigationLink{
                            ProfileView()
                                .navigationBarBackButtonHidden(true)
                        }label:{
                            Image("Jerd Icon")
                                .resizable()
                                .frame(width: 56, height: 56)
                                .mask(Circle())
                        }
                        .frame(width: 260, height: 95, alignment: .topTrailing)
                        
                        
                        
                        //January
                        Text("January")
                            .font(Font.custom("Titan One", size: 64))
                            .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            .padding(.bottom, 5)
                        HStack{
                            VStack{
                                Text("S")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal,6)                     
                                Button{
                                    
                                }label:{
                                    Text(" ").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                Button{
                                    
                                }label:{
                                    Text("5").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                
                                
                                Button{
                                    
                                }label:{
                                    Text("12").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                
                                Button{
                                    
                                }label:{
                                    Text("19").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                
                                Button{
                                    
                                }label:{
                                    Text("26").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }  
                                .tint(.black)
                            }
                            VStack{
                                Text("M")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text(" ").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                Button{
                                    
                                }label:{
                                    Text("6").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                
                                Button{
                                    
                                }label:{
                                    Text("13").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("20").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("27").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }
                                .tint(.black)
                            }       
                            
                            VStack{
                                Text("T")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text(" ").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("7").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("14").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("21").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("28").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }  
                                .tint(.black)
                            }
                            VStack{
                                Text("W")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text("1").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                .tint(.black)
                                Button{
                                    withAnimation(.spring()) {
                                        shapeSlide.toggle()
                                    }
                                }label:{
                                    Text("8").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("15").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("22").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("29").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }  
                                .tint(.black)
                            }
                            VStack{
                                Text("T")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text("2").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("9").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("16").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("23").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("30").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }
                                .tint(.black)
                            }
                            VStack{
                                Text("F")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text("3").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("10").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("17").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("24").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("31").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }
                                .tint(.black)
                            }
                            VStack{
                                Text("S")
                                    .font(Font.custom("Titan One", size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                    .padding(.horizontal, 6)   
                                Button{
                                }label:{
                                    Text("4").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)  
                                } 
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("11").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                     }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("18").font(.custom("Open Sans Bold", size: 25))
                                    .padding(.bottom, 6)                      }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text("25").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                  
                                }
                                .tint(.black)
                                Button{
                                    
                                }label:{
                                    Text(" ").font(.custom("Open Sans Bold", size: 25))
                                        .padding(.bottom, 6)                       
                                }
                                .tint(.black)
                                
                            }           
                        }                    
                        
                        HStack{
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.6549019813537598, blue: 0.8352941274642944, alpha: 1)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("J")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                
                            }
                            
                            
                            
                            
                            .padding(.horizontal,5)
                            
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941177129745483, alpha: 1.0)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("F")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }
                            
                            .tint(.black)                      .padding(.horizontal,5)            
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("A")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }       
                            
                            .tint(.black)
                            .padding(.horizontal,5)        
                            
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("A")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }           
                            
                            .tint(.black)
                            .padding(.horizontal,5)                               
                            
                            
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("M")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                
                            }
                            .tint(.black)
                            .padding(.horizontal,5)            
                            
                            
                            ZStack{
                                //Ellipse 63
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0)))
                                    .frame(width: 35, height: 35)       
                                
                                Text("J")
                                    .font(Font.custom("Titan One", size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            }           
                            
                            .tint(.black)
                            .padding(.horizontal,5)       
                            
                        }
                    }
                    .padding(.top, 50)
                    
                    HStack{
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("J")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            
                            
                        }
                        .tint(.black)
                        .padding(.horizontal,5)
                        
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("A")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }
                        
                        .tint(.black)                      .padding(.horizontal,5)            
                        
                        
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.49803921580314636, blue: 0.0, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("S")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }           
                        
                        .tint(.black)
                        .padding(.horizontal,5)        
                        
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941177129745483, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("O")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }           
                        
                        .tint(.black)
                        .padding(.horizontal,5)                               
                        
                        
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.49803921580314636, blue: 0.0, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("N")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }           
                        
                        .tint(.black)
                        .padding(.horizontal,5)            
                        
                        
                        ZStack{
                            //Ellipse 63
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.9373851418495178, green: 0.6422017812728882, blue: 0.8462173342704773, alpha: 1.0)))
                                .frame(width: 35, height: 35)       
                            
                            Text("D")
                                .font(Font.custom("Titan One", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        }           
                        
                        .tint(.black)
                        .padding(.horizontal,5)    
                        
                    }
                    
                    ZStack{
                        //bg rectangle
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941176533699036, alpha: 1)))
                            .frame(width: 400, height: 470)      
                            .padding(.bottom, -100)
                            .offset(x: 0, y: shapeSlide ? 0 : 200)
                        //to do list
                        VStack {
                            Text("Wednesday, January 8th")
                                .font(Font.custom("Titan One", size: 24))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                            Text("Homework: ")
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                .padding(.top, 5)
                                .padding(.leading, -160)
                            HStack {
                                TextField("-", text: $hw1)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(thw1 ? 0.2 : 1.0)
                                Image(systemName: thw1 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            thw1.toggle()
                                        }
                                    }
                            }
                            HStack {
                                TextField("-", text: $hw2)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(thw2 ? 0.2 : 1.0)
                                Image(systemName: thw2 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            thw2.toggle()
                                        }
                                    }
                            }
                            HStack {
                                TextField("-", text: $hw3)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(thw3 ? 0.2 : 1.0)
                                Image(systemName: thw3 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            thw3.toggle()
                                        }
                                    }
                            }
                            HStack {
                                TextField("-", text: $hw4)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(thw4 ? 0.2 : 1.0)
                                Image(systemName: thw4 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            thw4.toggle()
                                        }
                                    }
                            }
                            Text("Practice: ")
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                .padding(.top, 5)
                                .padding(.leading, -160)
                            HStack {
                                TextField("-", text: $practice1)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(tpractice1 ? 0.2 : 1.0)
                                TextField("TIME", text: $time1)
                                    .foregroundStyle((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 120)
                            }
                            HStack {
                                TextField("-", text: $practice2)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(tpractice2 ? 0.2 : 1.0)
                                TextField("TIME", text: $time2)
                                    .foregroundStyle((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 120)
                            }
                            HStack {
                                TextField("-", text: $practice3)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(tpractice3 ? 0.2 : 1.0)
                                TextField("TIME", text: $time3)
                                    .foregroundStyle((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 120)
                            }
                            Text("To Do: ")
                                .font(Font.custom("Titan One", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                                .padding(.top, 5)
                                .padding(.leading, -160)
                            HStack {
                                TextField("-", text: $todo1)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(ttodo1 ? 0.2 : 1.0)
                                Image(systemName: ttodo1 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            ttodo1.toggle()
                                        }
                                    }
                            }
                            HStack {
                                TextField("-", text: $todo2)
                                    .font(Font.custom("Open Sans", size: 15))
                                    .bold()
                                    .padding(.leading, 60)
                                    .opacity(ttodo2 ? 0.2 : 1.0)
                                Image(systemName: ttodo2 ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                    .foregroundColor((Color(#colorLiteral(red: 0.8941177129745483, green: 0.3137255012989044, blue: 0.0, alpha: 1.0))))
                                    .padding(.leading, -80)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            ttodo2.toggle()
                                        }
                                    }
                            }
                            
                            
                        }
                        .padding(.top, 90)
                        .offset(x: 0, y: shapeSlide ? 0 : 200)
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
            
            }
            .tabItem{
                Image(systemName: "calendar.circle.fill")
            }
            .tag(2)
            
            //water tracker:
            VStack{
                NavigationLink{
                    ProfileView()
                        .navigationBarBackButtonHidden(true)
                }label:{
                    Image("Jerd Icon")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .mask(Circle())
                }
                .frame(width: 260, height: 95, alignment: .topTrailing)
                
                VStack {
                    Text("Water Tracker")
                        .font(Font.custom("Titan One", size: 32))
                        .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                        .multilineTextAlignment(.center)   
                        .padding(.top,20)
                        .padding()
                    //Water Intake
                    Text("Water Intake")
                        .font(Font.custom("Open Sans Regular", size: 24))
                        .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                        .multilineTextAlignment(.center)   
                        .padding(.bottom)
                    
                    //Ellipse 4
                    ZStack {
                        VStack{
                            //25%
                            let percentW = (w * 100)/totalW
                            Text(String(percentW) + "%")
                                .font(Font.custom("Titan One", size: 64))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                                .multilineTextAlignment(.center)
                            
                            //25/100 oz
                            Text(String(w) + "/" + String(totalW))
                                .font(Font.custom("Open Sans", size: 20))
                                .multilineTextAlignment(.center)
                        }
                        
                        Circle()
                            .strokeBorder(Color(#colorLiteral(red: 0.7986111044883728, green: 0.7986111044883728, blue: 0.7986111044883728, alpha: 1)), lineWidth: 25)
                        let percentW = (w * 100)/totalW
                        Circle()
                            .trim(from: 0, to: CGFloat(percentW)/100)
                            .stroke(style: StrokeStyle(lineWidth: 24, lineCap: .round))
                            .frame(width: 258, height: 258)
                            .rotationEffect(.degrees(-90))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4661431312561035, green: 0.7215315699577332, blue: 0.8989637494087219, alpha: 1.0)), Color(#colorLiteral(red: 0.5934523940086365, green: 0.7777777910232544, blue: 0.8942194581031799, alpha: 1.0))]), 
                                                            startPoint: .topLeading, 
                                                            endPoint: .bottomTrailing))
                    }
                    .frame(width: 281, height: 281)    
                    
                    //Electrolyte Intake
                    Text("Electrolyte Intake")
                        .font(Font.custom("Open Sans Regular", size: 24))
                        .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    //Ellipse 5
                    ZStack {
                        VStack{
                            //0%
                            let percentE = (e * 100)/totalE
                            Text(String(percentE) + "%")
                                .font(Font.custom("Titan One", size: 30))
                                .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.08, blue: 0.06, alpha: 1)))
                                .multilineTextAlignment(.center)
                            
                            //0/2
                            Text(String(e) + "/" + String(totalE))
                                .font(Font.custom("Open Sans", size: 14))
                                .multilineTextAlignment(.center)
                        }
                        Circle()
                            .stroke(Color(#colorLiteral(red: 0.7986111044883728, green: 0.7986111044883728, blue: 0.7986111044883728, alpha: 1)), lineWidth: 12.5)
                        let percentE = (e * 100)/totalE
                        Circle()
                            .trim(from: 0, to: CGFloat(percentE)/100)
                            .stroke(style: StrokeStyle(lineWidth: 12.5, lineCap: .round))
                        //.frame(width: 258, height: 258)
                            .rotationEffect(.degrees(-90))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4661431312561035, green: 0.7215315699577332, blue: 0.8989637494087219, alpha: 1.0)), Color(#colorLiteral(red: 0.5934523940086365, green: 0.7777777910232544, blue: 0.8942194581031799, alpha: 1.0))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    }
                    .frame(width: 115, height: 115)   
                    
                    HStack{
                        Button{
                            addw()
                        }label:{
                            ZStack{
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.5960784554481506, green: 0.7764706015586853, blue: 0.8941177129745483, alpha: 1.0)))
                                    .frame(width: 60, height: 60)
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 10, height: 35)
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 9.5, height: 34.8)
                                    .rotationEffect(.degrees(-90))
                            }
                            .padding()
                        }
                        
                        Button{
                            adde()
                        }label:{
                            ZStack{
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.8941177129745483, green: 0.8313725590705872, blue: 0.2549019753932953, alpha: 1.0)))
                                    .frame(width: 60, height: 60)
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 10, height: 35)
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 9.5, height: 34.8)
                                    .rotationEffect(.degrees(-90))
                            }
                            .padding()
                        }
                    }
                }
            }
            .tabItem{
                Image(systemName: "drop.circle.fill")
            }
            .tag(4)
            
            
            
            
        }
        .tint(Color.black)
                    
                    
    
    }
    
}

