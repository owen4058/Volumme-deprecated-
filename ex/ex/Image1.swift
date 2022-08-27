//
//  Image1.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import Swift
import SwiftUI

struct Image1 : View{
    var body: some View{
        VStack{
            Image("1")
                .resizable()
                .frame(width:50,height:50)
        }
    }
}


struct Image1_Previews: PreviewProvider {
    static var previews: some View {
        Image1()
        
    }
}


