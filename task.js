import data from './data.js';
const arr = []
let sum = 0
const secondArr = []
const smaller = () => {
    data.map((x) => {
        x.task.map((tasks) => {
            // console.log(tasks.machine)
            var result = tasks.machine.reduce(function (res, obj) {
                return (obj.time < res.time) ? obj : res;
            });
            console.log(x.name + ":" +tasks.name +":", result)
        })
    })
}

console.log((smaller()))
console.log('time complexity is 0(log)n because i broke the problem down into smaller sizes using map functions')
