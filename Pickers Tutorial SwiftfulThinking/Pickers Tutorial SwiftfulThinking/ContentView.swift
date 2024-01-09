//
//  ContentView.swift
//  Pickers Tutorial SwiftfulThinking
//
//  Created by Ricardo de Agostini Neto on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: 
                HStack {
                    Text("Filter:")
                    Text(selection)
            }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3),
                        radius: 10, x: 0, y: 10)
            ,
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                    
                }
                
            })
        .pickerStyle(MenuPickerStyle())
        
        
        
//        VStack {
//            
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                }
//            )
//            .pickerStyle(WheelPickerStyle())
//            //.background(Color.gray.opacity(0.3))
//            
//        }

    }
}

#Preview {
    ContentView()
}
