//
//  MultiCastDelegate.swift
//  MulticastDelegate
//
//  Created by linto jacob on 25/02/21.
//

import Foundation

public class MultiCastDelegate<T> {
    
    private var delegates = [WeakReference]()
    private var queue = DispatchQueue.init(label: "com.linto.multi")
    
    public init(){
        
    }
    
    public func add(delegate: T){
        queue.sync {
        let weakReference = WeakReference.init(with: delegate as AnyObject)
        if !delegates.contains(weakReference){
            delegates.append(weakReference)
        }
        }
    }
    
    public func invoke(closure: (T) -> Void){
        queue.sync {
            
        
        delegates =  delegates.filter {
            guard let value = $0.value as? T else{
                return false
            }
            
            closure(value)
            return true
            
        }
        }
    }
    
    public func remove(delegate: T){
        queue.sync {
        let weakReference = WeakReference.init(with: delegate as AnyObject)
        delegates.removeAll() { $0 == weakReference
            
        }
        }
    }
    
}
