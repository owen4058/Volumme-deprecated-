//
//  PlayGround.swift
//  ex
//
//  Created by 양시관 on 2022/08/12.
//

import SwiftUI

struct PlayGround: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                BoyButton(title: "남자", iconName: " ").padding()
                Spacer()
                Spacer()
                
                Spacer()
                GirlButton(title: "여자", iconName: "").padding()
                Spacer()
                
        
               
            }
        
        
        
        VStack{
            HStack{
                ButtonBefore(title:"이전",iconName: "preparing.circle").padding()
                Spacer()
                Spacer()
                ButtonNext(title:"다음",iconName: "preparing.circle").padding()
                
               
            }
        }
    }
}
}
struct PlayGround_Previews: PreviewProvider {
    static var previews: some View {
        PlayGround()
    }
}


struct ButtonNext:View{
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
                SelectedUI()
            }
            }
        }
    }

struct ButtonBefore:View{
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
                ContentView()
            }
            }
        }
    }


struct BoyButton: View {
    var title: String
    var iconName: String
    
    var body : some View{
        VStack{
            Text("")
            Button(action: {
                
            }){
                HStack{
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
}
struct GirlButton: View {
    var title: String
    var iconName: String
    
    var body : some View{
        VStack{
            Text("")
            Button(action: {
                
            }){
                HStack{
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
}

