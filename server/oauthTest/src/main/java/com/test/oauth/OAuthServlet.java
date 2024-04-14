package com.test.oauth;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OAuthServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = "76388159425-cpn4a0cqgd2r3a6hd0lc16tmbgrl379n.apps.googleusercontent.com";
        String redirectUri = "http://localhost:8080/oauthtest/oauth";
        String scope = "https://www.googleapis.com/auth/userinfo.email";
        String authUrl = "https://accounts.google.com/o/oauth2/v2/auth?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + URLEncoder.encode(redirectUri, "UTF-8")
                + "&scope=" + URLEncoder.encode(scope, "UTF-8");
        response.sendRedirect(authUrl);
    }
}
