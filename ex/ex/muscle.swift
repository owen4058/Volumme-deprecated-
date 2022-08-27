//
//  muscle.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import SwiftUI


struct muscle: View {
    @State private var muscle = " "
  //  @State private var weight = 0
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body :some View{
        HStack{
            
            
            Text("근육량 :")
            Spacer().frame(width:16)
            TextField("Enter your name", text: $muscle).frame(width:160,height:18)
                .padding().frame(width: 200, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
            Spacer().frame(width:20,height:50)
    
            
            

    }
    }
}


struct muscle_Previews: PreviewProvider {
    static var previews: some View {
        muscle()
    }
}
