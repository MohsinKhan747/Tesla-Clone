//
//   CommonComponents.swift
//  TeslaApp
//
//  Created by Mohsin Khan on 30/05/2025.
//

import Foundation
import SwiftUI


struct GeneralButton: View{
    var icon: String

    var body: some View{
        Image(systemName: icon)
            .imageScale(.large)
            .frame(width: 44, height: 44)
            .background(Color.white.opacity(0.05))
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(Color.white.opacity(0.1),style: StrokeStyle(lineWidth: 0.5))
            }
    }
}

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth:.infinity)
            .frame(height: 0.25)
            .foregroundColor(Color.white.opacity(0.3))
    }
}


struct ActionButton: View {
    
    var item: ActionItem
    
    var body: some View{
        VStack{
            GeneralButton(icon:item.icon)
            Text(item.text)
                .frame(width: 72)
                .font(.system(size:12,
                              weight:.semibold,design: .default))
                .multilineTextAlignment(.center)
        }
    }
}

struct ActionItem: Hashable{
    var icon: String
    var text: String
}

struct FullButton: View {
    
    var text: String
    var icon: String = " "
    
    var body: some View {
        if icon.isEmpty{
            textButton
        }else{
            iconButton
        }
    }
    
    var iconButton: some View{
        Label(text, systemImage: icon)
            .font(.system(size:16,weight: .medium,design: .default))
            .frame(maxWidth:.infinity)
            .padding()
            .background(Color.white.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 14, style: .continuous).stroke(Color.white.opacity(0.1)))
    }
    
    var textButton: some View{
        Text(text)
            .font(.system(size:16,weight: .medium,design: .default))
            .frame(maxWidth:.infinity)
            .padding()
            .background(Color.white.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 14, style: .continuous).stroke(Color.white.opacity(0.1)))
    }
}
