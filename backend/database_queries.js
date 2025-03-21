const DataBase = require('./database_connections');


async function getUniversityInformation(UniversityId)
{
    try
    {
		const [data] = await DataBase.query('CALL getUniversityInformation(?);', [UniversityId]) ;
		return JSON.stringify(data[0]) ;
    }
	catch(error)
	{
		console.log(error) ;
	}
}

async function getStudentsUniList(studentId)
{
	try
	{
		const [data] = await DataBase.query('CALL getStudentUniversityList(?);', [studentId]) ;
		return JSON.stringify(data[0]) ;
	}
	catch(error)
	{
		console.log(error) ;
	}
}

async function getStudentReviews(UniversityId)
{
	try
	{
		const [data] = await DataBase.query('CALL getStudentReviews(?);', [UniversityId]) ;
		return JSON.stringify(data[0]) ;
	}
	catch(error)
	{
		console.log(error) ;
	}
}

async function getSupplamentalEssays(UniversityId)
{
	try
	{
		const [data] = await DataBase.query('CALL getSupplamentalEssays(?);', [UniversityId]) ;
		return JSON.stringify(data[0]) ;
	}
	catch(error)
	{
		console.log(error);
	}
}

async function checkIfUniversityInStudentList(studentId, UniversityId)
{
	try
	{
		const [data] = await DataBase.query('CALL checkIfUniversityInStudentList(?,?);', [studentId, UniversityId]) ;
		if(Number(data[0][0]['COUNT(*)']) === Number(0)) return false;
		return true;
	}
	catch(error)
	{
		console.log(error); 
	}
}

async function addUniversityToStudentsList(studentId, UniversityId)
{
	var exists = await checkIfUniversityInStudentList(studentId,UniversityId) ;
	if( exists === true)
	{
		console.log('Already exists!') ;
		return ;
	}

	try
	{
		await DataBase.query('CALL addUniversityToStudentsList(?,?);', [studentId,UniversityId]); 
		console.log('ADDED!');
		return ;
	}
	catch(error)
	{
		console.log(error) ;
	}
}

async function addStudentReview(studentName, UniversityId, rating, reviewText)
{
	try
	{
		await DataBase.query('CALL addStudentReview(?,?,?,?);', [UniversityId,studentName,rating,reviewText]); 
		console.log('REVIEW ADDED!');
		return ;
	}
	catch(error)
	{
		console.log(error) ;
	}
}

module.exports = {
    getUniversityInformation, getStudentsUniList, addUniversityToStudentsList, getSupplamentalEssays, 
	getStudentReviews, addStudentReview
};