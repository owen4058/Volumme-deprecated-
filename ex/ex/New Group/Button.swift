//
//  Button.swift
//  ex
//
//  Created by 양시관 on 2022/08/13.
//

import Foundation
struct Button: View{
    var title: String
    var iconName: String
    
    var body: some View{
        VStack{
            Text("")
            Button(action: {
                
            }){
                HStack {
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .foregroundColor(.black)
                //.background(Color.red)
                // .cornerRadius(40)
            }
        }
    }
}
