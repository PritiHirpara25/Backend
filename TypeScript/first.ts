// console.log("Hello");

// const technology:string = 'TypeScript';
// // technology = 10;
// console.log(technology);

// //string
// let employeeName : string = "John";
// console.log(employeeName);

// //number 
// let employeeSalary:number = 50000;
// console.log(`Salary : ${employeeSalary}`);

// //boolean

// let isManager:boolean = true;
// console.log(`IsManager : ${isManager}`);

// //arrays
// let techs:string[] = ["html" , "css" , "Javscript"];
// console.log(techs);

// //any
// let abc:any = 10;
// abc = 20;
// abc = 'test';
// abc = true;
// abc = [];
// abc = {};

// let a = 10;
// a = 'skill';
// console.log(a);


//object
// interface Mobile{
//     brand:string;
//     color?:string;  //optinal
//     price:number;
// }

// const MobileOne:Mobile = {
//     brand:"apple",
//     price:45000
// };

// MobileOne.brand = 'Lenovo';
// console.log(MobileOne)

//Enum Enumated => for const value
// enum Months{
//     JAN = "JANUARY",
//     FEB = "FEBRUARY",
//     MAR = "MARCH"
// }

// console.log(Months.JAN);

//OPERATORS

// let marks:number = 65;
// let results:string = '';
// if(marks <= 35){
//     results = 'You failed the exam';
// }
// else{
//     results = 'You pass the exam';
// }
// console.log(results)

// //print numbers
// results = '';
// for(let i:number = 0; i<=10;i++){
//     results += `${i}`;
// }
// console.log(results);

//FUNCTIONS

// let greet = ():void => {
//     console.log("Good Morning");
// }
// greet();


// let greet = () => {
//     return "Good Morning";
// }
// console.log(greet());


// let wishMsg = (name:string):string => {
//     let result:string = `Hello ${name} Good Morning`;
//     return result
// }
// let greetMsg:string = wishMsg("John");
// console.log(greetMsg)


// let wishMsg = (name:any):string => {
//     let result:string = `Hello ${name} Good Morning`;
//     return result
// }
// let greetMsg:string = wishMsg("John");
// console.log(greetMsg)


//print object

// interface Student{
//     name : string;
//     age : number;
//     course : string;
// }

// const printStudent = (student:Student):void=>{
//     let msg:string = `Name : ${student.name} AGE: ${student.age} Course:${student.course}`;
//     console.log(msg);
// }

// const studentOne:Student = {
//     name : "Priti",
//     age : 21,
//     course : "CSC"
// }
// printStudent(studentOne);


interface Student{
    name : string;
    age : number;
    course : string;
}

const studentOne:Student = {
    name : "Priti",
    age : 21,
    course : "CSC"
}

const printStudent = (student:Student):Student=>{
    // let msg:string = `Name : ${student.name} AGE: ${student.age} Course:${student.course}`;
    // console.log(msg);
    return student;
}

let stud:Student = printStudent(studentOne)
console.log(stud)





