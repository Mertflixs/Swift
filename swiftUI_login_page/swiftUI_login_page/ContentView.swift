//
//  ContentView.swift
//  swiftUI_login_page
//
//  Created by Mert Alaşahan on 12.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var loginModel: LoginViewModel = LoginViewModel()
    var body: some View {
        VStack{
            Circle()
                .trim(from: 0, to: 0.5)
                .fill(.red)
                .frame(width: 45, height: 45)
                .rotationEffect(.init(degrees: -90))
                .hLeading()
                .offset(x: -23)
                .padding(.bottom,30)
            
            Text("Hi, \nLogin Now")
                .font(.largeTitle.bold())
                .foregroundColor(.black)
                .hLeading()
            
            TextField("Email", text: $loginModel.email)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.email == "" ? Color.black.opacity(0.05) : Color("Orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            TextField("Password", text: $loginModel.password)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.password == "" ? Color.black.opacity(0.05) : Color("Orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 15)
    
            Button {
                
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .hCenter()
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("Brown"))
                    }
            }
            .padding(.horizontal,35)
            .disabled(loginModel.email == "" || loginModel.password == "")
            .opacity(loginModel.email == "" || loginModel.password == "" ? 0.5 : 1)
            
            NavigationLink {
                // MARK: Ging home without login
            } label: {
                Text("Skip Now")
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal,25)
        .padding(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    func hLeading()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func hTrailing()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    func hCenter()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
