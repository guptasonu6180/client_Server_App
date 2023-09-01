# client_Server_App
1. This is the out file structure looks.
![Screenshot (38)](https://github.com/guptasonu6180/client_Server_App/assets/78613943/9872656a-32c2-48c8-8331-64a674010ffd)

2. Here first i created a card which used to display the image and having download options.
   The images are retrieve from the Datatbase and display according to each load of the file.
   ![Screenshot (39)](https://github.com/guptasonu6180/client_Server_App/assets/78613943/86aad212-161e-4c44-8f3d-05c2c429c35d)

3. At there, i upload the image in server, for this i created servlet for all the requirement and store in the database.
 ![Screenshot (40)](https://github.com/guptasonu6180/client_Server_App/assets/78613943/fbcfc68d-ace4-442b-97b4-2ba28aac9f6c)

# How to use

1. Copy the link in Your system if there is gitHub and paste it.
   https://github.com/guptasonu6180/client_Server_App.git
2. Change the branch after locating in file to the master.
3. open cmd/powershell and use build.gradle command in file .
4. note: The system have database postgreSql and having gradle configuration in system.
5. Create database as serverdb and table name as images.
6. images have id with primary key and Serial & file_path with varchar(255).
7. To start the Program , Load the application in Tomcat server 8.5 and Run
