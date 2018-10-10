import time
import paho.mqtt.client as paho

class mqtt_handler:
    broker="localhost"
    client = paho.Client("Speech") #define callback
    def __init__(self):
        print("initializing...")
        self.mq_conn()

    def on_message(client, userdata, message):
        time.sleep(1)
        print("received the test message =",str(message.payload.decode("utf-8")))

    def mq_conn(self):
        print("connecting to broker ",broker)
        self.client.connect(broker)#connect
        self.client.loop_start() #start loop to process received messages

    def mq_publish(client, topic, value):
        client.publish(topic, value)
        print ("published '%s' on topic '%s'" % (value, topic) )

    def mq_disconn(client):
        client.disconnect() #disconnect
