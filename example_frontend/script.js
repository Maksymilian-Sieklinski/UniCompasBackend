// CONFIGURATION: Change this URL to your backend API endpoint
const API_BASE_URL = 'http://localhost:3000';

document.getElementById('dataForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    
    // Get form values
    const studentId = document.getElementById('studentId').value;
    const universityId = document.getElementById('universityId').value;
    const type = document.getElementById('type').value;
    
    // Get selected request method
    const requestMethod = document.querySelector('input[name="requestMethod"]:checked').value;
    
    // Show loading indicator
    document.getElementById('loading').classList.add('active');
    document.getElementById('error').classList.remove('active');
    document.getElementById('result').classList.remove('active');
    
    try {
        let response;
        
        if (requestMethod === 'GET') {
            // Construct the URL with type as part of the path and other parameters as query params
            const url = `${API_BASE_URL}/${encodeURIComponent(type)}?studentId=${encodeURIComponent(studentId)}&universityId=${encodeURIComponent(universityId)}`;
            
            // Make the GET request
            response = await fetch(url);
        } else {
            // For POST request, send data in the request body
            const url = `${API_BASE_URL}/${encodeURIComponent(type)}`;
            
            // Make the POST request with data in the body
            response = await fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    studentId: studentId,
                    universityId: universityId
                })
            });
        }
        
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        
        // Parse the JSON response
        const data = await response.json();
        
        // Display the result
        document.getElementById('resultData').textContent = JSON.stringify(data, null, 2);
        document.getElementById('result').classList.add('active');
    } catch (error) {
        console.error('Error fetching data:', error);
        document.getElementById('error').textContent = `Error: ${error.message}`;
        document.getElementById('error').classList.add('active');
    } finally {
        // Hide loading indicator
        document.getElementById('loading').classList.remove('active');
    }
});