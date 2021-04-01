//
//  ActionButton.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 01.04.2021.
//

import SwiftUI

struct ActionButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(title: "Test", backgroundColor: .red, action: {})
    }
}
