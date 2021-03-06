//
//  TestPresenter.swift
//  TestApp
//
//  Created by Jakub Hutny on 19.12.2016.
//  Copyright (c) 2016 Jakub Hutny. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol TestPresenterInput
{
  func presentSomething(response: Test.Something.Response)
}

protocol TestPresenterOutput: class
{
  func displaySomething(viewModel: Test.Something.ViewModel)
}

class TestPresenter: TestPresenterInput
{
  weak var output: TestPresenterOutput!
  
  // MARK: - Presentation logic
  
  func presentSomething(response: Test.Something.Response)
  {
    // NOTE: Format the response from the Interactor and pass the result back to the View Controller
    
    let viewModel = Test.Something.ViewModel()
    output.displaySomething(viewModel: viewModel)
  }
}
