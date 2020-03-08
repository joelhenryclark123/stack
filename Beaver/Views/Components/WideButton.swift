//
//  WideButton.swift
//  Stack
//
//  Created by Joel Clark on 3/3/20.
//  Copyright © 2020 MyCo. All rights reserved.
//

import SwiftUI

struct WideButton: View {
    enum Version {
        case white
        case blue
        case green
        
        var backgroundColor: Color {
            switch self {
            case .white:
                return Color.white
            case .blue:
                return Color("backgroundBlue")
            case .green:
                return Color("accentGreenDim")
            }
        }
        
        var fontColor: Color {
            switch self {
            case .white:
                return Color("backgroundBlue")
            case .blue, .green:
                return Color.white
            }
        }
        
        var shadowOption: FocalistShadow.Shadow {
            switch self {
            case .white:
                return .dark
            case .blue:
                return .blueGlow
            case .green:
                return .dark
            }
        }
    }
    
    var version: Version
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .foregroundColor(version.backgroundColor)
                .frame(maxWidth: 480, maxHeight: 40)
                .modifier(FocalistShadow(option: version.shadowOption))
                .overlay(
                    Text(text)
                        .modifier(FocalistFont(font: .mediumText))
                        .foregroundColor(version.fontColor)
            )
        }
    }
    
    init(_ version: Version, _ text: String, action: @escaping () -> Void) {
        self.version = version
        self.text = text
        self.action = action
    }
}

struct WideButton_Previews: PreviewProvider {
    static var previews: some View {
        WideButton(.blue, "Get Started") {
            print("sup")
        }
    }
}