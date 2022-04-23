//
//  ReelView.swift
//  Slot Machine
//
//  Created by Metin Atalay on 22.04.2022.
//

import SwiftUI

import SwiftUI

struct ReelView: View {
  var body: some View {
    Image("gfx-reel")
      .resizable()
      .modifier(ImageModifier())
  }
}

struct ReelView_Previews: PreviewProvider {
  static var previews: some View {
    ReelView()
      .previewLayout(.fixed(width: 220, height: 220))
  }
}
