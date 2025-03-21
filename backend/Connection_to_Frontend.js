const dbQueries = require('./database_queries') ;
const express = require('express') ;
const app = express() ;
const cors = require('cors');
const req = require('express/lib/request');
const port = 3000 ;

app.use(express.json()) ;
app.use(cors());

app.get('/getUniversityInformation', async (request,response)=>
{
    var UniversityId = request.query.universityId ;
    try
    {
        var data = await dbQueries.getUniversityInformation(UniversityId) ;
        response.send(data);
    }
    catch(error){}
});

app.get('/getStudentsUniList', async (request,response)=>
{
    var studentId = request.query.studentId ;
    try
    {
        var data = await dbQueries.getStudentsUniList(studentId) ;
        response.send(data);
    }
    catch(error){}
});

app.get('/getStudentReviews', async (request,response)=>
{
    var UniversityId = request.query.universityId ;
    try
    {
        var data = await dbQueries.getStudentReviews(UniversityId) ;
        response.send(data);
    }
    catch(error){}
});

app.get('/getSupplamentalEssays', async (request,response)=>
{
    var UniversityId = request.query.universityId ;
    try
    {
        var data = await dbQueries.getSupplamentalEssays(UniversityId) ;
        response.send(data);
    }
    catch(error){}
});

app.post('/addUniversityToStudentsList', async (request,response)=>
{
    UniversityId = request.body.universityId ;
    console.log(UniversityId) ;
    studentId = request.body.studentId ;

    try
    {
        await dbQueries.addUniversityToStudentsList(studentId,UniversityId) ;
        response.send('[]') ;
    }
    catch(error){} 
}) ;

cnt = 0 ;

app.post('/addStudentReview', async (request,response)=>
{
    UniversityId = request.body.universityId ;
    var studentName = 'Olek' + cnt++;
    try
    {
        await dbQueries.addStudentReview(studentName, UniversityId, cnt, 'Good enough' + cnt) ;
        response.send('[]') ;
    }
    catch(error){}
});


app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
  });