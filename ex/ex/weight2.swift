//
//  weight2.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import SwiftUI


struct weight2: View{

    @State private var weight2 = " "
  //  @State private var weight = 0
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body:some View{
        
            HStack{
                
                
                Text("체지방 :")
                Spacer().frame(width:16)
                TextField("Enter your name", text: $weight2).frame(width:160,height:18)
                    .padding().frame(width: 200, height: 50)
                        .background(Color(uiColor: .secondarySystemBackground))
                Spacer().frame(width:20,height:50)
        
                
                
    
        }
    }
        }
    



struct weight2_Previews: PreviewProvider {
    static var previews: some View {
        weight2()
    }
}
