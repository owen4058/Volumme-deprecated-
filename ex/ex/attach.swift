//
//  attach.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import SwiftUI

struct attach: View{
    
    @State private var weight = " "
  //  @State private var weight = 0
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body:some View{
        HStack{
            
            
            Text("몸무게 :")
            Spacer().frame(width:15)
            TextField("Enter your name", text: $weight).frame(width:160,height:18)
                .padding().frame(width: 200, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
            Spacer().frame(width:20,height:50)
    
            
            
}
    }
}

struct attach_Previews: PreviewProvider {
    static var previews: some View {
        attach()
    }
}

    

