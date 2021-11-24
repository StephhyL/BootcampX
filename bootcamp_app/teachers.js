const {Pool} = require('pg');

const pool = new Pool({
  user:'vagrant',
  password:'123',
  host: 'localhost',
  database:'bootcampx'
});

pool
  .connect()
  .then(()=> {
    console.log("Yay, you're connected!");
  })
  .catch((error) => {
    console.log("oh no! Error");
    console.log(error.message);
  });

const query =
`SELECT DISTINCT(teachers.name) AS teacher,
cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name IN ($1, 'JUL02')
`;

const queryCohort = process.argv[2];

pool
  .query(query, [queryCohort])
  .then(res => {
    res.rows.forEach(obj => {
      console.log(`${obj.cohort}: ${obj.teacher}`);
    });
  })
  .catch(err => {
    console.log("Oh no. Error!");
    console.error(err.message);
  });