alter table SURVEY_CATEGORY_QUESTION_LINK add constraint FK_SCQL_CATEGORY foreign key (CATEGORY_ID) references SURVEY_CATEGORY(ID);
alter table SURVEY_CATEGORY_QUESTION_LINK add constraint FK_SCQL_QUESTION foreign key (QUESTION_ID) references SURVEY_QUESTION(ID);
