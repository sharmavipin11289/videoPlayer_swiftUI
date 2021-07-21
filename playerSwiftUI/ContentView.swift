//
//  ContentView.swift
//  playerSwiftUI
//
//  Created by Vipin on 21/07/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    
    var body: some View {
        VideoPlayer(player: player).ignoresSafeArea()
            .onAppear(){
                player = AVPlayer(url: URL(string: "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4")!)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
