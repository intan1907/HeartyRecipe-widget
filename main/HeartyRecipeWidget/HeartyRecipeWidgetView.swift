//
//  HeartyRecipeWidgetView.swift
//  HeartyRecipe
//
//  Created by Intan Nurjanah on 07/06/21.
//

import Foundation
import SwiftUI
import WidgetKit
import HeartyRecipeHelper

struct HeartyRecipeWidgetView: View {
    var recipe: RecipeBaseClass?
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.white)
            VStack(alignment: .leading) {
                Image.loadLocalImage(image: recipe?.imageURL ?? "")
                    .centerCropped()
                    .frame(height: 64)
                    .cornerRadius(10)
                
                Text("\(recipe?.getTime() ?? "") • \(recipe?.serving ?? "1 portion")")
                    .font(.system(size: 10, weight: .regular, design: .default))

                Text(recipe?.name ?? "")
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .multilineTextAlignment(.leading)
            }
            .padding()
        }
    }
}

struct HeartyRecipeWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        HeartyRecipeWidgetView(recipe: recipeData?[7])
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
