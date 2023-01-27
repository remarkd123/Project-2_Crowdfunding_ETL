CREATE TABLE contacts (
    contact_id varchar(10) not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50),
    primary key (contact_id)
);

CREATE TABLE subcategory (
    subcategory_id varchar(10) not null,
    subcategory varchar(50) not null,
    primary key (subcategory_id)
);

CREATE TABLE category (
    category_id varchar(10) not null,
    category varchar(50) not null,
    primary key (category_id)
);

CREATE TABLE campaign (
    cd_id varchar(10),
    contact_id varchar(10),
    company_name varchar(100),
    description varchar(100),
    goal varchar(20),
    pledged varchar(20),
    outcome varchar(10),
    backers_count varchar(10),
    country varchar(50),
    currency varchar(20),
    launch_date date,
    end_date date,
    category_id varchar(10),
    subcategory_id varchar(10),
    primary key(cd_id)
);

ALTER TABLE campaign ADD CONSTRAINT fk_camp_contact_id FOREIGN KEY(contact_id) REFERENCES contacts(contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_camp_subcat_id FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id);

ALTER TABLE campaign ADD CONSTRAINT fk_camp_cat_id FOREIGN KEY(category_id) REFERENCES category(category_id);



select * from contacts

select * from category

select * from subcategory

select * from campaign