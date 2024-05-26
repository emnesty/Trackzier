import SwiftUI

struct SecondaryButton: View {
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
                Text(title) // Texto exibido no botão
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(width: width, height: height, alignment: .center)
            .background(Color(red: 0.16, green: 0.16, blue: 0.16))
            .cornerRadius(15)
            .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.05), radius: 1, x: 0, y: 1)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.2, green: 0.22, blue: 0.25))
            )
        }
    }
}

// Pré-visualização do botão no Xcode
struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton(width: 324, height: 48)
    }
}
