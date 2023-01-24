import ballerinax/trigger.github;
import ballerina/http;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:IssueCommentService on webhookListener {
  
    remote function onCreated(github:IssueCommentEvent payload ) returns error? {
      //Not Implementet
    }
    remote function onEdited(github:IssueCommentEvent payload ) returns error? {
      //Not Implemente
    }
    remote function onDeleted(github:IssueCommentEvent payload ) returns error? {
      //Not Implemente
    }
}

service /ignore on httpListener {}
