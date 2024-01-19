//
//  ContentView.swift
//  calendar
//
//  Created by samkam on 2024/1/8.
//

import SwiftUI

func myselect() -> String{
    return ["🌞✨", "🌛","🍎","🍐","📅"].randomElement()!
}

struct ContentView: View {
    @State private var today = myselect()
    var body: some View {
        VStack{
            Text("\(today)")
                .font(.system(size: 100))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            Spacer()
            Button("今天吃啥"){
                today = myselect()
            }
            .padding()
            .background(.teal)
            .foregroundColor(.white)
            .cornerRadius(40)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }

    }
}

