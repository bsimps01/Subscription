//
//  ViewController.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 1/28/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var labelView: UILabel!
    var imageView: UIImage!
    var scrollView: UIScrollView!
    var container: UIStackView!
    var pageControl: UIPageControl!
    var firstView: UIView = UIView()
    var secondView: UIView = UIView()
    var thirdView: UIView = UIView()
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    let treeArray = [String](repeating: "🌲 planted", count: 100)
    var isLastPage: Bool! = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setViews()
        //setTable()
        
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return treeArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TreeCell", for: indexPath)
//        cell.textLabel?.text = "\(indexPath.row) \(treeArray[indexPath.row])"
//        return cell
//    }
    
//    func setTable(){
//        self.view.addSubview(table)
//        table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
//        table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
//        table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
//        table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
//        table.register(UINib(nibName: "TreeCell", bundle: nil), forCellReuseIdentifier: "TreeCell")
//        table.delegate = self
//        table.delegate = self
//    }
    
    func setupScrollView(){
        //Sets the dimensions for the ScrollView
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        view.addSubview(scrollView)
        //Sets the dimensions for container
        container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        //Creates the views for the ScrollView and container
        scrollView.addSubview(container)
        container.addArrangedSubview(firstView)
        container.addArrangedSubview(secondView)
        container.addArrangedSubview(thirdView)
        
        //Adds the constraints with anchor positions for ScrollView
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //Adds the container constraints with anchor positions
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        firstView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        //Sets the background colors for the views
//        firstView.backgroundColor = UIColor.blue
//        secondView.backgroundColor = UIColor.yellow
//        thirdView.backgroundColor = UIColor.purple
        //Sets the bottom cursor to reflect the page the user is on
        pageControl = UIPageControl()
        view.addSubview(pageControl)
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor(white: 1.0, alpha: 0.4)
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func setViews(){
        createdView(currentView: firstView, imageName: "sports-mem", text: "Get hooked up with classic gear", isLastPage: false, color: UIColor.blue)
        createdView(currentView: secondView, imageName: "sports-mem2", text: "Once every month get access to history!", isLastPage: false, color: UIColor.red)
        createdView(currentView: thirdView, imageName: "sports-mem3", text: "Get started now with the hall of fame selection", isLastPage: true, color: UIColor.purple)
        
        
    }
    func createdView(currentView: UIView, imageName: String, text: String, isLastPage: Bool, color: UIColor){
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        currentView.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: currentView.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: currentView.layoutMarginsGuide.heightAnchor, multiplier: 0.50).isActive = true
        stackView.centerXAnchor.constraint(equalTo: currentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: currentView.centerYAnchor).isActive = true
        
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        stackView.addArrangedSubview(imageView)
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.60).isActive = true
        
        let message = UILabel()
        message.numberOfLines = 0
        message.textAlignment = .center
        message.text = text
        message.font = UIFont(name: "Helvetica", size: 20)
        message.textColor = UIColor(white: 1.0, alpha: 0.8)
        stackView.addArrangedSubview(message)
        
        currentView.backgroundColor = color
        
    }
}


