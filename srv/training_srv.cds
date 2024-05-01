using app.training from '../db/training';

service trainingSRV {
    entity Categories as projection on training.Categories;
    entity Courses as projection on training.Courses;
    entity Users as projection on training.Users;
    entity Enrollments as projection on training.Enrollments;
}