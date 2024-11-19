import SwiftUI

public struct CreateAccountView: View {
    
    @State private var username = ""
    @State private var password = ""
     @State private var confirmPassword = ""
    
    public var body: some View {
        VStack {
            //Create an account:
            Text("Create an account:")
                .font(Font.custom("Titan One", size: 24))
                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
                .padding(.bottom, 30)
            //Username
            Text("Username")
                .frame(width: 275, height: 8, alignment: .topLeading)
                .font(Font.custom("Titan One", size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
            HStack{
                TextField("Enter Username", text: $username)
                    .autocapitalization(.none)
                //RoundedRectangle(cornerRadius: 90)
                    .foregroundStyle(.black)
                    .padding()
                    .frame(width: 278, height: 46)
                    .background(Color(#colorLiteral(red: 0.7568627595901489, green: 0.8392156958580017, blue: 0.8941176533699036, alpha: 1)))
                    .cornerRadius(90)
                    .padding(.bottom, 12)
                    .padding(.trailing, -60)  //to overlap with text
                    .padding(.leading, -30) //to align it in the center
                Image("LittlePerson")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.top, -15)
            }
            //Password
            Text("Password")
                .frame(width: 275, height: 8, alignment: .topLeading)
                .font(Font.custom("Titan One", size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
            HStack{
                SecureField("Enter Password", text: $password)
                    .autocapitalization(.none)
                //RoundedRectangle(cornerRadius: 90)
                    .foregroundStyle(.black)
                    .padding()
                    .frame(width: 278, height: 46)
                    .background(Color(#colorLiteral(red: 0.7568627595901489, green: 0.8392156958580017, blue: 0.8941176533699036, alpha: 1)))
                    .cornerRadius(90)
                    .padding(.bottom, 12)
                    .padding(.trailing, -60)  //to overlap with text
                    .padding(.leading, -30) //to align it in the center
                Image("Lock")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.top, -15)
            }
            //Confirm Password
            Text("Confirm Password")
                .frame(width: 275, height: 8, alignment: .topLeading)
                .font(Font.custom("Titan One", size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))
            HStack{
                SecureField("Confirm Password", text: $confirmPassword)
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
                Image("ConfirmPassword")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.top, -35)
            }
            
            //Login button
            HStack{
                RoundedRectangle(cornerRadius: 90)
                    .fill(Color(#colorLiteral(red: 0.8941176533699036, green: 0.49803921580314636, blue: 0, alpha: 1)))
                    .frame(width: 236, height: 78, alignment: .center)
                    //.padding(.bottom, 10)
                    .padding(.trailing, -200)  //to overlap with text
                    .padding(.leading, -45) //to align it in the center
                NavigationLink {
                    LoginView()
                        .navigationBarBackButtonHidden(true)
                   
                }label:{
                    Text("Sign Up")
                        .font(Font.custom("Titan One", size: 36))
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.05, blue: 0.02, alpha: 1)))                }
                
            }

            
            //Already have an account?
            NavigationLink(destination: LoginView()) {
                HStack{
                    Text("Already have an account?")
                        .font(Font.custom("Titan One", size: 11))
                        .foregroundColor(Color(#colorLiteral(red: 0.89, green: 0.65, blue: 0.84, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding(.top, 200)
                    Text("Login")
                        .font(Font.custom("Titan One", size: 11))
                        .underline()
                        .foregroundColor(Color(#colorLiteral(red: 0.89, green: 0.65, blue: 0.84, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding(.leading, -5)
                        .padding(.top, 200)
                }
            }/*.buttonStyle(PlainButtonStyle())*/
        }
    }
        
}
