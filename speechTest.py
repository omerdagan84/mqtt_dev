import speech_recognition as sr
import publisher as mqtt

mqtt_worker = mqtt.mqtt_handler()

r = sr.Recognizer()
m = sr.Microphone()

def command_parse(command):
    if command.startswith("daniel"):
        print ("got a valid command")
        if ("turn" in command) or ("switch" in command):
            print ("got a switch command")
            if ("on" in command):
                print ("i got a switch on command")
            elif "off" in command:
                print ("i got a switch off command")
try:
    print("connect to mqtt_broker")
    mqtt.mq_conn()
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    while True:
        print("Say something!")
        with m as source: audio = r.listen(source)
        try:
            # recognize speech using Google Speech Recognition
            value = r.recognize_google(audio)

            # we need some special handling here to correctly print unicode characters to standard output
            if str is bytes:  # this version of Python uses bytes for strings (Python 2)
                command=value.encode("utf-8")
            else:  # this version of Python uses unicode for strings (Python 3+)
                command=value
            print(command)
            command_parse(command.lower())
        except sr.UnknownValueError:
            print("Oops! Didn't catch that")
        except sr.RequestError as e:
            print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
