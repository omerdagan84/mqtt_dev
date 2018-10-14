import time
import paho.mqtt.client as paho

class mqtt_handler:
    broker="localhost"
    client = paho.Client("Speech") #define callback
    def __init__(self):
        print("initializing...")
        self.mq_conn()

    def on_message(self, userdata, message):
        time.sleep(1)
        print("received the test message =",str(message.payload.decode("utf-8")))

    def mq_conn(self):
        print("connecting to broker ",self.broker)
        self.client.connect(self.broker)#connect
        self.client.loop_start() #start loop to process received messages

    def mq_publish(self, topic, value):
        self.client.publish(topic, value)
        print ("published '%s' on topic '%s'" % (value, topic) )

    def mq_disconn(self):
        self.client.disconnect() #disconnect
