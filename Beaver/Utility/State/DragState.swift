//
//  DragState.swift
//  Stack
//
//  Created by Joel Clark on 2/26/20.
//  Copyright © 2020 MyCo. All rights reserved.
//

import Foundation
import SwiftUI

enum DragState {
    case inactive
    case draggingStore(translation: CGSize)
    case draggingActive(dragPoint: CGPoint)
    
    var storeTranslation: CGSize {
        switch self {
        case .draggingStore(translation: let translation):
            return translation
        default:
            return CGSize.zero
        }
    }
}