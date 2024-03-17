//
//  View+Extensions.swift
//  Aura
//
//  Created by Vincent Saluzzo on 29/09/2023.
//
/*
import SwiftUI

extension View {
    func endEditing(_ force: Bool) {
        UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
}*/

import SwiftUI

extension View {
    func endEditing(_ force: Bool) {
        // Tente de trouver une scène de fenêtre active (UIWindowScene)
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene

        // Utilise les fenêtres de la scène trouvée pour arrêter la saisie
        windowScene?.windows.forEach { window in
            window.endEditing(force)
        }
    }
}

