//
//  PrimaryButton.swift
//  Trackzier
//
//  Created by Luciano Silva on 21/05/24.
//

import SwiftUI

struct PrimaryButton: View {
    // Variáveis de estado e propriedades da estrutura
    var title: String = "Title" // Apenas uma propriedade normal
    var width: CGFloat = 324 // Propriedade para a largura do botão
    var height: CGFloat = 48 // Propriedade para a altura do botão
    var onPressed: (() -> Void)? // Um fechamento opcional que será chamado quando o botão for pressionado

    var body: some View {
        // Definição do conteúdo visual da estrutura
        Button(action: {
            onPressed?() // Chama a ação onPressed se ela estiver definida
        }) {
            HStack(alignment: .center, spacing: 6) {
                Text(title)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(width: width, height: height, alignment: .center)
            .background(Color(red: 0.25, green: 0.46, blue: 1))
            .cornerRadius(30)
            .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.05), radius: 1, x: 0, y: 1)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.4, green: 0.57, blue: 1), lineWidth: 1)
            )
            .foregroundColor(.white)
            .shadow(color: Color.secondary.opacity(0.3), radius: 5, y: 3)
        }
    }
}

// Pré-visualização do botão no Xcode
struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(width: 324, height: 48)
    }
}
