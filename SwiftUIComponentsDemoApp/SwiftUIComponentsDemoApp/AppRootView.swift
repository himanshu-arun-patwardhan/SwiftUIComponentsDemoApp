//
//  AppRootView.swift
//  SwiftUIComponentsDemoApp
//
//
//

import SwiftUI
import SwiftUIComponents

struct AppRootView: View {
    /// global overlay view
    @StateObject private var overlayManager = OverlayViewManager.shared
    
    var body: some View {
        ZStack {
            /// global overlay view
            if let overlay = overlayManager.currentOverlay {
                overlay
                    .transition(.opacity)
                    .zIndex(999)
            }
            /// global banner view on top of all views
            BannerView()
        }
    }
}
