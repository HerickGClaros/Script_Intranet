create user adminMoodle with password 'Admin';
alter  role adminMoodle with superuser;
create database moodle with owner adminMoodle;

