//
//  VolumeImage.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import Swift
import SwiftUI

struct VolumeImage : View{
    var body: some View{
        VStack{
            Image("2")
                .resizable()
                .frame(width:50,height:50)
        }
    }
}


struct VolumeImage_Previews: PreviewProvider {
    static var previews: some View {
        VolumeImage()
        
    }
}

