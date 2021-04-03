//
//  NameTextFieldView.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 03.04.2021.
//

import SwiftUI

struct NameTextFieldView: View {
    
    @Binding var name: String
    let action: (String) -> Void
    
    var body: some View {
        TextField("Type your name", text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name, perform: action)
    }
}

struct NameTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        NameTextFieldView(name: .constant("name"), action: { _ in })
    }
}
