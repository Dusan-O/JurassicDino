//
//  ActionButtonView.swift
//  JurassicDino
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct ActionButtonView: View {
    var buttonTitle: String

    @Binding var action: String
    
    var body: some View {
        Button("Cours") {
            switch buttonTitle {
            case "Cours": action = "Run"
            case "Saute": action = "Jump"
            case "GameOver": action = "Dead"
            default:
                break
            }
        }.buttonStyle(.borderedProminent)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(buttonTitle: "Cours", action: .constant("Run"))
    }
}
