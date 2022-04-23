//
//  LogoView.swift
//  Slot Machine
//
//  Created by Metin Atalay on 22.04.2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 280, idealWidth: 280, maxWidth: 320, minHeight: 260, idealHeight: 280, maxHeight: 320, alignment: .center)
            .padding(.horizontal)
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
