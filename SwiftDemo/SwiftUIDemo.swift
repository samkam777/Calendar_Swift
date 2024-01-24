//
//  SwiftUIDemo.swift
//  calendar
//
//  Created by samkam on 2024/1/22.
//

import SwiftUI

struct SwiftUIDemo: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    @State private var newFruit = ""

    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { fruits.remove(atOffsets: $0) }
                    .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
                    
                }
                .navigationTitle("Fruits")
                .toolbar {
                    EditButton()
                }
            }
            VStack {
                TextField("Enter a fruit", text: $newFruit)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: {
                    fruits.append(newFruit)
                    newFruit = ""
                }) {
                    Text("Add Fruit")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                .disabled(newFruit.isEmpty)
            }
        }
    }
}

struct SwiftUIDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDemo()
    }
}
