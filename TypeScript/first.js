// console.log("Hello");
var studentOne = {
    name: "Priti",
    age: 21,
    course: "CSC"
};
var printStudent = function (student) {
    // let msg:string = `Name : ${student.name} AGE: ${student.age} Course:${student.course}`;
    // console.log(msg);
    return student;
};
var stud = printStudent(studentOne);
console.log(stud);
