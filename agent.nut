device.on("temp", function(value) {
    server.log("Trying to post to Ubi the value:");
    server.log(value);
    local headers = { "Content-Type": "application/json", "X-Auth-Token": "hJ37THcj6Ax2679lkQYtpW9wy0DXaS" }; // Replace the token with yours
    local url = "http://things.ubidots.com/api/v1.6/variables/54d993747625427132781f5c/value"; // Replace the Variable ID with yours
    local string = {"value": value};
    local request = http.post(url, headers, http.jsonencode(string));
    local response = request.sendsync();
});