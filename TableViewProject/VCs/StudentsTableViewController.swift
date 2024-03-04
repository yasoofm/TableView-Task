//
//  ViewController.swift
//  TableViewProject
//
//  Created by yousef mandani on 03/03/2024.
//

import UIKit

class StudentsTableViewController: UITableViewController {

    let students = [Student(name: "yousef", gpa: 3.2, image: "man"), Student(name: "nawaf", gpa: 4, image: "man")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let student = students[indexPath.row]
        cell.imageView?.image = UIImage(named: student.image)
        cell.textLabel?.text = "Name: \(student.name)\tGPA: \(student.gpa)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = StudentDetailViewController()
        let student = students[indexPath.row]
        detailVC.student = student
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

