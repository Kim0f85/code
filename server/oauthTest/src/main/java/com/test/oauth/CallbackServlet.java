package com.test.oauth;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.test.oauth.data.UserInfo;

public class CallbackServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code != null) {
            // Exchange code for access token
            String accessToken = exchangeCodeForToken(code);
            // Fetch user info
            UserInfo userInfo = fetchUserInfo(accessToken);
            request.setAttribute("userInfo", userInfo);
            request.getRequestDispatcher("/userInfo.jsp").forward(request, response);
            

        }
    }

    private String exchangeCodeForToken(String code) {
        // Implementation of token exchange
        return "access_token"; // Placeholder
    }

    private UserInfo fetchUserInfo(String accessToken) {
        // Implementation to fetch user info
        return new UserInfo(); // Placeholder
    }
}
