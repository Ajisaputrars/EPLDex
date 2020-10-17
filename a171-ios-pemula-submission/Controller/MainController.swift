//
//  ViewController.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 18/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import Kingfisher

class MainController: UIViewController {
    
    #if targetEnvironment(macCatalyst)
    var hasDisabledZoom = false
    #endif
    
    private var mainView: MainView!
    private var teams: Team!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
        
//        #if targetEnvironment(macCatalyst)
//        if !hasDisabledZoom {
//            hasDisabledZoom = true
//            CatalystAppManager.configureMacAppWindow()
//        }
//        #endif
//        
        self.getTeams()
        self.setupNavigationController()
        
        self.mainView.teamTableView.delegate = self
        self.mainView.teamTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        #if targetEnvironment(macCatalyst)
        if !hasDisabledZoom {
            hasDisabledZoom = true
            CatalystAppManager.configureMacAppWindow()
        }
        #endif
    }
    
    private func setupNavigationController(){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Group"), style: .plain, target: self, action: #selector(profileButtonPressed))
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        
        self.navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.tintColor = .white
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = UIColor(red: 87/255, green: 22/255, blue: 99/255, alpha: 1)
        self.navigationController?.navigationBar.standardAppearance = navBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

        
        self.title = "Premier League"
    }
    
    @objc private func profileButtonPressed(){
        let navigationController = UINavigationController(rootViewController: ProfileController())
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true, completion: nil)
    }
    
    private func getTeams() {
        if let path = Bundle.main.path(forResource: "Sports", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                self.teams = try! Utils.teamJsonParser(data: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}

//MARK: Table View Delegate and Data Source
extension MainController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.teams.teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Team", for: indexPath) as! TeamTableViewCell
        cell.configureCell(teamList: self.teams.teams[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DetailController()
        controller.teamDetail = self.teams.teams[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
