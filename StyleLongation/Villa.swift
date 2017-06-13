//
//  Villa.swift
//  StyleLongation
//
//  Created by Altiarika on 6/13/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import Foundation


struct Villa {
    
    let country: String
    let locality: String
    let description: String
    let title: String
    let imageName: String
    
    init(country: String, locality: String, description: String, title: String, imageName: String) {
        self.country = country
        self.locality = locality
        self.description = description
        self.title = title
        self.imageName = imageName
    }
    
}

extension Villa {
    static var testData: [Villa] {
        return [
            Villa(country: "Bled", locality: "Adventure", description: "Bled, a Slovenian resort town in the foothills of the Julian Alps, is set along the glacial Lake Bled. On a cliff overlooking the lake is the 11th-century Bled Castle, which houses a museum, chapel and printing press. Atop an inslet in the lake's center is the Pilgrimage Church of the Assumption of Maria and its steep staircase and bell tower.", title: "\(Lorem.name)'s About", imageName: "1"),
            Villa(country: "Predjama", locality: "Architecture", description: "Predjama is a small settlement in the Municipality of Postojna in the Inner Carniola region of Slovenia", title: "\(Lorem.name)'s About", imageName: "4"),
            Villa(country: "Ljubljana", locality: "Culture", description: "Ljubljana is Slovenia's capital and largest city. It's known for its university population and green   , including expansive Tivoli Park. The curving Ljubljanica River, lined in outdoor cafes, divides the city's old town from its commercial hub.", title: "\(Lorem.name)'s About", imageName: "7"),
            Villa(country: "Ptuj", locality: "Museum", description: "Ptuj is a town in northeastern Slovenia. Traditionally the area was part of the Styria region", title: "\(Lorem.name)'s About", imageName: "8"),
            Villa(country: "Maribor", locality: "Winter Sport", description: "You can admire the beautiful landscape through large windows. This  area of the house stands out through the warmth color of the furniture.", title: "\(Lorem.name)'s About", imageName: "6"),
            Villa(country: "Triglav National Park", locality: "Nature", description: "Protected area named after the mountain it includes, the 9,396-feet high Triglav", title: "About", imageName: "2"),
            Villa(country: "Kranjska Gora", locality: "Hiking", description: "Kranjska Gora is an alpine resort in northwestern Slovenia, near the mountains and glacial lakes of Triglav National Park. In town, the 17th-century Liznjek House exhibits period furniture and tools. To the west, Zelenci Nature Reserve shelters nesting birds. South of here, Nordic Center Planica is a hub for winter sports. Near the Vršič Pass, the wooden Russian Chapel was built by prisoners during WWI.", title: "\(Lorem.name)'s About", imageName: "3"),
            Villa(country: "Postojna", locality: "Cave", description: "Postojna is a town in the traditional region of Inner Carniola, 35 kilometers from Trieste, in southwestern Slovenia. It is the seat of the Municipality of Postojna.", title: "\(Lorem.name)'s About", imageName: "5"),
            Villa(country: "Bovec", locality: "Outdoor Recreation", description: "Bovec is a mountain town in northwestern Slovenia. It’s surrounded by the peaks of the Julian Alps, such as Kanin and Krn. The mountains, forests and glacial lakes of Triglav National Park are to the east. The turquoise Soča River, with its rapids, is popular for water sports. The Walk of Peace trail takes in various sights linked to WWI, such as the Ravelnik Open-Air Museum, which preserves trenches and bunkers.", title: "\(Lorem.name)'s About", imageName: "9")
        ]
    }
}
