//
//  RegisterButtonView.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 03.04.2021.
//

import SwiftUI

struct RegisterButtonView: View {
    let numberOfSymbols: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "checkmark.circle")
            Text("OK")
        }
        .disabled(numberOfSymbols < 3)
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(numberOfSymbols: 3, action: {})
    }
}
