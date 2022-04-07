# RentAcar!

This NodeJS program simulates a car rental. <br />
Currently live at: https://rent-a-car-live.herokuapp.com/

![RentAcar image](rentAcar.png)

## Getting Started

This program was created under Windows 10 (x64) Operative System using <br />
NodeJS 12.16.3 (+ ExpressJS 4.16.3), npm 6.14.4 and MySQL 5.7.14.

Created to be easy to use and it is fool proof (to a degree).<br />
All user inputs return success or error messages.<br />

## Prerequisites

In order to use the ExpressJS program it is highly necessary to have an _internet connection_ and install:

    - NodeJS v12.16+ (includes npm v6.14+)
    - MySQL v5.7+

i) Installing NodeJS v12.16+
It is possible that NodeJS has been already installed, to check use the following <br />
code in the command line:

    $ node --version
    [v12.16.3]

    If errors occured or NodeJS has not yet been installed please visit their
    website http://nodejs.org/en/download/ and follow the instructions there.

    1) Installing npm v6.14+
      npm comes bundled with a successful NodeJS installation,
      to check use the following code in the command line:

      $ npm --version
      [v6.14.4]

ii) Installing MySQL v5.7+

    In order to install the MySQL server on Windows please follow
    the instructions on their website http://dev.mysql.com/downloads/windows/.

    It is very important to run the file *./db/db.sql* on the server after the
    installation is complete.

iii) Testing
In order to test the program it's necessary to run the app and check if no <br />
errors were presented. The most common errors could be:

    1) NodeJS port error
      This happens when the program tries to run on a busy port,
      if that happens it is recommended to change the port number under the file *./bin/www*
      15: let port = normalizePort(process.env.PORT || '3000');

      Where 3000 is the default port used by the program.

    2) MySQL database errors
      - If the file *./db/db.sql* was never ran against the server an error would be provided.
      - A localhost/password/port/user error could be occur if the server has different configuration
      than provided by the file *./db/db.js*.

    3) Any possible error
      Could be on the computer's end. Bad installation or wrong configuration.

      Aside from the errors mentioned above everything should be working normally.

## Deployment (locally)

Before starting please populate the MySQL server using the file `db/db.sql`.

Also rename the file '.env.default' to '.env', and set in your MySQL credentials.

In order to link all npm dependencies:

```
~/rentAcar> npm i
[*installation warnings*]

[audited 173 packages in 1.253s]
[found 0 vulnerabilities]
```

In order to start the NodeJS server, execute:

```
~/rentAcar> npm start
[Database connected.]
```

Then opening the (default) website on **Google Chrome**(\*):<br />
[localhost:3000](http://localhost:3000)

## Deployment (docker)

Please assure that [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) are installed.

Also rename the file '.env.default' to '.env', and set `DB_HOST=db`.

Executing the command `docker-compose up -d --build` should start the webapp:

```
~/rentAcar> docker-compose up -d
[...]
Creating rentacar_db_1 ... done
Creating rentacar_web_1 ... done
```

Executing the command `docker-compose logs -t --follow` should provide logging.

Then opening the (default) website on **Google Chrome**(\*):<br />
[localhost:9000](http://localhost:9000)

## Versioning

Version 2.3 - Current version<br />
Version 3.0 - Pagination for SQL fetch<br />
Version 5.5(TBA) - Real e-mail verification<br />
Version 6.9(TBA) - Working Payment, Captcha and Paypal checkout demo

## Author

Lucio Afonso

## License

This project is licensed under the GPL License - see the LICENSE file for details

## Acknowledgments

Official sites:<br />
http://npmjs.com/<br />
http://mysql.com/<br />
http://jquery.com/<br />
http://nodejs.org/<br />
http://expressjs.com/<br />

Tutorials:<br />
http://w3schools.com/bootstrap/<br />
http://tutorialspoint.com/nodejs/<br />
http://mysqlclient.readthedocs.io/<br />
[http://code.tutsplus.com/](https://bit.ly/2N6J7Fc)
