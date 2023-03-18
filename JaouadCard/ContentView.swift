//
//  ContentView.swift
//  JaouadCard
//
//  Created by Abdeljaouad Mezrari on 04/03/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.24, green: 0.76, blue: 0.83)
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack {
//                    Color(.white)
//                        .frame(width: 170.00, height: 170.00, alignment: .center)
//                        .clipShape(Circle())
//                        .overlay {
//                            Image("utilisateur")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                        }
                    
                    Image("utilisateur")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150, alignment: .center)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        .overlay {
                            
                            Circle().stroke(Color.white, lineWidth: 2
                            )
                        }
                }
                Text("Abdeljaouad MEZRARI")
                    .font(Font.custom("Pacifico", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS  Developer")
                    .foregroundColor(.white)
                    .font(Font.system(size: 25))
                
                VStack(spacing: 0){
                    InfoView(text: "mezrari.abdeljaouad@gmail.com", imageName: "envelope.fill")
                    InfoView(text: "++212 697 917 380", imageName: "phone.fill")
                    //.padding(.all)
                }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

