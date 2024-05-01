namespace app.training;

using {
    Language,
    Currency,
    managed,
    temporal,
} from '@sap/cds/common';

type Str50  : String(50);
type Str100 : String(100);
type Amount : Decimal(11, 2);

entity Categories : managed {
    key id      : UUID;
        name    : Str50;
        desc    : Str100;
        Courses : Association to many Courses
                      on Courses.category = $self;
}

entity Courses : managed {
    key category : Association to Categories;
    key id       : UUID;
        name     : Str50;
        price    : Amount;
        waers    : Currency;
        spras    : Language;
        Enrollments: Association to many Enrollments on Enrollments.course = $self;
}

entity Users : managed {
    key id    : UUID;
        fname : Str50;
        lname : Str50;
        Enrollments: Association to many Enrollments on Enrollments.user = $self;
}

entity Enrollments : temporal {
    key user : Association to Users;
    key course : Association to Courses;
}
