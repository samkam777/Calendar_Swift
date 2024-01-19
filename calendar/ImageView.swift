//
//  ImageView.swift
//  calendar
//
//  Created by samkam on 2024/1/18.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            HStack{
                Image("7E0A8CF7-40D0-4766-9B4A-A5B9512E6C27_1_105_c-1")
                    .resizable( resizingMode: .stretch) // 拉伸方式
//                    .padding(.all, 50.0)
//                    .antialiased(true) // 抗锯齿
//                    .aspectRatio(contentMode: .fit)
                    .blur(radius: 5)
            }
            HStack{
                Image(systemName: "calendar")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.red)
                Image(systemName: "keyboard")
                    .renderingMode(.original)
                    .foregroundColor(Color.orange)
                Image(systemName: "square.and.arrow.up")
            }
            
            
        }
        

            
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
