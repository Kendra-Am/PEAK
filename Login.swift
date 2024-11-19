import SwiftUI 

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    //@State private var showingLoginScreen = false
    //everything about this is from youtube video 1, maybe delete it not yet
    /*@Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false*/
    
    var body: some View {
        NavigationView {
            VStack{
                //Fish
                HStack{
                    Image("WavingFish")
                        .resizable()
                        .frame(width: 280, height: 280)
                        .padding(.bottom, 30)
                        .padding(.trailing, -170)  //to overlap with text
                        .padding(.leading, -70) //to align it in the center
                    //Hello!
                    Text("Hello!")
                        .font(Font.custom("Titan One", size: 40))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding(.top, -80)
                }
                
                //Username
                Text("Username")
                    .font(Font.custom("Titan One", size: 12))
                    .frame(width: 275, height: 8, alignment: .topLeading)
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                HStack{
                    TextField("Email", text: $username)
                        .autocapitalization(.none)
                    //RoundedRectangle(cornerRadius: 90)
                        .foregroundStyle(.black)
                        .padding()
                        .frame(width: 278, height: 46)
                        .background(Color(#colorLiteral(red: 0.7568627595901489, green: 0.8392156958580017, blue: 0.8941176533699036, alpha: 1)))
                        .cornerRadius(90)
                        .padding(.bottom, 40)
                        .padding(.trailing, -60)  //to overlap with text
                        .padding(.leading, -30) //to align it in the center
                        .border(.red, width: CGFloat(wrongUsername))
                    Image("LittlePerson")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.top, -35)
                }
                //Password
                Text("Password")
                    .font(Font.custom("Titan One", size: 12))
                    .frame(width: 275, height: 8, alignment: .topLeading)
                                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                HStack{
                    SecureField("Password", text: $password)
                        .autocapitalization(.none)
                    //RoundedRectangle(cornerRadius: 90)
                        .foregroundStyle(.black)
                        .padding()
                        .frame(width: 278, height: 46)
                        .background(Color(#colorLiteral(red: 0.7568627595901489, green: 0.8392156958580017, blue: 0.8941176533699036, alpha: 1)))
                        .cornerRadius(90)
                        .padding(.bottom, 40)
                        .padding(.trailing, -55)  //to overlap with text
                        .padding(.leading, -30) //to align it in the center
                        .border(.red, width: CGFloat(wrongPassword))
                    Image("Lock")
                        .resizable()
                        .frame(width: 25, height: 30)
                        .padding(.top, -35)
                }
                
                //Login button
                HStack{
                    RoundedRectangle(cornerRadius: 90)
                        .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                        .frame(width: 236, height: 78, alignment: .center)
                        .padding(.bottom, 2)
                        .padding(.trailing, -220)  //to overlap with text
                        .padding(.leading, -60) //to align it in the center
                    NavigationLink {
                        AccountView()
                            .navigationBarBackButtonHidden(true)
                    }label:{
                        Text("Login")
                            .font(Font.custom("Titan One", size: 36))
                            .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))                    }
                        
                }
                
                //sign up
                NavigationLink {
                    CreateAccountView()
                        .navigationBarBackButtonHidden(true)
                }label:{
                    HStack{
                        Text("Don’t have an account?")
                            .font(Font.custom("Titan One", size: 11))
                            .foregroundColor(Color(#colorLiteral(red: 0.89, green: 0.65, blue: 0.84, alpha: 1)))
                            .multilineTextAlignment(.center)
                        Text("Join")
                            .font(Font.custom("Titan One", size: 11))
                            .underline()
                            .foregroundColor(Color(#colorLiteral(red: 0.89, green: 0.65, blue: 0.84, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .padding(.leading, -5)
                                    }
            }
                
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(#colorLiteral(red: 0.9999960065, green: 1.0, blue: 1.0, alpha: 1.0)))
        }
        
    }
}











//DONT LOOK AT THIS
/*
struct ContentView: View {
    var body: some View {
        let cURL = Bundle.main.url(forResource: "OpenDyslexic-Regular", withExtension: "otf")! as CFURL
        let _ = CTFontManagerRegisterFontsForURL(cFURL,CTFontManagerScope.process, nil)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text ("Hello, world!")
                .font(Font.custom("OpenDyslexic-Regular", size: 36))
        }
    }
｝
*/
