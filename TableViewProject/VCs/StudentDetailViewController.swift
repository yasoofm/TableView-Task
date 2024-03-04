//
//  StudentDetailViewController.swift
//  TableViewProject
//
//  Created by yousef mandani on 03/03/2024.
//

import UIKit
import SnapKit

class StudentDetailViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let nameLabel = UILabel()
    private let gpaLabel = UILabel()
    
    var student: Student?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addSubviews()
        setupUI()
        setupLayout()
    }
    
    func addSubviews(){
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(gpaLabel)
    }
    
    func setupUI(){
        view.backgroundColor = .white
        
        imageView.image = UIImage(named: student?.image ?? "")
        nameLabel.text = student?.name ?? ""
        gpaLabel.text = String(student?.gpa ?? 0)
    }

    func setupLayout(){
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalToSuperview()
            make.size.equalTo(70)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        gpaLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
    }
}
