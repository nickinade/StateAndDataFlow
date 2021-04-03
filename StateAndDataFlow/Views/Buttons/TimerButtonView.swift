//
//  TimerButtonView.swift
//  StateAndDataFlow
//
//  Created by Nikita Benin on 01.04.2021.
//

import SwiftUI

struct TimerButtonView: View {
    @EnvironmentObject var timer: TimeCounter
    
    var body: some View {
        ActionButtonView(title: "\(timer.buttonTitle)", backgroundColor: .red, action: { timer.startTimer() })
    }
}

struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView()
    }
}
