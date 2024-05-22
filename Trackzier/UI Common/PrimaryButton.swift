//
//  PrimaryButton.swift
//  Trackzier
//
//  Created by Luciano Silva on 21/05/24.
//

import SwiftUI

struct PrimaryButton: View {
    // Variáveis de estado e propriedades da estrutura
    @State var title: String = "Title"
    var onPressed: (()->())? // Um fechamento opcional que será chamado quando o botão for pressionado

    var body: some View {
        // Definição do conteúdo visual da estrutura
        Button {
            // Ação do botão, atualmente vazia
            onPressed?() // Chama a ação onPressed se ela estiver definida
        } label: {
            // Definição do rótulo do botão
            ZStack {
                // Empilha as subviews para formar o botão
                Image("primary_btn")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                    .frame(width: .screenWidth, height: 48)
                
                Text(title) // Texto exibido no botão
                    .font(.customfont(.semibold, fontSize: 14))
                    .padding(.horizontal, 20)
            }
            .foregroundColor(.white)
            .shadow(color: .secondaryC.opacity(0.3), radius: 5, y: 3)
        }
    }
}

// Pré-visualização do botão no Xcode
#Preview {
    PrimaryButton()
}
