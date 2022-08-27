//
//  routin.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import Swift
import SwiftUI

struct routin : View{
    var body: some View{
        HStack{
            
        VStack{
            
        //    Text("df")
            VolumeImage()
                .padding(9)
            Spacer().frame(height:2)
            Image1()
                .padding(1)
            Spacer()
            
            
        }
            
            Spacer()
            title()
            
            Spacer().frame(width:73)

            VStack{
                Text("목표+")
                Spacer().frame(width:10,height:350)
                
            }
            NewRoutin()
        }
        
    }
}


struct routin_Previews: PreviewProvider {
    static var previews: some View {
       routin()
        
    }
}

