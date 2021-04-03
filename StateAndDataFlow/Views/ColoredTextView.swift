//
//  ColoredTextView.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 03.04.2021.
//

import SwiftUI

struct ColoredTextView: View {
    
    let numberOfSymbols: Int
    let color: Color
    
    var body: some View {
        Text("\(numberOfSymbols)")
            .multilineTextAlignment(.leading)
            .foregroundColor(color)
            .frame(width: 60)
    }
}

struct ColoredTextView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredTextView(numberOfSymbols: 5, color: .red)
    }
}
