import ballerina/http;

configurable string name = ?;
configurable string message = ?;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .() returns Greeting {
        Greeting greetingMessage = {"from": "Choreo", "to": name, "message": message};
        return greetingMessage;
    }
}
