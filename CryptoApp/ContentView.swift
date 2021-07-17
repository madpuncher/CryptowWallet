//
//  ContentView.swift
//  CryptoApp
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 12.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("ACCENT")
                    .foregroundColor(.theme.accent)
                
                Text("re")

                    .foregroundColor(.theme.red)
                Text("gr")

                    .foregroundColor(.theme.green)
                Text("sec")

                    .foregroundColor(.theme.secondaryText)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
