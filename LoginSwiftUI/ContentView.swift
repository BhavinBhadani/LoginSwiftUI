//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Appernaut on 24/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 180)
                
                HStack {
                    Button {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                            self.index = 0
                        }
                    } label: {
                        Text("Exisitng")
                            .foregroundColor(index == 0 ? .black : .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 50)
                        
                    }
                    .background(index == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                    Button {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                            self.index = 1
                        }
                    } label: {
                        Text("New")
                            .foregroundColor(index == 1 ? .black : .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 50)
                        
                    }
                    .background(index == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                }
                .background(Color.black.opacity(0.1))
                .clipShape(Capsule())
                .padding(.top, 25)
                
                if index == 0 {
                    LoginFieldsView()
                } else {
                    SignUpFieldsView()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct LoginFieldsView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: $email)
                }
                .padding(.vertical, 15)
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(.black)
                    
                    SecureField("Enter Password", text: $password)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                }
                .padding(.vertical, 15)
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(
                LinearGradient(gradient: .init(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        }
    }
}

struct SignUpFieldsView: View {
    @State var email = ""
    @State var password = ""
    @State var repass = ""

    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: $email)
                }
                .padding(.vertical, 15)
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(.black)
                    
                    SecureField("Enter Password", text: $password)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                }
                .padding(.vertical, 15)
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(.black)
                    
                    SecureField("Confirm Password", text: $repass)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                }
                .padding(.vertical, 15)

            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("SIGN UP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(
                LinearGradient(gradient: .init(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        }
    }
}
