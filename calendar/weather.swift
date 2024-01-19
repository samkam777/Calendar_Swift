//
//  weather.swift
//  calendar
//
//  Created by samkam on 2024/1/19.
//

import SwiftUI

struct weather: View {
    @State private var date = Date()
    @State private var degree:Int = 20
    @State private var isDark = false
    var body: some View {
        ZStack{
            LinearGradient(colors: isDark ? [Color.black, Color.gray] : [Color.blue, Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()  // 边缘的位置的颜色
            VStack{
                VStack{
                    Text("深圳")
                        .font(.system(size: 45))
                        .foregroundStyle(.white)
                        .onTapGesture {
                            isDark = !isDark
                        }
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    Text("\(degree)°")
                        .font(.system(size: 73))
                        .foregroundStyle(.white)
                        .onTapGesture {//点击事件
                            degree += 1
                        }
                }
                .padding()
                
                Spacer().frame(height: 73)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:25){
                        FeatureWeather(imageName: "cloud.sun.fill")
                    }
                }
                Spacer().frame(height: 73)
                Button{
                    degree -= 1
                }label: {
                    Text("一键清除雾霾")
                        .bold()
                        .font(.title2)
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
        
    }
    
    
}

struct FeatureWeather:View{
    var imageName: String
    var body: some View{
        ForEach(0..<7) { index in
            VStack {
    //                                Text("周二")
                Text("\(Calendar.current.weekdaySymbols[index])")
                    .foregroundStyle(.white)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                let temperature = randomTemperature()
    //                                Text("70°")
                Text("\(temperature)°")
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
            }
        }
    }
    
    func randomTemperature() -> Int {
           let min = 0 // 你可以设置一个范围，例如30到40度
           let max = 40 // 你可以设置一个范围，例如30到40度
           return Int.random(in: min...max)
       }
    
}

struct weather_Previews: PreviewProvider {
    static var previews: some View {
        weather()
    }
}
