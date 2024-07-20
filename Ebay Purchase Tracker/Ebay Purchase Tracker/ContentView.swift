//
//  ContentView.swift
//  Ebay Purchase Tracker
//
//  Created by Avery Robbins on 7/20/24.
//

import SwiftUI


//--------------------------------------------------
// Model representing a feature
struct EBayFeature: Identifiable, Hashable {
    let id = UUID() // Unique identifier for each feature
    let imageName: String // Name of the image in the asset catalog
    let name: String // Name of the feature
    let description: String // Idk I needed something to put here
}


struct APIKey {
    static var appID = "AveryRob-COP4655P-SBX-5c201f31e-6da3d0cb"
    static var devID = "086b1e9f-ea67-46e2-9cfa-ce348317572d"
    static var certID = "SBX-c201f31e310b-9c2b-4e89-bfff-90e3"
    
}
//--------------------------------------------------
// Sample data
    let sampleData = [
        EBayFeature(imageName: "globe",
               name: "Feature 1",
               description: "This is where feature one will go. It will be a feature that is used."),
        EBayFeature(imageName: "book",
               name: "Feature 2",
               description: "This is where feature two will go. It will be a feature that is used."),
        EBayFeature(imageName: "mailbox",
               name: "Feature 3",
               description: "This is where feature three will go. It will be a feature that is used."),
        EBayFeature(imageName: "dog",
               name: "Feature 4",
               description: "This is where feature four will go. It will be a feature that is used."),
        EBayFeature(imageName: "mailbox",
               name: "Feature 5",
               description: "This is where feature five will go. It will be a feature that is used.")
    ]
    
//--------------------------------------------------
// Custom list view cell
struct FeatureRow: View {
    let feature: EBayFeature // Data for a single feature

    var body: some View {
        HStack {
            Image(feature.imageName) // Load the image from assets
                .resizable()
                .frame(width: 100, height: 100) // Set image size
                .clipShape(Circle()) // Make the image circular
                .padding(.trailing, 10) // Add padding to the right of the image
            VStack(alignment: .leading) {
                Text(feature.name) // Display the feature's name
                    .font(.headline)
                Text(feature.description) // Display the person's description
                    .font(.subheadline)
                    .lineLimit(1) // Limit the description to one line
            }// end VStack
        }// HStack
    }// end body
}


//--------------------------------------------------
// Main ContentView that contains a list of items
struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(sampleData) { this_feature in
                // Navigation link to DetailView
                NavigationLink(value: this_feature) {
                    FeatureRow(feature: this_feature) // Use the custom row view
                }
            }
            .navigationTitle("eBay Tracker") // Title for the navigation bar
            .navigationDestination(for: EBayFeature.self) { feature in
                DetailView(feature: feature) // Destination view
            }// end navigationDestination
            
        }// end NavigationStack
    }
}

//--------------------------------------------------
// DetailView that displays details for a selected feature
struct DetailView: View {
    let feature: EBayFeature // Data for the selected feature

    var body: some View {
        VStack {
            Image(feature.imageName) // Load the image from assets
                .resizable()
                .frame(width: 200, height: 200) // Set image size
                .clipShape(Circle()) // Make the image circular
                .padding()
            Text(feature.name) // Display the person's name
                .font(.largeTitle)
                .padding(.bottom, 10)
            Text(feature.description) // Display the person's description
                .font(.body)
                .padding()
            Spacer() // Spacer to push content to the top
        }// end VStack
        .navigationTitle(feature.name) // Title for the navigation bar
    }
}

//------------------------------------------------


#Preview {
    ContentView()
}
