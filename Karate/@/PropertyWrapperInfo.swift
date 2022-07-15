//
//  Contents.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/13/22.
//

import Foundation
import SwiftUI
import UIKit


                                                    //MARK: Background
                                                    /* Property wrappers allow you to modify the behavior of property
                                                       declarations. You can use property wrappers for properties of classes
                                                       and structs, local variables and in function arguements.
                                                     
                                                       For each property marked with a property wrapper, the compiler
                                                       generates an actual stored property prefixed with an underscore. When
                                                       defining a property wrapper, you have to provide at least a getter for
                                                       the wrapped value. The setter is optional, and depending on weather
                                                       or not it's present, a setter is generated for the computer property as
                                                       well.
                                                     */
//MARK: @Binding
struct ExampleBinding: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        if isOn {
            //........
        }
    }
}

//MARK: @Invalidating
class ExampleInvalidating: UIView {
    
    @Invalidating(.layout) var pageSize: CGSize = CGSize(width: 800, height: 600)

/* The Invalidating property wrapper
   stores the size internally, and
   whenver it changes, it calls setNeedsLayout
   on your behalf. Using this property wrapper
   can help cleat up your code*/
}

//MARK: Property Wrappers Without Property Wrappers
struct ExampleToggle: View {
    
    var isOn: Binding<Bool>
    
    var body: some View {
        if isOn.wrappedValue {
            //.......
        }
    }
}


                                                        
            
                                                    //MARK: Property Rappers & The Compiler
                                                    /* In the example below, since Box is a class, the generated setter is
                                                       NONmutating. Like the setter, the init(wrappedValue: ) is also an
                                                       optional, but because we provide it in Box, we can initialize our
                                                       Box<Bool> with a Bool.
                                                     
                                                       This Box type is useful when you need a mutable variable that's shared
                                                       (you can pass the same instance of a Box to multiple places) or when
                                                       you need a mutable variable in a scope that doesn't allow mutation. For
                                                       example, you can modify the value inside a Box even when you're insdie a
                                                       non-mutating method. */
@propertyWrapper
class Box<A> {
    var wrappedValue: A
    
    init(wrappedValue: A) {
        self.wrappedValue = wrappedValue
    }
}
//MARK: Can be used with
struct Checkbox : View {
    @Box var isOn: Bool = false
    @Box var string: String = ""
    
    var body: some View {
        
        Text(string)
        
    }
    func didTap() {
        isOn.toggle()
    }
}

