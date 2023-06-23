//
//  ContentView.swift
//  interactiveUis
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = " "
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack {
            
            Text ("\(textTitle)")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            TextField("Type your name here!", text: $name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Button("Submit name!") {
                textTitle = " Welcome, \(name)!"
            }
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
        

        }
                
         // this closes my vstack
        
    } // this closes the body
} // this closes the struct content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    } // this closes the static var previews
} // this closes the struct contentview_Previews
