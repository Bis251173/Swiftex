//
//  UIAlertController+Extension.swift
//  Swiftex
//
//  Created by Vitaliy Kuzmenko on 19/06/2017.
//  Copyright © 2017 KuzmenkoFamily. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    public func addAction(title: String, style: UIAlertActionStyle = .default, enabled: Bool = true, handler: ((UIAlertAction) -> Void)?) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        if enabled {
            self.addAction(action)
        }
    }
    
    public func addCancel(_ handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: handler)
        self.addAction(action)
    }
    
    public func addDismiss(_ handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: NSLocalizedString("Dismiss", comment: ""), style: .cancel, handler: handler)
        self.addAction(action)
    }
    
}
