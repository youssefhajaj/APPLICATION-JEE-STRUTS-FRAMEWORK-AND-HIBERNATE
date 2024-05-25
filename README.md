# Simple Application using JEE, Struts Framework, and Hibernate

This is a simple web application built using Java Enterprise Edition (JEE), Struts Framework, and Hibernate. The application demonstrates basic CRUD (Create, Read, Update, Delete) operations on a database.

## Prerequisites

Before running the application, ensure you have the following installed:

- Java Development Kit (JDK)
- Apache Maven
- Apache GlassFish Server
- MySQL Server (or any other supported database)
- Git

## Language de Programmation 

<p>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0B7_byWCiHBQYhxZzn0ozeTDbraPXd7Uhh9KXzo2-xQ&s" width="200" />
<img src="https://upload.wikimedia.org/wikipedia/fr/thumb/6/62/MySQL.svg/1200px-MySQL.svg.png" width="200" />
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpT2Lfh9z6ZUcnJE6EDU4ucJcxSY9uVS8_tuVK2cUkQA&s" width="200" />
</p>

## FrameWork

  - Hibernate
  - Struts

## IDE 

  - netbeans
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbcVU8vEisvQlKU7bWkNKXNq3p86AuVsqWQNip0V21N1kf4IsQfveoHXXXA9rlROj2Kx4&usqp=CAU" width="200">

## server

  - GlassFish Server 4.1.1

## web server 

  - xampp
<img src="https://c.clc2l.com/c/thumbnail280/t/x/a/xampp-2MM13M.png" width="200">

## First you need to start the xampp server and create this data base

<img src="/ScreenShots/db_fields.png" width="500">

## Make sure the server mysql is running on the port 3306

<img src="/ScreenShots/xampp.png" width="500">

## Now open your IDE and make sure to have these libraries

<img src="/ScreenShots/libraries.png" width="500">
<img src="/ScreenShots/libraries 2.png" width="500">

## Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/youssefhajaj/APPLICATION-JEE-STRUTS-FRAMEWORK-AND-HIBERNATE.git
    ```

2. Go inside the folder:

    ```bash
    cd APPLICATION-JEE-STRUTS-FRAMEWORK-AND-HIBERNATE/project
    ```

3. Install the necessary dependencies using Maven:

    ```bash
    mvn clean install
    ```

4. Deploy the application to the GlassFish server:

    - Open GlassFish Server administration console.
    - Deploy the `project.war` file generated in the `target` directory.

5. Start the GlassFish server:

    - Ensure that the server is running and accessible.

6. Access the application in your browser:

    - Open your web browser and navigate to `http://localhost:8080/project`.

## Note

- Ensure your database credentials in the `hibernate.cfg.xml` file match your MySQL setup.
- Make sure all necessary libraries are included in your project's build path as shown in the screenshots.
