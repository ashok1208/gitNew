trigger HandlerClass on Account (before insert) {

    HandlerClass.handler(trigger.new);

}