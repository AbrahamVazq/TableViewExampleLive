//
//  FeedPresenter.swift
//  TableViewExampleLive
//
//  Created by 291732 on 27/09/22.
//

import Foundation
import UIKit

class FeedPresenter {
    
    private var dummyData = [
        
        FeedItem(profileName: "User 1",
                 profileImage: UIImage(systemName: "circle.circle.fill"),
                 profileShareData: "Hola Mundito :D "),
        
        FeedItem(profileName: "User 2",
                 profileImage: UIImage(systemName: "circle.circle.fill"),
                 profileShareData: "I'm almost done, except making the navigation controller manually."),
        
        FeedItem(profileName: "user 3",
                 profileImage: UIImage(systemName: "circle.circle.fill"),
                 profileShareData: "This answer is not general, and relies on a class that is not part of the language. This answer also does not show the import of that class, nor does it say anything about where the class came from or how to get it. It is entirely possible to rewrite this without anything in CommonMethods, resulting in fewer lines of code, and a more general answer. "),
        
        FeedItem(profileName: "User 4",
                 profileImage: UIImage(systemName: "circle.circle.fill"),
                 profileShareData: "This answer is not general, and relies on a class that is not part of the language. This answer also does not show the import of that class, nor does it say anything about where the class came from or how to get it. It is entirely possible to rewrite this without anything in CommonMethods, resulting in fewer lines of code, and a more general answer. "),
        
        FeedItem(profileName: "User 5",
                 profileImage: UIImage(systemName: "circle.circle.fill"),
                 profileShareData: "This answer is not general, and relies on a class that is not part of the language. This answer also does not show the import of that class, nor does it say anything about where the class came from or how to get it. It is entirely possible to rewrite this without anything in CommonMethods, resulting in fewer lines of code, and a more general answer. ")
        
        
    ]
    
    
    func getCell(forRow row: Int, using tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFeedTableViewCell", for: IndexPath(row: row, section: 0)) as? MyFeedTableViewCell ?? MyFeedTableViewCell()
        cell.setUpView(with: dummyData[row])
        return cell
    }
    
    func getNumberOfRows() -> Int {
        dummyData.count
    }
    
}
