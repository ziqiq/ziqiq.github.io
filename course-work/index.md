# Course Work

- **Javascript, SQL**, [Perfect Party][Perfect Party]<br/>
  Jul/2019

  Perfect Party is a company that organizes parties.
  It receives orders from customers who are willing to hold events and fulfills them with venues and foods/decors from suppliers.
  This project is about building a database web application for the business.
  We chose to develop with the most popular database **MySQL** and server-side runtime **Node.js**, which connects to the database through `mysql` Javascript driver and handles requests through **Express.js**.
  For simplicity, the runtime also serves **HTML** pages, including query tables and forms, using `ejs` template engine.

  <br/>

- **C, ARM**, [Real-time Programming][CS452]<br/>
  May/2018

  Real-time programming is a course focusing on building an efficient kernel and completing a few time-sensitive train control tasks on it.
  The system was running on an ARM single-board computer(TS-7200).
  It has one serial port connected to a train model controller and another serial port connected to a console where humans input instructions and check system status.
  By communicating with the model controller, the system may set the power level for trains, change switch status, and receive value array for track sensors.

  The kernel implements context switch, prioritized task scheduling, inter-task messaging, and event response (UART and timer events).
  Those core functions run in kernel space, and tasks interact with them through several system calls.
  There are also a few user-space system daemon tasks such as idle task - running when no other tasks to do, name server - to help find task ids of other servers, clock server + notifier - to allow tasks to get the absolute time and sleep for a desired amount of time, and UART servers - to input or output characters to serial ports.
  To measure the efficiency of the message passing mechanism and compare the effect of different factors, we've also introduced a simple rock-paper-scissors test scenario where multiple clients (tasks) play RPS through a server.

  The first portion of the train project requires the system to move a train precisely from a random location to a sensor.
  Due to inertia, we have to figure out when to send a stop command before the train hits the target sensor.
  Hence, we developed helpers based on the kinematics model and measured trains' information such as length, wheels positions, acceleration, deceleration, and command latency, etc.

  In the second milestone, sensor attribution and track reservation system are built.
  Sensor attribution solves an issue that some sensors on the track are broken, are being broken, or are triggered by humans (accidentally or intentionally) and consequently the system loses the status of the trains.
  It is designed to dynamically determine and memorize unresponding sensors while trains are running.
  It can also filter out those unexpected sensor events so that the system is immune to naughty TAs.
  One feature we didn't make but personally very important is to support the export and import of attribution data, which could have saved us a lot of effort.
  The track reservation system enables multiple trains to run on the track simultaneously.
  It divides the entire track into segments.
  Each train needs to make sure that it is the only one in its segment at any time.
  While running, they will reserve the upcoming segment, which might be changed by switch status.
  When they cannot reserve the forward segment, they may stop and wait until it is cleared.

  In the final project, we implemented train following and tried to minimize space between them.
  We've also demostrated a stunt where multiple trains in a row split into two rows at a switch and then merge back at another switch.

  <br/>

- **Java - Swing, AWT**, [Lunar Lander Game with Terrain Editor][Lunar Lander]<br/>
  Nov/2017

  MVC pattern is used to sync terrain in [editor view and play view](lunar-lander.gif).

  <br/>

- **Java - Swing, AWT**, [Drawing Canvas][Drawing Canvas]<br/>
  Oct/2017

  [draging, rotating and scaling](canvas.gif) with affine transformation.

  <br/>

- **C++ - libX11**, [Simon][Simon]<br/>
  Oct/2017

  Game loop is used to dispatch user input event and drive ball [animation](simon.gif)/[movement](simon-enhanced.gif)

  <br/>

[CS452]: https://www.student.cs.uwaterloo.ca/~cs452/
[Perfect Party]: https://github.com/Irvingkk/Perfect-Party-Web-application/
[Lunar Lander]: https://git.uwaterloo.ca/zqing/1179-cs349/tree/master/assignments/a3
[Drawing Canvas]: https://git.uwaterloo.ca/zqing/1179-cs349/tree/master/assignments/a2
[Simon]: https://git.uwaterloo.ca/zqing/1179-cs349/tree/master/assignments/a1
