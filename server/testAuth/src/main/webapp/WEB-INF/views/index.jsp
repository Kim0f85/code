<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OAuth Login Example</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
    /* Style as needed */
</style>
</head>
<body>
    <button id="login">Login with Google</button>
    <div id="user-info"></div>
    <input id="logout" type="button" value="logOut">

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
        const clientId = '76388159425-cpn4a0cqgd2r3a6hd0lc16tmbgrl379n.apps.googleusercontent.com';
        const redirectUri = 'http://localhost:8080/testauth/index.do';
        const scope = 'https://www.googleapis.com/auth/userinfo.profile';
        console.log(clientId);
        console.log(redirectUri);
        console.log(scope);
        
        document.getElementById('login').onclick = function() {
        	const authUrl = 'https://accounts.google.com/o/oauth2/v2/auth?response_type=code&client_id=' + clientId + '&redirect_uri=' + redirectUri + '&scope=' + scope;
        	window.location = authUrl;
        	console.log(authUrl);
        };
        
        function handleRedirect() {
            const queryString = window.location.search;
            const urlParams = new URLSearchParams(queryString);
            const code = urlParams.get('code');
            if (code) {
                fetchUserInfo(code);
            }
        }

        async function fetchUserInfo(code) {
            const tokenUrl = 'https://oauth2.googleapis.com/token';
            const clientSecret = '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';
            const requestBody = 'code=${code}&client_id=' + clientId + '&client_secret=' + clientSecret + '&redirect_uri='+ redirectUri +'&grant_type=authorization_code'
            console.log("Request Body for Token:", requestBody);

            // Perform the fetch operation
            const response = await fetch(tokenUrl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: requestBody
            });

            // Process the response
            if (!response.ok) {
                console.error('Token request failed with status:', response.status);
                const errorResponse = await response.text();  // Get text response to log
                console.error('Error response:', errorResponse);
                return;
            }

            const data = await response.json();
            console.log("Received Token Data:", data); // Check what data is received

            if (data.access_token) {
                const userInfoUrl = `https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=${encodeURIComponent(data.access_token)}`;
                const userInfoResponse = await fetch(userInfoUrl);
                const userInfo = await userInfoResponse.json();
                document.getElementById('user-info').innerText = `Hello, ${userInfo.name}`;
                console.log("User Info:", userInfo);
            } else {
                console.log("No access token found in data:", data);
            }
        }
        
       $('#logout').click(function () {
            // Clear local storage
            localStorage.removeItem('accessToken');
            localStorage.removeItem('userInfo');

            // Clear session storage
            sessionStorage.removeItem('accessToken');
            sessionStorage.removeItem('userInfo');

            // Redirect to login page or home page
            window.location.href = 'http://localhost:8080/testauth/index.do';
        }); 
		
        window.onload = handleRedirect;
    </script>
</body>
</html>
