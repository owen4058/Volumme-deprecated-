//
//  SelectedUI.swift
//  ex
//
//  Created by 양시관 on 2022/08/13.
//

import Foundation
import SwiftUI

struct SelectedUI: View{
    @State private var tall = " "
  //  @State private var weight = 0
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View{

        VStack{
        
        HStack{
            
           
            Text(" 키:")
                .padding()
            Spacer().frame(width:16)
            TextField("Enter your name", text: $tall).frame(width:160,height:18)
                .padding().frame(width: 200, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
            Spacer().frame(width:20,height:50)
    
         
            
}
        attach()
        weight2()
        muscle()
            Spacer().frame(height:100)
            
            HStack{
                
                ButtonBefore1(title:"이전",iconName: "preparing.circle").padding()
                ButtonNext1(title:"다음",iconName: "preparing.circle").padding()
                
            }
        }
        
    }
}

struct SelectedUI_Previews: PreviewProvider {
    static var previews: some View {
        SelectedUI()
    }
}



struct ButtonNext1:View{
    @State private var show = false
    
    var title: String
    var iconName:String
    
    var body : some View{
        VStack{
            Text("")
            Button(action: {
                self.show = true
            }){
                HStack{
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                    .multilineTextAlignment(.leading)}
                
                }
            .padding()
            .foregroundColor(.black)
            
            .sheet(isPresented: self.$show){
                routin()
            }
            }
        }
    }


struct ButtonBefore1:View{
    @State private var show = false
    
    var title: String
    var iconName:String
    
    var body : some View{
        VStack{
            Text("")
            Button(action: {
                self.show = true
            }){
                HStack{
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                    .multilineTextAlignment(.leading)}
                
                }
            .padding()
            .foregroundColor(.black)
            
            .sheet(isPresented: self.$show){
                PlayGround()
            }
            }
        }
    }
