//
//  ContentView.swift
//  vc_Lesson1
//
//  Created by Сергей Зайцев on 13.09.2021.
//
import SwiftUI

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            
            GeometryReader { geometry in
                Image("VK")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack {
                GeometryReader { geometry in
                    Image("VC_Top")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 100.0, height: 100.0)
                Text("Авторизация")
                    .font(.largeTitle)
                    .padding(.top, 32)
                VStack(alignment: .trailing, spacing: 20.0) {
                    HStack {
                    Text("Имя:")
                        .padding(.trailing, 10.0)
                    TextField("", text: $login).frame(maxWidth: 150).textFieldStyle(RoundedBorderTextFieldStyle())
                }
                    
                HStack {
                    Text("Пароль:")
                        .padding(.trailing, 10.0)
                    SecureField("", text: $password).frame(maxWidth: 150).textFieldStyle(RoundedBorderTextFieldStyle())
                }}
                    .frame(width: 300.0, height: 200.0)
                Button(action: { print("Hello") }) {
                    Text("Войти")
                        .font(.title3)
                        .fontWeight(.bold)
                        
//                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    
                        
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

