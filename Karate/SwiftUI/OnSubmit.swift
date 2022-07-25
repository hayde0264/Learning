//
//  OnSubmit.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

enum OnSubmitData {
    enum stringKeys: String {
        case insertTitle = "Insert Title"
        case buttonSave = "Save"
    }
    enum floatKeys: CGFloat {
        case vstackSpacing = 15
    }
    enum intKeys: Int {
        case linelimit = 1
    }
}
protocol OnSubmitHelper {
    var insertTitleText: String { get }
    var buttonSaveText: String { get }
    var vStackSpacing: CGFloat { get }
    var lineLimit: Int { get }
}
extension OnSubmitHelper {
    var insertTitleText: String {
        OnSubmitData.stringKeys.insertTitle.rawValue
    }
    var buttonSaveText: String {
        OnSubmitData.stringKeys.buttonSave.rawValue
    }
    var vStackSpacing: CGFloat {
        OnSubmitData.floatKeys.vstackSpacing.rawValue
    }
    var lineLimit: Int {
        OnSubmitData.intKeys.linelimit.rawValue
    }
}


struct OnSubmit: View, OnSubmitHelper {
   
    @State private var title: String = "Default"
    @State private var titleInput: String = ""
    
    var body: some View {
        VStack(spacing: vStackSpacing) {
            Text(title)
                .lineLimit(lineLimit)
                .padding()
                .background(.yellow)
            TextField(insertTitleText, text: $titleInput)
                .textFieldStyle(.roundedBorder)
                .submitLabel(.continue)
                .onSubmit {
                    assignTitle()
                }
            HStack {
                Spacer()
                Button(buttonSaveText) {
                    assignTitle()
                }
            }
            .padding()
            Spacer()
        }
    }
 private func assignTitle() {
        title = titleInput
        titleInput = ""
    }
    
}

struct OnSubmit_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmit()
    }
}
