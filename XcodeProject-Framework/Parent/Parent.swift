//
//  Parent.swift
//  Parent
//
//  Created by Anders on 8/18/24.
//

import Foundation

@_exported public import Child

public final class MyParent: NSObject {
    public override init() { }
    
    public let child = MyChild()
    
    public func doThing() {
        print("I'm from parent land. Checking child...")
        child.doThing()
    }
}
