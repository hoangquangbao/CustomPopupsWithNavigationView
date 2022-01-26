//
//  Extentions.swift
//  CustomPopupsWithNavigationView
//
//  Created by Quang Bao on 26/01/2022.
//

import SwiftUI

// Custom View Property Extentions
extension View{
    
    // MARK: Building a Custom Modifier for Custom Popup navigation View
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 40, show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content) -> some View {
        
        return self
            .overlay {
                
                if show.wrappedValue{
                    
                    // MARK: Geometry Reader for reading Container Frame
                    GeometryReader{ proxy in
                        
                        let size = proxy.size
                        
                        NavigationView{
                            
                            content()
                        }
                        .frame(width: size.width - horizontalPadding, height: size.height / 1.7, alignment: .center)
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                }
            }
    }
}
