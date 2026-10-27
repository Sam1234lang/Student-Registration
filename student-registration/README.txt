STUDENT REGISTRATION SYSTEM (JSP + Servlet) — ECLIPSE SETUP

Requirements:
- JDK 21 (project compiler target is Java 21)
- Eclipse IDE for Enterprise Java and Web Developers
- Apache Tomcat 10.1
- Internet connection for Maven to download dependencies on first build

IMPORT INTO ECLIPSE:
1. Extract student-registration.zip.
2. Open Eclipse.
3. Choose File > Import > Maven > Existing Maven Projects > Next.
4. Browse to the extracted student-registration folder.
5. Select the pom.xml project and click Finish.
6. Wait for Maven dependencies to download.
7. If errors remain: right-click project > Maven > Update Project.

CONFIGURE TOMCAT:
1. Open Window > Show View > Servers.
2. If no server exists, click the link to create a new server (or right-click in Servers > New > Server).
3. Choose Apache > Tomcat v10.1 Server.
4. Browse to your Tomcat 10.1 installation folder and finish.
5. Right-click the server > Add and Remove > add student-registration > Finish.

RUN:
1. Right-click the project > Run As > Run on Server.
2. Select the Tomcat 10.1 server and finish.
3. Open: http://localhost:8080/student-registration/

EXPECTED RESULT:
- Registration form asks for Name, Email, and Department.
- After clicking Register, a confirmation page displays the submitted values.
- This beginner version does not store data in a database.

MAVEN COMMANDS (run in a terminal opened inside the project folder):
    mvn clean package
    mvn clean
    mvn package

The WAR file is created at:
    target/student-registration.war

DEPLOY VIA TOMCAT TERMINAL (alternative to Eclipse Run on Server):
1. Build with: mvn clean package
2. Copy target\student-registration.war to TOMCAT_HOME\webapps\
3. Run TOMCAT_HOME\bin\startup.bat
4. Open http://localhost:8080/student-registration/

NOTES:
- This uses jakarta.servlet.* and therefore needs Tomcat 10.1 (not Tomcat 9).
- If Eclipse has Java 17 selected, install/configure JDK 21 and set the project JRE:
  Project > Properties > Java Build Path > Libraries.
- If port 8080 is busy, change the Tomcat connector port or stop the other server.
