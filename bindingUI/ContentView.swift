//
//  ContentView.swift
//  bindingUI
//
//  Created by Ben Garrison on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "Bob's Burgers", track: "Bobby Driver")
    
    @State private var isPlaying = false
    //call state when you want a changed var to update the view

    var body: some View {
        VStack {
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
                //ternary operator to switch color based on bool
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
            //use $ symbol to bind to the state element
        }
            
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    //bind this view's action to the contentview

    var body: some View {
        Button(action: {self.isPlaying.toggle()}) {
        //use toggle function to activate bool for button
            Text("Play")
        }.padding(12)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
