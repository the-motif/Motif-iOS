//
//  AppColor.swift
//  Motif-iOS
//
//  Created by dev on 11/8/26.
//

import UIKit

enum AppColor {
    
    enum Background {
        static let base = UIColor(resource: .Background.base)
    }
    
    enum Border {
        static let subtle = UIColor(resource: .Border.subtle)
        static let strong = UIColor(resource: .Border.strong)
    }
    
    enum Brand {
        static let blue = UIColor(resource: .Brand.blue)
        static let lavender = UIColor(resource: .Brand.lavender)
        static let mint = UIColor(resource: .Brand.mint)
    }
    
    enum Surface {
        static let card = UIColor(resource: .Surface.card)
        static let placeholder = UIColor(resource: .Surface.placeholder)
    }
    
    enum Text {
        static let primary = UIColor(resource: .Text.primary)
        static let secondary = UIColor(resource: .Text.secondary)
        static let tertiary = UIColor(resource: .Text.tertiary)
        static let disabled = UIColor(resource: .Text.disabled)
    }
        
}
