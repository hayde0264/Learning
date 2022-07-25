//
//  Observable Obj.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

enum ObservableObjectData {
    enum stringKeys: String {
        case textFieldString = "Insert Title"
        case saveString = "Save"
    }
    enum floatKeys: CGFloat {
        case mySpacing = 8
        case myPadding = 10
    }
}
protocol ObservableObjectHelper {
    var vStackSpacing: CGFloat { get }
    var vStackPadding: CGFloat { get }
    var textFieldText: String { get }
    var saveText: String { get }
}
extension ObservableObjectHelper {
    var vStackSpacing: CGFloat {
        ObservableObjectData.floatKeys.mySpacing.rawValue
    }
    var vStackPadding: CGFloat {
        ObservableObjectData.floatKeys.myPadding.rawValue
    }
    var textFieldText: String {
        ObservableObjectData.stringKeys.textFieldString.rawValue
    }
    var saveText: String {
        ObservableObjectData.stringKeys.saveString.rawValue
    }
}

struct Observable_Obj: View, ObservableObjectHelper {
    
    @StateObject private var appData = ApplicationData()
    
    var body: some View {
        
        VStack(spacing: vStackSpacing) {
            Text(appData.title)
                .padding(vStackPadding)
            TextField(textFieldText, text: $appData.titleInput)
                .textFieldStyle(.roundedBorder)
            Button {
                appData.title = appData.titleInput
            } label: {
                Text(saveText)
            }
            Spacer()
        }.padding()
    }
    
    
}

struct Observable_Obj_Previews: PreviewProvider {
    static var previews: some View {
        Observable_Obj()
    }
}


class ApplicationData: ObservableObject {
    @Published var title: String = "Default Title"
    @Published var titleInput: String = ""
}
