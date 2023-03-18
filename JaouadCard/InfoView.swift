//
//  InfoView.swift
//  JaouadCard
//
//  Created by Abdeljaouad Mezrari on 04/03/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.24, green: 0.76, blue: 0.83))
                    Text(text)
                        .foregroundColor(.black)
                        .accentColor(.black)
                }
            }
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
