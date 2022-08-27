//
//  NewRoutin.swift
//  ex
//
//  Created by 양시관 on 2022/08/20.
//

import Foundation
import SwiftUI
import ExytePopupView

struct NewRoutin:View{
    @State var popupmessage : Bool = false
    
    func createPopup() -> some View {
           VStack(spacing: 10) {
                       
                       Text("운동을 하면서 실시간으로 운동을 추가하시겠습니까?")
                           .foregroundColor(.blue)
                           .fontWeight(.bold)

                       
               HStack{
                       Button(action: {
                           self.popupmessage = false
                       }) {
                           Text("닫기")
                               .font(.system(size: 14))
                               .foregroundColor(.black)
                               .fontWeight(.bold)
                       }
                       .frame(width: 100, height: 40)
                       .background(Color.blue)
                       .cornerRadius(20.0)
                   
                   Button(action: {
                       self.popupmessage = false
                   }){
                       Text("다음")
                           .font(.system(size: 14))
                           .foregroundColor(.black)
                           .fontWeight(.bold)
                       
                   }
                   .frame(width: 100, height: 40)
                   .background(Color.blue)
                   .cornerRadius(20.0)
                   
                   
                   }
          
           .padding(.horizontal, 10.0)
                   .frame(width: 300, height: 400)
                   .cornerRadius(10.0)
                   .shadow(radius: 10)
               
       }
    }
    
    var body: some View{
        ZStack{
            
        
        VStack{
          //  self.creatPopUp()
            Button(action: {
                self.popupmessage = true
            }, label:{
                Text("실시간 기록 + ")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10)
            })
        }
        
    }//zstack
        .popup(isPresented: $popupmessage, type: .default, position: .bottom, animation: .default, autohideIn: 20,  closeOnTap: true, closeOnTapOutside: true,   view: {
       // Text("토스트 팝업창입니다.")
            self.createPopup()
        })
        
        }
        
    }


struct NewRoutin_Previews: PreviewProvider {
    static var previews: some View {
        NewRoutin()
        
    }
}



