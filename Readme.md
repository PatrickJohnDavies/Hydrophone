# Intro
This project describes the construction of stereo audio hydrophone system by builing upon the hydrophone design from [Sound Sleuth](https://www.youtube.com/watch?v=KQ_KqJDaOM4). 
Major parts of the system are:
- Hydrophone with preampifier
- Amplifier and headphone driver
- Stand for underwater stereo sound seperation 

![](/assets/images/preamp.jpg)
![](/assets/images/amp.jpg)
![](/assets/images/system.jpg)

# Release Notes:
* V0
    * Bug. Instrumentation amplifier (U1, U2) footprint is incorrent. Therefore switched to AD620. Instrumentation amplifiers with this pinout seem have lower bandwidth.
    * Bug. Q2 has its drain and source reversed.