//
//  LoremSwiftum.swift
//  StyleLongation
//
//  Created by Altiarika on 6/13/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import Foundation

open class Lorem {
    
    // ======================================================= //
    // MARK: - Text
    // ======================================================= //
    
    open static var word: String {
        return allWords.randomElement
    }
    
    open static func words(_ count: Int) -> String {
        return compose({ word }, count: count, middleSeparator: .Space)
    }
    
    open static var sentence: String {
        let numberOfWordsInSentence = Int.random(min: 4, max: 16)
        let capitalizeFirstLetterDecorator: (String) -> String = { $0.stringWithCapitalizedFirstLetter }
        return compose({ word }, count: numberOfWordsInSentence, middleSeparator: .Space, endSeparator: .Dot, decorator: capitalizeFirstLetterDecorator)
    }
    
    open static func sentences(_ count: Int) -> String {
        return compose({ sentence }, count: count, middleSeparator: .Space)
    }
    
    open static var paragraph: String {
        let numberOfSentencesInParagraph = Int.random(min: 3, max: 9)
        return sentences(numberOfSentencesInParagraph)
    }
    
    open static func paragraphs(_ count: Int) -> String {
        return compose({ paragraph }, count: count, middleSeparator: .NewLine)
    }
    
    open static var title: String {
        let numberOfWordsInTitle = Int.random(min: 2, max: 7)
        let capitalizeStringDecorator: (String) -> String = { $0.capitalized }
        return compose({ word }, count: numberOfWordsInTitle, middleSeparator: .Space, decorator: capitalizeStringDecorator)
    }
    
    // ======================================================= //
    // MARK: - Misc
    // ======================================================= //
    
    open static var firstName: String {
        return firstNames.randomElement
    }
    
    open static var lastName: String {
        return lastNames.randomElement
    }
    
    open static var name: String {
        return "\(firstName) \(lastName)"
    }
    
    open static var email: String {
        let delimiter = emailDelimiters.randomElement
        let domain = emailDomains.randomElement
        return "\(firstName)\(delimiter)\(lastName)@\(domain)".lowercased()
    }
    
    open static var URL: Foundation.URL {
        return Foundation.URL(string: "http://\(domains.randomElement)/")!
    }
    
    open static var tweet: String {
        return tweets.randomElement
    }
    
    open static var date: Date {
        let currentDate = Date()
        let currentCalendar = Calendar.current
        var referenceDateComponents = DateComponents()
        referenceDateComponents.year = -4
        let calendarOptions = NSCalendar.Options(rawValue: 0)
        let referenceDate = (currentCalendar as NSCalendar).date(byAdding: referenceDateComponents, to: currentDate, options: calendarOptions)!
        let timeIntervalSinceReferenceDate = currentDate.timeIntervalSince(referenceDate)
        let randomTimeInterval = TimeInterval(Int.random(max: Int(timeIntervalSinceReferenceDate)))
        return referenceDate.addingTimeInterval(randomTimeInterval)
    }
    
    // ======================================================= //
    // MARK: - Private
    // ======================================================= //
    
    fileprivate enum Separator: String {
        case None = ""
        case Space = " "
        case Dot = "."
        case NewLine = "\n"
    }
    
    fileprivate static func compose(_ provider: () -> String, count: Int, middleSeparator: Separator, endSeparator: Separator = .None, decorator: ((String) -> String)? = nil) -> String {
        var composedString = ""
        
        for index in 0..<count {
            composedString += provider()
            
            if (index < count - 1) {
                composedString += middleSeparator.rawValue
            } else {
                composedString += endSeparator.rawValue
            }
        }
        
        if let decorator = decorator {
            return decorator(composedString)
        } else {
            return composedString
        }
    }
    
    // ======================================================= //
    // MARK: - Data
    // ======================================================= //
    
    fileprivate static let allWords = "alias consequatur aut perferendis sit voluptatem accusantium doloremque aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis nemo enim ipsam voluptatem quia voluptas sit suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae et iusto odio dignissimos ducimus qui blanditiis praesentium laudantium totam rem voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident sed ut perspiciatis unde omnis iste natus error similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo porro quisquam est qui minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur at vero eos et accusamus officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores doloribus asperiores repellat".components(separatedBy: " ")
    
    fileprivate static let firstNames = "Slovenia Slovenia Slovenia Slovenia".components(separatedBy: " ")
    
    fileprivate static let lastNames = " Tourism Tourism Tourism Tourism Tourism".components(separatedBy: " ")
    
    fileprivate static let emailDomains = "gmail.com yahoo.com hotmail.com email.com live.com me.com mac.com aol.com fastmail.com mail.com".components(separatedBy: " ")
    
    fileprivate static let emailDelimiters = ["", ".", "-", "_"]
    
    fileprivate static let domains = "twitter.com google.com youtube.com wordpress.org adobe.com blogspot.com godaddy.com wikipedia.org wordpress.com yahoo.com linkedin.com amazon.com flickr.com w3.org apple.com myspace.com tumblr.com digg.com microsoft.com vimeo.com pinterest.com qq.com stumbleupon.com youtu.be addthis.com miibeian.gov.cn delicious.com baidu.com feedburner.com bit.ly".components(separatedBy: " ")
    
    // Source: http://www.kevadamson.com/talking-of-design/article/140-alternative-characters-to-lorem-ipsum
    fileprivate static let tweets = ["Far away, in a forest next to a river beneath the mountains, there lived a small purple otter called Philip. Philip likes sausages. The End.", "He liked the quality sausages from Marks & Spencer but due to the recession he had been forced to shop in a less desirable supermarket. End.", "He awoke one day to find his pile of sausages missing. Roger the greedy boar with human eyes, had skateboarded into the forest & eaten them!"]
    
}

private extension Int {
    
    static func random(min: Int = 0, max: Int) -> Int {
        assert(min >= 0)
        assert(min < max)
        
        return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
    
}

private extension Array {
    
    var randomElement: Element {
        return self[Int.random(max: count - 1)]
    }
    
}

private extension String {
    
    var stringWithCapitalizedFirstLetter: String {
        let firstLetterRange = startIndex..<characters.index(after: startIndex)
        let capitalizedFirstLetter = substring(with: firstLetterRange).capitalized
        return replacingCharacters(in: firstLetterRange, with: capitalizedFirstLetter)
    }
    
}
