import ballerina/http;

final http:Client publicdata = check new ("https://restcountries.com/v3.1/all");
