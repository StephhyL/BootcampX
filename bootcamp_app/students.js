const { Pool } = require('pg');

const pool = new Pool({
  user:'vagrant',
  password: '123',
  host: 'localhost',
  database:'bootcampx'
});

pool
  .connect()
  .then((message) => (
    console.log("Yay, connected!")
  ))
  .catch((error)=> {
    console.log("Error occurred! Not connected!");
    console.log(error.message);
  })


const inputArgs = process.argv.slice(2);
const queryCohort = inputArgs[0];
const limit = inputArgs[1];

pool
  .query(`
  SELECT students.id AS id, students.name AS student_name, cohorts.name AS cohort_name
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
  `, ['%' + queryCohort + '%', limit])
  .then(res => {
    console.log("-----------------");
    // console.log(res.rows)
    res.rows.forEach(user => {
      console.log(`${user.student_name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`)
    })
  })
  .catch(err => {
    console.error('query error=====>', err.stack)
  });

