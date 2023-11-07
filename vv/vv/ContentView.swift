//
//  ContentView.swift
//  vv
//
//  Created by Mac Mini 5 on 6/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var Password = ""
    @State private var WrongUsername = 0
    @State private var WrongPassword = 0
    @State private var showLoginScreen = false
    var body: some View {
        VStack {
            NavigationView {
                ZStack{
                    Color.green.ignoresSafeArea()
                    Circle().scale(1.7)
                        .foregroundColor(.white.opacity(0.15))
                    Circle().scale(1.35)
                        .foregroundColor(.white)
                    VStack{
                        Text("Login").font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("Username",text: $username)
                            .padding()
                            .frame(width: 300,height: 50)
                            .background(Color.black.opacity(1))
                            .cornerRadius(10)
                            .border(.green,width: CGFloat(WrongUsername))
                        
                        SecureField("Password",text: $Password)
                            .padding()
                            .frame(width: 300,height: 50)
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(10)
                            .border(.green,width: CGFloat(WrongPassword))
                        
                        Button("Login"){
                            Login(username: username, password: Password)
                        }
                        .foregroundColor(.white)
                        .frame(width: 300,height: 50)
                        .background(Color.green)                      .cornerRadius(10)
                        
                        NavigationLink(destination: Text("you  are  logged in @{\(username)" ), isActive:$showLoginScreen){EmptyView()}
                        
                    }
                }
                .navigationBarHidden(true)
            }
           
            
        }
        func Login(username:String,password:String) {
            if username.lowercased()=="mario2021"{WrongPassword = 0
                if password.lowercased()=="abc123"{WrongPassword = 0
                    showLoginScreen = true
                }else{
                    WrongPassword = 2
                }
            }else{WrongUsername = 2
                 
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
