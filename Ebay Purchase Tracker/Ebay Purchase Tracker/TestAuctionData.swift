import Foundation

// auction model
struct Auction: Identifiable, Hashable {
    let id = UUID()
    let price: Float
    let itemName: String
    let sellerName: String
    let date: String
    let hasArrived: Bool
    let descriptions: String
    
    init(price: Float, itemName: String, sellerName: String, date: String, hasArrived: Bool, descriptions: String) {
        self.price = price
        self.itemName = itemName
        self.sellerName = sellerName
        self.date = date
        self.hasArrived = hasArrived
        self.descriptions = descriptions
    }
}

// Class to provide test data for auctions
class TestAuctionData {
    
    // Function to generate test auction items
    static func generateTestAuctions() -> [Auction] {
        return [
            Auction(price: 100.0, itemName: "Vintage Guitar", sellerName: "crimson_horizon", date: "2024-07-15", hasArrived: true, descriptions: "A classic vintage electric guitar from the 70s."),
            Auction(price: 200.0, itemName: "Luxury Watch", sellerName: "serene_vibes", date: "2024-07-14", hasArrived: false, descriptions: "A high-end watch with gold plating and diamond accents."),
            Auction(price: 75.0, itemName: "Antique Vase", sellerName: "blue_sky_74", date: "2024-07-13", hasArrived: true, descriptions: "A delicate porcelain vase from the 18th century."),
            Auction(price: 50.0, itemName: "Gaming Console", sellerName: "electric_dreams", date: "2024-07-12", hasArrived: false, descriptions: "A next-gen gaming console with additional accessories."),
            Auction(price: 30.0, itemName: "Cookbook", sellerName: "urban_trail", date: "2024-07-11", hasArrived: true, descriptions: "A collection of gourmet recipes from famous chefs."),
            Auction(price: 150.0, itemName: "Vintage Camera", sellerName: "crimson_horizon", date: "2024-07-10", hasArrived: true, descriptions: "A rare film camera in mint condition."),
            Auction(price: 60.0, itemName: "Handcrafted Jewelry", sellerName: "ancient_forest", date: "2024-07-09", hasArrived: false, descriptions: "Handmade necklace and bracelet set."),
            Auction(price: 40.0, itemName: "Antique Book", sellerName: "dusty_shelves", date: "2024-07-08", hasArrived: true, descriptions: "A first edition classic novel."),
            Auction(price: 120.0, itemName: "Leather Jacket", sellerName: "retro_star", date: "2024-07-07", hasArrived: false, descriptions: "High-quality leather jacket with intricate stitching."),
            Auction(price: 90.0, itemName: "Modern Art Painting", sellerName: "techno_vision", date: "2024-07-06", hasArrived: true, descriptions: "An abstract painting by a contemporary artist."),
            Auction(price: 25.0, itemName: "Vinyl Records", sellerName: "vinyl_junkie", date: "2024-07-05", hasArrived: true, descriptions: "A collection of classic vinyl records."),
            Auction(price: 200.0, itemName: "Designer Handbag", sellerName: "style_icon", date: "2024-07-04", hasArrived: false, descriptions: "Authentic designer handbag with original tags."),
            Auction(price: 15.0, itemName: "Board Game", sellerName: "epic_night", date: "2024-07-03", hasArrived: true, descriptions: "A fun family board game."),
            Auction(price: 80.0, itemName: "Fishing Rod", sellerName: "blue_ocean", date: "2024-07-02", hasArrived: false, descriptions: "High-quality fishing rod for enthusiasts."),
            Auction(price: 110.0, itemName: "Electric Scooter", sellerName: "urban_trail", date: "2024-07-01", hasArrived: true, descriptions: "Eco-friendly electric scooter in excellent condition."),
            Auction(price: 35.0, itemName: "Handmade Pottery", sellerName: "ancient_forest", date: "2024-06-30", hasArrived: true, descriptions: "Beautiful handcrafted pottery pieces."),
            Auction(price: 45.0, itemName: "Vintage Clock", sellerName: "dusty_shelves", date: "2024-06-29", hasArrived: false, descriptions: "Antique clock with intricate design."),
            Auction(price: 90.0, itemName: "Outdoor Grill", sellerName: "grill_master", date: "2024-06-28", hasArrived: true, descriptions: "A spacious outdoor grill perfect for summer parties."),
            Auction(price: 70.0, itemName: "Art Deco Lamp", sellerName: "blue_sky_74", date: "2024-06-27", hasArrived: false, descriptions: "A stunning Art Deco lamp with original shade."),
            Auction(price: 55.0, itemName: "Vintage Record Player", sellerName: "crimson_horizon", date: "2024-06-26", hasArrived: true, descriptions: "Classic record player in working condition."),
            Auction(price: 65.0, itemName: "Sports Memorabilia", sellerName: "epic_night", date: "2024-06-25", hasArrived: false, descriptions: "Signed items from famous athletes."),
            Auction(price: 80.0, itemName: "Electric Bike", sellerName: "techno_vision", date: "2024-06-24", hasArrived: true, descriptions: "Electric bike with battery and charger included."),
            Auction(price: 30.0, itemName: "Wine Collection", sellerName: "vinyl_junkie", date: "2024-06-23", hasArrived: true, descriptions: "A selection of fine wines from various regions."),
            Auction(price: 70.0, itemName: "Vintage Jewelry Box", sellerName: "style_icon", date: "2024-06-22", hasArrived: false, descriptions: "Antique jewelry box with ornate details."),
            Auction(price: 120.0, itemName: "Handmade Quilt", sellerName: "blue_ocean", date: "2024-06-21", hasArrived: true, descriptions: "Beautiful handmade quilt with intricate patterns."),
            Auction(price: 85.0, itemName: "Camera Lens", sellerName: "photo_buff", date: "2024-06-20", hasArrived: false, descriptions: "High-quality lens for professional photography."),
            Auction(price: 40.0, itemName: "Craft Beer Set", sellerName: "beer_enthusiast", date: "2024-06-19", hasArrived: true, descriptions: "A set of craft beers from local breweries."),
            Auction(price: 55.0, itemName: "Decorative Rugs", sellerName: "rug_fan", date: "2024-06-18", hasArrived: true, descriptions: "Handwoven rugs with unique designs."),
            Auction(price: 75.0, itemName: "Antique Desk", sellerName: "furniture_lover", date: "2024-06-17", hasArrived: false, descriptions: "Classic wooden desk with elegant details."),
            Auction(price: 100.0, itemName: "Vintage Typewriter", sellerName: "typewriter_collector", date: "2024-06-16", hasArrived: true, descriptions: "A vintage typewriter in working order."),
            Auction(price: 60.0, itemName: "Art Prints", sellerName: "art_buff", date: "2024-06-15", hasArrived: false, descriptions: "A collection of prints from various artists."),
            Auction(price: 90.0, itemName: "High-End Blender", sellerName: "kitchen_addict", date: "2024-06-14", hasArrived: true, descriptions: "Powerful blender for making smoothies and soups."),
            Auction(price: 50.0, itemName: "Handmade Candles", sellerName: "candle_lover", date: "2024-06-13", hasArrived: true, descriptions: "A set of beautifully handcrafted candles."),
            Auction(price: 75.0, itemName: "Designer Sunglasses", sellerName: "fashion_addict", date: "2024-06-12", hasArrived: false, descriptions: "Stylish sunglasses from a renowned designer."),
            Auction(price: 95.0, itemName: "Smart Home Devices", sellerName: "tech_wizard", date: "2024-06-11", hasArrived: true, descriptions: "Latest smart home gadgets and accessories."),
            Auction(price: 40.0, itemName: "Vintage Postcards", sellerName: "postcard_enthusiast", date: "2024-06-10", hasArrived: true, descriptions: "A collection of vintage postcards from around the world."),
            Auction(price: 30.0, itemName: "Retro Diner Sign", sellerName: "retro_fan", date: "2024-06-09", hasArrived: false, descriptions: "Authentic retro diner sign with neon lights."),
            Auction(price: 50.0, itemName: "Handmade Pottery", sellerName: "craftsman_82", date: "2024-06-08", hasArrived: true, descriptions: "A selection of unique handmade pottery pieces."),
            Auction(price: 100.0, itemName: "Classic Motorbike", sellerName: "motorbike_fan", date: "2024-06-07", hasArrived: false, descriptions: "A restored classic motorbike with original parts."),
            Auction(price: 85.0, itemName: "Vintage Movie Posters", sellerName: "movie_buff", date: "2024-06-06", hasArrived: true, descriptions: "A collection of original vintage movie posters."),
            Auction(price: 70.0, itemName: "Retro Cassette Player", sellerName: "music_fanatic", date: "2024-06-05", hasArrived: false, descriptions: "A classic cassette player for vintage music lovers."),
            Auction(price: 80.0, itemName: "Vintage Luggage", sellerName: "travel_enthusiast", date: "2024-06-04", hasArrived: true, descriptions: "Stylish vintage luggage with leather straps."),
            Auction(price: 95.0, itemName: "Designer Shoes", sellerName: "style_expert", date: "2024-06-03", hasArrived: true, descriptions: "Elegant designer shoes in pristine condition."),
            Auction(price: 45.0, itemName: "Antique Map", sellerName: "history_buff", date: "2024-06-02", hasArrived: true, descriptions: "A beautifully detailed antique map."),
            Auction(price: 85.0, itemName: "Vintage Telescope", sellerName: "star_gazer", date: "2024-06-01", hasArrived: false, descriptions: "An antique telescope perfect for stargazing."),
            Auction(price: 70.0, itemName: "Crafted Wooden Toys", sellerName: "toy_maker", date: "2024-05-31", hasArrived: true, descriptions: "Handcrafted wooden toys with intricate designs."),
            Auction(price: 50.0, itemName: "Artisan Chocolates", sellerName: "sweet_tooth", date: "2024-05-30", hasArrived: true, descriptions: "A selection of gourmet artisan chocolates."),
            Auction(price: 65.0, itemName: "Classic Record Albums", sellerName: "vinyl_collector", date: "2024-05-29", hasArrived: false, descriptions: "A collection of classic record albums from various artists."),
            Auction(price: 90.0, itemName: "Luxury Bed Linen", sellerName: "home_decorator", date: "2024-05-28", hasArrived: true, descriptions: "High-quality bed linen with a luxurious feel."),
            Auction(price: 55.0, itemName: "Rare Books Collection", sellerName: "book_lover", date: "2024-05-27", hasArrived: true, descriptions: "A set of rare and collectible books."),
            Auction(price: 80.0, itemName: "Vintage Typewriter", sellerName: "typewriter_collector", date: "2024-05-26", hasArrived: false, descriptions: "An old typewriter in good working condition."),
            Auction(price: 35.0, itemName: "Handcrafted Pottery", sellerName: "crafty_arts", date: "2024-05-25", hasArrived: true, descriptions: "Unique handcrafted pottery with artistic designs."),
            Auction(price: 70.0, itemName: "Luxury Pen", sellerName: "writing_enthusiast", date: "2024-05-24", hasArrived: false, descriptions: "A high-end pen with gold accents."),
            Auction(price: 60.0, itemName: "Retro Camera", sellerName: "photo_junkie", date: "2024-05-23", hasArrived: true, descriptions: "A retro camera with a classic design."),
            Auction(price: 90.0, itemName: "Outdoor Lounge Chair", sellerName: "garden_lover", date: "2024-05-22", hasArrived: true, descriptions: "Comfortable lounge chair for outdoor relaxation."),
            Auction(price: 45.0, itemName: "Handcrafted Quilt", sellerName: "quilt_master", date: "2024-05-21", hasArrived: false, descriptions: "Beautiful quilt with intricate handcrafted patterns."),
            Auction(price: 100.0, itemName: "Rare Collectible Figures", sellerName: "collector_101", date: "2024-05-20", hasArrived: true, descriptions: "A set of rare collectible figures."),
            Auction(price: 55.0, itemName: "Artisan Jewelry", sellerName: "gemstone_fan", date: "2024-05-19", hasArrived: true, descriptions: "Handmade jewelry with unique gemstones."),
            Auction(price: 30.0, itemName: "Vintage Album Covers", sellerName: "music_lover", date: "2024-05-18", hasArrived: true, descriptions: "Collection of vintage album covers."),
            Auction(price: 70.0, itemName: "High-Quality Knife Set", sellerName: "kitchen_pro", date: "2024-05-17", hasArrived: false, descriptions: "A set of premium kitchen knives."),
            Auction(price: 85.0, itemName: "Antique Musical Instruments", sellerName: "music_historian", date: "2024-05-16", hasArrived: true, descriptions: "A collection of antique musical instruments."),
            Auction(price: 40.0, itemName: "Vintage Record Player", sellerName: "retro_fan", date: "2024-05-15", hasArrived: true, descriptions: "Vintage record player with all accessories."),
            Auction(price: 60.0, itemName: "Classic Wall Art", sellerName: "art_enthusiast", date: "2024-05-14", hasArrived: false, descriptions: "Timeless wall art with classic appeal."),
            Auction(price: 75.0, itemName: "Luxury Bath Towels", sellerName: "home_comfort", date: "2024-05-13", hasArrived: true, descriptions: "Soft and luxurious bath towels."),
            Auction(price: 50.0, itemName: "Crafted Wooden Utensils", sellerName: "handmade_tools", date: "2024-05-12", hasArrived: true, descriptions: "Handcrafted wooden utensils for the kitchen."),
            Auction(price: 90.0, itemName: "Smart Home Hub", sellerName: "tech_guru", date: "2024-05-11", hasArrived: true, descriptions: "Advanced smart home hub with multiple functions."),
            Auction(price: 40.0, itemName: "Rare Comic Books", sellerName: "comic_fan", date: "2024-05-10", hasArrived: true, descriptions: "A set of rare and collectible comic books."),
            Auction(price: 85.0, itemName: "Luxury Bedspread", sellerName: "home_decorator", date: "2024-05-09", hasArrived: false, descriptions: "Elegant bedspread with premium fabric."),
            Auction(price: 55.0, itemName: "Handcrafted Wood Carvings", sellerName: "wood_craftsman", date: "2024-05-08", hasArrived: true, descriptions: "Intricately carved wooden figurines."),
            Auction(price: 65.0, itemName: "Retro Games Console", sellerName: "gaming_expert", date: "2024-05-07", hasArrived: false, descriptions: "A retro gaming console with classic games."),
            Auction(price: 30.0, itemName: "Vintage Tea Set", sellerName: "teapot_lover", date: "2024-05-06", hasArrived: true, descriptions: "A beautiful vintage tea set."),
            Auction(price: 75.0, itemName: "Handmade Wooden Shelf", sellerName: "crafty_arts", date: "2024-05-05", hasArrived: true, descriptions: "Unique handmade wooden shelf for display."),
            Auction(price: 100.0, itemName: "Designer Leather Bag", sellerName: "fashionista", date: "2024-05-04", hasArrived: false, descriptions: "High-quality designer leather bag."),
            Auction(price: 60.0, itemName: "Luxury Throw Blanket", sellerName: "home_comfort", date: "2024-05-03", hasArrived: true, descriptions: "Soft and warm throw blanket."),
            Auction(price: 90.0, itemName: "Vintage Vinyl Records", sellerName: "music_lover", date: "2024-05-02", hasArrived: false, descriptions: "Collection of classic vintage vinyl records."),
            Auction(price: 50.0, itemName: "Artisan Pottery", sellerName: "ceramic_artist", date: "2024-05-01", hasArrived: true, descriptions: "Handcrafted pottery with artistic designs."),
            Auction(price: 80.0, itemName: "Luxury Bedding Set", sellerName: "home_decorator", date: "2024-04-30", hasArrived: true, descriptions: "Luxurious bedding set with high-quality fabric."),
            Auction(price: 45.0, itemName: "Vintage Glassware", sellerName: "glass_collector", date: "2024-04-29", hasArrived: true, descriptions: "A set of beautiful vintage glassware."),
            Auction(price: 70.0, itemName: "Antique Jewelry Box", sellerName: "jewelry_lover", date: "2024-04-28", hasArrived: false, descriptions: "Ornate antique jewelry box with intricate designs."),
            Auction(price: 65.0, itemName: "Craft Beer Sampler", sellerName: "beer_expert", date: "2024-04-27", hasArrived: true, descriptions: "Sampler pack of craft beers from local breweries."),
            Auction(price: 85.0, itemName: "Designer Suit", sellerName: "fashion_icon", date: "2024-04-26", hasArrived: true, descriptions: "High-end designer suit with a perfect fit."),
            Auction(price: 35.0, itemName: "Vintage Maps", sellerName: "history_fan", date: "2024-04-25", hasArrived: true, descriptions: "A collection of antique maps from various periods."),
            Auction(price: 75.0, itemName: "Retro Record Player", sellerName: "music_buff", date: "2024-04-24", hasArrived: false, descriptions: "Classic record player with all original parts."),
            Auction(price: 50.0, itemName: "Handmade Candles", sellerName: "candle_maker", date: "2024-04-23", hasArrived: true, descriptions: "A set of artisanal candles with unique scents."),
            Auction(price: 90.0, itemName: "Luxury Spa Set", sellerName: "wellness_expert", date: "2024-04-22", hasArrived: true, descriptions: "Premium spa set for a relaxing experience."),
            Auction(price: 40.0, itemName: "Rare Stamps Collection", sellerName: "stamp_collector", date: "2024-04-21", hasArrived: true, descriptions: "A collection of rare and valuable stamps."),
            Auction(price: 60.0, itemName: "Vintage Camera", sellerName: "photo_enthusiast", date: "2024-04-20", hasArrived: false, descriptions: "Classic vintage camera with a unique design."),
            Auction(price: 85.0, itemName: "Luxury Watch", sellerName: "watch_collector", date: "2024-04-19", hasArrived: true, descriptions: "High-end luxury watch with elegant features."),
            Auction(price: 50.0, itemName: "Artisan Wine", sellerName: "wine_connoisseur", date: "2024-04-18", hasArrived: true, descriptions: "A bottle of handcrafted wine from a local vineyard."),
            Auction(price: 30.0, itemName: "Vintage Teapot", sellerName: "teapot_collector", date: "2024-04-17", hasArrived: true, descriptions: "An antique teapot with a beautiful design."),
            Auction(price: 70.0, itemName: "Crafted Wooden Toys", sellerName: "wood_toy_maker", date: "2024-04-16", hasArrived: false, descriptions: "Handcrafted wooden toys for children."),
            Auction(price: 55.0, itemName: "Vintage Record Albums", sellerName: "music_enthusiast", date: "2024-04-15", hasArrived: true, descriptions: "A set of classic vintage record albums."),
            Auction(price: 60.0, itemName: "Handmade Quilts", sellerName: "quilt_artist", date: "2024-04-14", hasArrived: true, descriptions: "Beautiful handmade quilts with intricate patterns."),
            Auction(price: 45.0, itemName: "Antique Books", sellerName: "book_collector", date: "2024-04-13", hasArrived: false, descriptions: "A collection of rare and antique books."),
            Auction(price: 75.0, itemName: "Luxury Bed Linen", sellerName: "home_style", date: "2024-04-12", hasArrived: true, descriptions: "High-quality bed linen with elegant design."),
            Auction(price: 40.0, itemName: "Vintage Postcards", sellerName: "postcard_collector", date: "2024-04-11", hasArrived: true, descriptions: "A collection of vintage postcards from various locations."),
            Auction(price: 90.0, itemName: "Designer Handbag", sellerName: "fashion_lover", date: "2024-04-10", hasArrived: false, descriptions: "High-end designer handbag in excellent condition."),
            Auction(price: 35.0, itemName: "Crafted Pottery", sellerName: "ceramic_artist", date: "2024-04-09", hasArrived: true, descriptions: "Handcrafted pottery with unique designs."),
            Auction(price: 80.0, itemName: "Vintage Typewriter", sellerName: "typewriter_enthusiast", date: "2024-04-08", hasArrived: true, descriptions: "An old typewriter in good condition."),
            Auction(price: 100.0, itemName: "Classic Guitar", sellerName: "music_fanatic", date: "2024-04-07", hasArrived: true, descriptions: "A classic guitar in excellent condition."),
            Auction(price: 70.0, itemName: "Designer Sunglasses", sellerName: "fashion_addict", date: "2024-04-06", hasArrived: false, descriptions: "Stylish sunglasses from a renowned designer."),
            Auction(price: 55.0, itemName: "Antique Map", sellerName: "history_buff", date: "2024-04-05", hasArrived: true, descriptions: "A beautifully detailed antique map."),
            Auction(price: 65.0, itemName: "Handmade Quilt", sellerName: "quilt_master", date: "2024-04-04", hasArrived: true, descriptions: "A beautiful handmade quilt with intricate patterns."),
            Auction(price: 90.0, itemName: "Smart Home Devices", sellerName: "tech_guru", date: "2024-04-03", hasArrived: false, descriptions: "Latest smart home gadgets and accessories."),
            Auction(price: 40.0, itemName: "Vintage Record Player", sellerName: "music_lover", date: "2024-04-02", hasArrived: true, descriptions: "Vintage record player with all original parts."),
            Auction(price: 50.0, itemName: "Handcrafted Jewelry", sellerName: "jewelry_lover", date: "2024-04-01", hasArrived: false, descriptions: "Handmade jewelry with unique designs.")
        ]
    }
}
