create table SURVEY_CATEGORY_QUESTION_LINK (
    CATEGORY_ID varchar(36) not null,
    QUESTION_ID varchar(36) not null,
    primary key (CATEGORY_ID, QUESTION_ID)
);
