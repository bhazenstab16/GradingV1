//
//  main.swift
//  GradingV1
//
//  Created by xcode on 1/22/20.
//  Copyright © 2020 xcode. All rights reserved.
//
import Foundation

func printDirections()
{
    print("Welcome to the grading machine.\nThis program is designed to convert your grades (in numbers) to their letter version. \nThe program will continue to read in grades until you enter -1. \nEnjoy!")
}

func getInt(grade: Int) -> (Int)
{
    var num:Int = 0
    var input:String = ""

    print("\nPlease enter an integer: \n")

    input = readLine() ?? ""
    num = Int(input) ?? 0
    return num;

}

func grading()
{
    var grade: Int = 0
    var gradeCount:Int = 0
    var gradeSum:Int = 0
    var gradeAverage:Double = 0.0
    var gradeValue:Character = "A"

    printDirections()

    grade = getInt(grade: grade)

    switch grade
    {
        case -1:
            break
    default:
        print("Error in switch grading")
        break
    }


    while (grade != -1)
    {
        if ((grade <= 100) && (grade >= 90))
        {
            gradeCount += 1
            gradeSum += grade

            print("\nThe grade you entered is an A!\n")

           grade = getInt(grade: grade)
        }
        else if ((grade < 90) && (grade >= 80))
        {
            gradeCount += 1
            gradeSum += grade

            print("\nThe grade you entered is a B!\n")
            
            grade = getInt(grade: grade)

        }
        else if ((grade < 80) && (grade >= 70))
        {
            gradeCount += 1
            gradeSum += grade

            print("\nThe grade you entered is a C.\n")

            grade = getInt(grade: grade)
        }
        else if ((grade < 70) && (grade >= 60))
        {
            gradeCount += 1
            gradeSum += grade

            print("\nThe grade you entered is a D.\n")
            
            grade = getInt(grade: grade)
        }
        else if ((grade < 70) && (grade >= 1))
        {
            gradeCount += 1
            gradeSum += grade

            print("\nThe grade you entered is an F.\n")
            
            grade = getInt(grade: grade)
        }
        else
        {
            print("\nYou have entered an invalid grade, please try again\n")

            grade = getInt(grade: grade)
        }
    }

    gradeAverage = Double(gradeSum) / Double(gradeCount)

    if ((gradeAverage <= 100) && (gradeAverage >= 90))
    {
        gradeValue = "A"
    }
    else if ((gradeAverage < 90) && (gradeAverage >= 80))
    {
        gradeValue = "B"
    }
    else if ((gradeAverage < 80) && (gradeAverage >= 70))
    {
        gradeValue = "C"
    }
    else if ((gradeAverage < 70) && (gradeAverage >= 60))
    {
        gradeValue = "D"
    }
    else if ((gradeAverage < 60) && (gradeAverage >= 1))
    {
        gradeValue = "F"
    }
    else
    {
        print("\nError in average ifs.\n")
    }
    
    print("\nThe average of the grades you entered (in numerical form) is " + String(gradeAverage) + ".\n")
    
    if ((gradeValue == "A") || (gradeValue == "F"))
    {
        print("The letter grade equivalent to " + String(gradeAverage) + " is an " + String(gradeValue) + ".\n")
    }
    else
    {
        print("The letter grade equivalent to " + String(gradeAverage) + " is a " + String(gradeValue) + ".\n")
    }
}

func main()
{
    grading()
}

main()
