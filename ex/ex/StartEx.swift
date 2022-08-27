//
//  StartEx.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import SwiftUI


struct StartEx : View{
    @State private var show = false
    @State private var wakeUp = Date()
    var body: some View{
        
        
        Form {
            DatePicker("날짜선택", selection: $wakeUp)
            HStack(){
                Spacer().frame(width: 70, height: 11)
                VStack(){
            Button(action: {
                self.show = true
            }){
                
                Text("운동을 추가하세요  +")
                
            
            }
        
        }
                .sheet(isPresented: self.$show){
                    AddEx()
    }
}
}
}
}


struct StartEx_Previews: PreviewProvider {
    static var previews: some View {
        StartEx()
        
    }
}


