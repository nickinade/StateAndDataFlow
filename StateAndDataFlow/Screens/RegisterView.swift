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
            Color(.white)
                .ignoresSafeArea()
            VStack (spacing: 12) {
                HStack {
                    Spacer()
                        .frame(width: 60)
                    TextField("Type your name", text: $name)
                        .multilineTextAlignment(.center)
                        .onChange(of: name, perform: validateTextField)
                    Text("\(numberOfSymbols)")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(labelColor)
                        .frame(width: 60)
                }
                Button(action: registerUser) {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .disabled(numberOfSymbols < 3)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
    
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
