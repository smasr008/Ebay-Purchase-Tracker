# Ebay-Purchase-Tracker

## Overview
Ebay Purchase Tracker is an app that allows users to log in with their eBay account and view their recent purchases, get detailed information on each item, visualize their purchase history, manage a wishlist, receive recommendations, and get notified about important updates.

## Key Features

### User Authentication
- **OAuth Login**: Allow users to log in with their eBay account using OAuth.

### Recent Purchases Display
- **Fetch Purchases**: Fetch and display a list of recently purchased items from the eBay API.
- **Purchase Details**: Show details such as item name, image, purchase date, price, and seller information.

### Detailed Item View
- **Item Details**: Tap on an item to see more detailed information including description, shipping status, tracking information, and seller contact details.

### Search and Filter
- **Search**: Provide search functionality to find specific purchases.
- **Filters**: Filters to sort purchases by date, price, category, or seller.

### Purchase History Graphs
- **Visualize History**: Visualize purchase history over time with graphs and charts.
- **Spending Trends**: Show spending trends and categories where most money is spent.

### Wishlist Integration
- **Add to Wishlist**: Allow users to add items to a wishlist directly from their purchase history.
- **Wishlist Notifications**: Notify users when items from their wishlist go on sale.

### Recommendations
- **Related Items**: Display recommendations based on recent purchases using eBay’s recommendation APIs.
- **Complementary Items**: Show related or complementary items.

### Push Notifications
- **Shipping Updates**: Notify users about shipping updates.
- **Price Drops**: Notify users about price drops on similar items.
- **Seller Promotions**: Notify users about seller promotions.

## Technical Implementation

### eBay API Integration
- **APIs Used**: Use eBay’s Finding API, Shopping API, and Merchandising API to fetch purchase data and recommendations.
- **OAuth**: Handle OAuth for user authentication.

### User Interface
- **Framework**: SwiftUI for building a clean and responsive user interface.
- **Reactive Programming**: Combine framework for reactive programming to handle data updates smoothly.

### Data Handling
- **Local Storage**: Use Core Data or Realm for local storage of user data and purchase history.
- **Synchronization**: Ensure data is synchronized with eBay in real-time.

### Network Requests
- **HTTP Requests**: Use URLSession or Alamofire for making API requests.
- **Response Handling**: Handle response parsing and error management.

### Notifications
- **Framework**: Use UserNotifications framework for handling push notifications.

## Getting Started

1. **Clone the Repository**: Clone the repository to your local machine.
2. **Install Dependencies**: Run `pod install` to install necessary dependencies.
3. **Setup API Keys**: Add your eBay API keys and OAuth credentials to the project.
4. **Build and Run**: Build and run the project on your iOS device or simulator.

## Contributing

We welcome contributions! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

## Contact



---

Thank you for using eBay Purchase Tracker! We hope it enhances your eBay shopping experience.
