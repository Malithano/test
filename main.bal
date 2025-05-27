import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /TestIntegration on httpDefaultListener {
    resource function get getdata() returns error|json|http:InternalServerError {
        do {
            json dataresponse = check publicdata->get("");
            return dataresponse;
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
