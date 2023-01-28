//
//  ContentModel.swift
//  LearningApp
//
//  Created by MD HUSSAIN SHAH JAWED on 21/1/23.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    var styleData: Data?
    
    init() {
        getLocalData()
        
    }
    
    func getLocalData() {
        
        // get a url to the JSON file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        
        //read the file into a data object
        do {
            
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let module = try jsonDecoder.decode([Module].self, from: jsonData)
            // assign parse module to modules property
            
            self.modules = modules
        }
        catch {
            // TODO Log error
            print("Could not parse local data")
        }
        
        // parse the style data
        let styleURL = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            // Read the file into a data object
            
            let styleData = try Data(contentsOf: styleURL!)
            self.styleData = styleData
            
        }
        catch {
            // Log error
            
            print("Could not Parse Style data")
        }
        
        
    }
}
