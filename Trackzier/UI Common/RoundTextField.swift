//
//  RoundTextField.swift
//  Trackzier
//
//  Created by Luciano Silva on 25/05/24.
//

import SwiftUI

struct RoundTextField: View {
    
    var title: String = "Title"
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customfont(.regular, fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray50)
                .padding(.bottom, 4)
            
            if isPassword {
                SecureField("", text: $text)
                    .padding(15)
                    .frame(height: 48)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .foregroundColor(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            } else {
                TextField("", text: $text)
                    .padding(15)
                    .keyboardType(keyboardType)
                    .frame(height: 48)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .foregroundColor(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            }
        }
    }
}

struct RoundTextField_Previews: PreviewProvider {
    @State static var text: String = ""

    static var previews: some View {
        RoundTextField(title: "Email", text: $text, keyboardType: .emailAddress, isPassword: false)
    }
}
