//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State private var numberOfSymbols: Int = 0
    @State private var labelColor: Color = .red
    
    var body: some View {
        ZStack {
            // Добавил фон чтобы .onTapGesture срабатывал в любом месте экрана
            Color(.clear)
                .ignoresSafeArea()
            VStack (spacing: 12) {
                HStack {
                    Spacer()
                        .frame(width: 60)
                    NameTextFieldView(name: $name, action: validateTextField)
                    ColoredTextView(numberOfSymbols: numberOfSymbols, color: labelColor)
                }
                RegisterButtonView(numberOfSymbols: numberOfSymbols, action: registerUser)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension RegisterView {
    private func validateTextField(value: String) {
        numberOfSymbols = value.count
        if numberOfSymbols < 3 {
            labelColor = .red
        } else {
            labelColor = .green
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.username = name
            user.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
