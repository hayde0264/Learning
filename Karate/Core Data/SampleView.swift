//
//  SampleView.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import SwiftUI

struct SampleView: View {
    //MARK: Inject Managed Object Context
    let persistenceContoller = Persistence.shared
    
    
    var body: some View {
        VStack {
           Text("")
        }
        .environment(\.managedObjectContext, persistenceContoller.container.viewContext)
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
