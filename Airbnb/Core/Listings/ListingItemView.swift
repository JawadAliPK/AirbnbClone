//
//  ListingItemView.swift
//  Airbnb
//
//  Created by jawad ali on 20/10/2023.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            
            //MARK: Images
            TabView {
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //MARK: Listing Details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")

                    }
                }
                
                Spacer()
                
                //MARK: Rating
                HStack {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
