//
//  ContentView.swift
//  ex
//
//  Created by 양시관 on 2022/08/12.
//

import SwiftUI

struct ColorManager {
    // create static variables for custom colors
    static let BackgroundColor = Color("BackgroundColor")

    //... add the rest of your colors here
}



struct ContentView: View {
    var body: some View {
       
        VStack{
           
            Text("Volume")
                .font(.title)
                //.padding()
                //.padding()
            
                .foregroundColor(.brown)
        
        HStack{
            Spacer()
            Spacer()
            MyButton3(title:"초보자", iconName:"preparing.circle").padding()
            Spacer()
            
            MyButton4(title:"고급자", iconName: "preparing.circle").padding()
            Spacer()
        }
        HStack{
            
            Spacer()
            MyButton1(title: "이전", iconName: "preparing.circle").padding()
        
                        
            MyButton(title: "다음", iconName: "preparing.circle").padding()
            Spacer()
            
        }
    
    

}
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct MyButton: View {
    @State private var shownext = false
    
    var title: String
    var iconName: String
    
    var body: some View {
        VStack{
            Text("")
        Button(action: {
            self.shownext = true
        }) {
            
                
            HStack {
                Image(systemName: iconName)
                    .font(.title)
                Text(title)
                    .fontWeight(.semibold)
                    .font(.title)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.black)
            //.background(Color.red)
            // .cornerRadius(40)
            
            .sheet(isPresented: self.$shownext){
                PlayGround()
            }
        }
    
}
}
}

struct MyButton1: View{
    var title: String
    var iconName: String
    
    var body: some View{
        VStack{
            Text("")
            Button(action: {
                
            }){
                HStack {
                    Image(systemName: iconName)
                        .font(.title)
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .foregroundColor(.black)
                //.background(Color.red)
                // .cornerRadius(40)
            }
        }
    }
}

struct MyButton3: View {
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

struct MyButton4: View {
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




