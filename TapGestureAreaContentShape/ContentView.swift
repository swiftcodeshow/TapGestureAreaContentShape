//
//  ContentView.swift
//  TapGestureAreaContentShape
//
//  Created by 米国梁 on 2021/5/1.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    
    var body: some View {

        VStack {
            
            Image(systemName: "photo")
            
            Spacer()
            
            Text("Only text and image can be tapped unless you set contentShape to a rectangle")
        }
        .frame(width: 200, height: 200)
        .padding()
        .border(Color.black)
        .contentShape(Rectangle())
        .onTapGesture {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Tapped!"))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
