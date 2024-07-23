import SwiftUI

//--------------------------------------------------
// Model representing a feature
struct EBayFeature: Identifiable, Hashable {
    let id = UUID() // Unique identifier for each feature
    let imageName: String // System image name
    let name: String // Name of the feature
    let description: String // Description of the feature
}

//--------------------------------------------------
// Sample data with system images
let sampleData = [
    EBayFeature(imageName: "globe",
               name: "Feature 1",
               description: "This is where feature one will go. It will be a feature that is used."),
    EBayFeature(imageName: "book",
               name: "Feature 2",
               description: "This is where feature two will go. It will be a feature that is used."),
    EBayFeature(imageName: "magnifyingglass",
               name: "Search",
               description: "Search your purchases"),
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
            Image(systemName: feature.imageName) // Use system image
                .resizable()
                .frame(width: 100, height: 100) // Set image size
                .clipShape(Circle()) // Make the image circular
                .padding(.trailing, 10) // Add padding to the right of the image
            VStack(alignment: .leading) {
                Text(feature.name) // Display the feature's name
                    .font(.headline)
                Text(feature.description) // Display the feature's description
                    .font(.subheadline)
                    .lineLimit(1) // Limit the description to one line
            } // end VStack
        } // end HStack
    } // end body
}

//--------------------------------------------------
// Main ContentView that contains a list of items
struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(sampleData) { this_feature in
                // Navigation link to DetailView or SearchView
                NavigationLink(value: this_feature) {
                    FeatureRow(feature: this_feature) // Use the custom row view
                }
            }
            .navigationTitle("eBay Tracker") // Title for the navigation bar
            .navigationDestination(for: EBayFeature.self) { feature in
                
                
        //---------------------- add your nagivation feature.name here
                if feature.name == "Search" {
                    SearchView() // Navigate to SearchView if "Search" is clicked
                } else {
                    DetailView(feature: feature) // Navigate to DetailView otherwise
                }
        //----------------------
            } // end navigationDestination
        } // end NavigationStack
    }
}

//--------------------------------------------------
// DetailView that displays details for a selected feature
struct DetailView: View {
    let feature: EBayFeature // Data for the selected feature

    var body: some View {
        VStack {
            Image(systemName: feature.imageName) // Use system image
                .resizable()
                .frame(width: 200, height: 200) // Set image size
                .clipShape(Circle()) // Make the image circular
                .padding()
            Text(feature.name) // Display the feature's name
                .font(.largeTitle)
                .padding(.bottom, 10)
            Text(feature.description) // Display the feature's description
                .font(.body)
                .padding()
            Spacer() // Spacer to push content to the top
        } // end VStack
        .navigationTitle(feature.name) // Title for the navigation bar
    }
}

//------------------------------------------------

#Preview {
    ContentView()
}
