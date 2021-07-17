//
//  CircleButtonAnimationView.swift
//  CryptoApp
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 12.07.2021.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var showPortfolio: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(showPortfolio ? 1.0 : 0.0)
            .opacity(showPortfolio ? 0.0 : 1.0)
            .animation(showPortfolio ? .easeOut(duration: 1.0) : .none)
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(showPortfolio: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
