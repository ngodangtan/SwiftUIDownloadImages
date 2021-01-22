//
//  ContentView.swift
//  SwiftUIDownloadImages
//
//  Created by Ngo Dang tan on 22/01/2021.
//

import SwiftUI
import SwURL
struct ContentView: View {
    
    init(){
        SwURL.setImageCache(type: .persistent)
    }
    var body: some View {
        
        NavigationView {
            VStack {
                RemoteImageView(url: URL(string: "https://cdn.vox-cdn.com/thumbor/-QP8NzuepshFimG4d5ACdUxyX4s=/0x0:1024x768/1200x800/filters:focal(431x303:593x465)/cdn.vox-cdn.com/uploads/chorus_image/image/66217104/5986912410_682fed19e2_b.0.jpg")!, placeholderImage: Image(systemName: "photo"), transition: .custom(transition: .opacity, animation: .easeIn(duration: 0.25)))
                    .progress({ progress in
                        return Text("Loading \(progress)")
                    })
                    .aspectRatio(contentMode: .fit)
                Text("Loading Images")
            }
            .navigationTitle("Welcome !")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
