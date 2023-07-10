trigger MyAccountTrigger on Account (before insert) {
        system.debug('Hello apri23');
}