//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.title)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            TimerButtonView()
                .environmentObject(timer)
            Spacer()
            ActionButton(
                title: "LogOut",
                backgroundColor: .blue,
                action: { user.isRegister = false }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct TimerButtonView: View {
    @EnvironmentObject var timer: TimeCounter
    
    var body: some View {
        ActionButton(
            title: "\(timer.buttonTitle)",
            backgroundColor: .red,
            action: { timer.startTimer() }
        )
    }
}
