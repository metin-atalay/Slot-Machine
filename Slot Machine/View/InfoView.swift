//
//  InfoView.swift
//  Slot Machine
//
//  Created by Metin Atalay on 22.04.2022.
//

import SwiftUI

struct InfoView: View {
    
    // MARK: - PROPS
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("Abount the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Metin Atalay")
                    FormRowView(firstItem: "Designer", secondItem: "@matalay")
                    FormRowView(firstItem: "Website", secondItem: "github.com/metin-atalay")
                    FormRowView(firstItem: "Copyright", secondItem: "© All rights reserved.")
                    FormRowView(firstItem: "Version", secondItem: "1.0.1")
                }
            }
            
            .font(.system(.body, design: .rounded))
        } // MARK: - VSTACK
        .padding(.top ,40)
        .overlay(
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
            })
                .padding(.top, 30)
                .padding(.trailing ,20)
                .accentColor(.secondary)
            , alignment: .topTrailing
        
        )
        
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct FormRowView: View {
    
    // MARK: - PROPERTIES
    
    var firstItem: String
    var secondItem: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(firstItem).foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}
