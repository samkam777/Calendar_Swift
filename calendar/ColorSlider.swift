//
//  ColorSlider.swift
//  calendar
//
//  Created by samkam on 2024/1/22.
//

import SwiftUI

struct RGB: Codable, Identifiable {
    var id: Int = 0
    var red: Double = 0.0
    var green: Double = 0.0
    var blue: Double = 0.0
}

struct ColorSlider: View {
//    @State var guess = RGB()
//    @Binding var value: Double
//    var trackColor: Color
    var body: some View {
        VStack {
//            Color(guess as! CGColor)
            Text("R:??? G:??? B:???")
            HStack {
                Text("0")
                    .padding(.leading)
//                Slider(value: $value) .accentColor(trackColor)
//                    .padding(.horizontal)
                Text("255")
                    .padding(.trailing)
            }
            
        }
            
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State var guess:RGB = RGB()
    static var previews: some View {
//        LoginView(guess:RGB(red:0.8, green:0.3, blue:0.7))
        ColorSlider()
    }
}

//struct ColorSlider_Previews: PreviewProvider {
////    @State var guess: RGB = RGB() // 初始化RGB实例作为状态变量
//    static var previews: some View {
//        ColorSlider(guess: <#RGB#>, value: Binding(get: { 0.6 }, set: { newValue in // 创建一个Binding<Double>实例
////            self.guess.red = newValue // 将改变的值应用到guess的red属性上
//        }), trackColor: .red) // 传入红色作为trackColor值
//    }
//}
