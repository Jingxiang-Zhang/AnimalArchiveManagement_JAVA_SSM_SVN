### Introduction

This project was the Software Engineering course project, and there were 6 members in our project team. We use SVN as project management tool, and Myeclipse as our development tool. This project was developed by Java, SSM framework, and use MySQL as back-end database. Before programming, we did tons of project analysis to ensure rationality and correctness, such as business research, requirements analysis, etc. Although we have 6 members in the group, we fully take part in every step of our project, to make sure we can learn as much as we can in the Software Engineering course.

### Background Information

Animal models (e.g., mice, rats) and humans have the same property, and it is useful in research. There are thousands of animal models in one research facility, and it is a big problem to manage those animals. Therefore, it is necessary to develop a animal archive management system to record and manage the animals, such as the weight of animal, the time of doing experiment, and so on.

Before develop the system, we do a minute investigation, write a detailed development plan, and use Rational Rose as Unified Modeling Language (UML). The documents are as follow:

- Business Research Report
- Requirements Analysis Report
- Design Summary Report.
- Database Design Report
- Detail Design Report
- Encoding Specification.
- Software Manual


### Demonstration

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/login.png">
</div>

To make our login page distinctive and stand out of other group, I append a new front page with the Matrix feature.

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/background.gif">
</div>

There are 6 main modules in our system, each of our group member developed one part of the system:
- File append
- File update
- File query
- File initiation
- File authority management
- File advertising

My work was to developed file update module. So, I will only demonstrate this part. User could edit or delete 5 types of file in the system, which are:
- Animal archive
- Animal experiment archive
- Animal health archive
- Animal breed archive
- Animal feed archive

The main interface of my file update module:

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/main.png">
</div>

Take the animal archive for a example, the picture below demonstrate how the user edit the animal archive file:

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/file_edit.png">
</div>

Delete animal archive file:

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/file_del.png">
</div>

Each time when a user edit or delete a file, there will be a log record in the database, and super administer can view all the logs:

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/log.png">
</div>

Delete a file is dangerour. So, a user could not delete a file directly, he can only submit an application to delete a file. The manager could view  all the delete file application, and decide whether approve the application to delete the file, or refuse the application to keep the file.

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/check.png">
</div>

## SVN Configuration

SVN is a project management tool, like git. The different between SVN and git is that, SVN is a centralized tool, you will need a server to install SVN and all the user need to connect to this SVN server, while git is a distributed tool, all user have a complete project development history.

This part was done by me.

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/img/SVN.png">
</div>

This is my [note](https://github.com/Jingxiang-Zhang/AnimalArchiveManagement_JAVA_SSM_SVN/blob/main/note/SVN%20Configuration.pdf) about SVN.

### How to Use

- First, you will need to import the generated data to MySQL, which is animalarchive.sql. 
- Then, set the database connection string in /code/src/main/resources/jdbc.properties. 
- Finally, you can choose the two options from below:
  - Set up a maven project in Myeclipse and import the project.
  - Copy animalarchive.war into Tomcat webapps folder and start up Tomcat.
