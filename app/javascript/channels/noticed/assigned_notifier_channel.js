import consumer from "channels/consumer"

consumer.subscriptions.create("Noticed::AssignedNotifierChannel", {
  connected() {
    console.log("Assigned Notifications Channel Is Now Live");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    
  }
});
