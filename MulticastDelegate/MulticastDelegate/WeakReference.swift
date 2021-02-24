//
//  WeakReference.swift
//  MulticastDelegate
//
//  Created by linto jacob on 25/02/21.
//

import Foundation

class WeakReference: Equatable {
    
    weak var value: AnyObject?
    
    init(with value: AnyObject) {
        self.value = value
    }
    
    static func == (lhs: WeakReference, rhs: WeakReference) -> Bool {
        return lhs.value === rhs.value
    }
}
