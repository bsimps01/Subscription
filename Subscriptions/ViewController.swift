//
//  ViewController.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 1/28/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var labelView: UILabel!
//    var imageView: UIImage!
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    let container: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        return view
    }()
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.pageIndicatorTintColor = UIColor(white: 1.0, alpha: 0.4)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    var firstView: OnboardingView!
    var secondView: OnboardingView!
    var thirdView: OnboardingView!
    var arrayofPages: [OnboardingView] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setViews()
        setPageControl()
        //setTable()
        
    }
    
    func setupScrollView(){
        //Sets the dimensions for the ScrollView
        scrollView.delegate = self
        view.addSubview(scrollView)
        //Sets the dimensions for container
        scrollView.addSubview(container)
        //Creates the views for the ScrollView and container

        
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
        //firstView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        //Sets the background colors for the views
//        firstView.backgroundColor = UIColor.blue
//        secondView.backgroundColor = UIColor.yellow
//        thirdView.backgroundColor = UIColor.purple
        
    }
    
    func setViews(){
        firstView = OnboardingView(message: "Get hooked up with classic gear", imageName: "sports-mem", isLastPage: false, color: .blue)
        secondView = OnboardingView(message: "Once every month get access to history!", imageName: "sports-mem2", isLastPage: false, color: .red)
        thirdView = OnboardingView(message: "Get started now with the hall of fame selection", imageName: "sports-mem3", isLastPage: true, color: .purple)
        
        arrayofPages = [firstView, secondView, thirdView]
        
        thirdView.subscribeButton.addTarget(self, action: #selector(loginPage), for: .touchUpInside)
        
        for page in arrayofPages{
            container.addArrangedSubview(page)
            page.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        }
        
    }
    
    @objc func loginPage(){
        self.view.window!.rootViewController = LoginPage()
    }
    
    func setPageControl(){
        //Sets the bottom cursor to reflect the page the user is on
        pageControl.numberOfPages = arrayofPages.count
        view.addSubview(pageControl)
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

//    func createdView(currentView: UIView, imageName: String, text: String, isLastPage: Bool, color: UIColor){
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.spacing = 20
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.distribution = .fill
//        currentView.addSubview(stackView)
//
//        stackView.widthAnchor.constraint(equalTo: currentView.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
//        stackView.heightAnchor.constraint(equalTo: currentView.layoutMarginsGuide.heightAnchor, multiplier: 0.50).isActive = true
//        stackView.centerXAnchor.constraint(equalTo: currentView.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: currentView.centerYAnchor).isActive = true
//
//        let image = UIImage(named: imageName)
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        stackView.addArrangedSubview(imageView)
//        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.60).isActive = true
//
//        let message = UILabel()
//        message.numberOfLines = 0
//        message.textAlignment = .center
//        message.text = text
//        message.font = UIFont(name: "Helvetica", size: 40)
//        message.textColor = UIColor(white: 1.0, alpha: 0.8)
//        stackView.addArrangedSubview(message)
//
//        currentView.backgroundColor = color
//
//
//    }

}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
            let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       if scrollView.contentOffset.y > 0 || scrollView.contentOffset.y < 0 {
          scrollView.contentOffset.y = 0
       }
    }
}

