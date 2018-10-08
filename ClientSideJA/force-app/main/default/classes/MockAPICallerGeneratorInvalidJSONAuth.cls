@isTest
global class MockAPICallerGeneratorInvalidJSONAuth implements HttpCalloutMock {
    global  HTTPResponse respond(HTTPRequest req){
        HttpResponse res = new HttpResponse();
        res.setHeader('Accept','application/json');
        res.setBody('{ccess_token":"testToken","instance_url":"testUrl","signature":"test signature", "issued_at":"testissued_at","id":"testId"}');
        res.setStatusCode(200);
        return res;
    }
}