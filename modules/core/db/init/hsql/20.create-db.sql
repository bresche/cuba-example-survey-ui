-- begin SURVEY_POSSIBLE_ANSWER
alter table SURVEY_POSSIBLE_ANSWER add constraint FK_SURVEY_POSSIBLE_ANSWER_QUESTION_ID foreign key (QUESTION_ID) references SURVEY_QUESTION(ID)^
create index IDX_SURVEY_POSSIBLE_ANSWER_QUESTION on SURVEY_POSSIBLE_ANSWER (QUESTION_ID)^
-- end SURVEY_POSSIBLE_ANSWER
-- begin SURVEY_FILLED_SURVEY
alter table SURVEY_FILLED_SURVEY add constraint FK_SURVEY_FILLED_SURVEY_SURVEY_ID foreign key (SURVEY_ID) references SURVEY_SURVEY(ID)^
alter table SURVEY_FILLED_SURVEY add constraint FK_SURVEY_FILLED_SURVEY_USER_ID foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_SURVEY_FILLED_SURVEY_SURVEY on SURVEY_FILLED_SURVEY (SURVEY_ID)^
create index IDX_SURVEY_FILLED_SURVEY_USER on SURVEY_FILLED_SURVEY (USER_ID)^
-- end SURVEY_FILLED_SURVEY

-- begin SURVEY_SURVEY_QUESTION_LINK
alter table SURVEY_SURVEY_QUESTION_LINK add constraint FK_SSQL_SURVEY foreign key (SURVEY_ID) references SURVEY_SURVEY(ID)^
alter table SURVEY_SURVEY_QUESTION_LINK add constraint FK_SSQL_QUESTION foreign key (QUESTION_ID) references SURVEY_QUESTION(ID)^
-- end SURVEY_SURVEY_QUESTION_LINK
-- begin SURVEY_SELECTED_ANSWER
alter table SURVEY_SELECTED_ANSWER add constraint FK_SURVEY_SELECTED_ANSWER_QUESTION_ID foreign key (QUESTION_ID) references SURVEY_QUESTION(ID)^
alter table SURVEY_SELECTED_ANSWER add constraint FK_SURVEY_SELECTED_ANSWER_ANSWER_ID foreign key (ANSWER_ID) references SURVEY_POSSIBLE_ANSWER(ID)^
alter table SURVEY_SELECTED_ANSWER add constraint FK_SURVEY_SELECTED_ANSWER_FILLED_SURVEY_ID foreign key (FILLED_SURVEY_ID) references SURVEY_FILLED_SURVEY(ID)^
create index IDX_SURVEY_SELECTED_ANSWER_ANSWER on SURVEY_SELECTED_ANSWER (ANSWER_ID)^
create index IDX_SURVEY_SELECTED_ANSWER_QUESTION on SURVEY_SELECTED_ANSWER (QUESTION_ID)^
create index IDX_SURVEY_SELECTED_ANSWER_FILLED_SURVEY on SURVEY_SELECTED_ANSWER (FILLED_SURVEY_ID)^
-- end SURVEY_SELECTED_ANSWER

-- begin SURVEY_QUESTION
alter table SURVEY_QUESTION add constraint FK_SURVEY_QUESTION_CATEGORY foreign key (CATEGORY_ID) references SURVEY_CATEGORY(ID)^
create index IDX_SURVEY_QUESTION_CATEGORY on SURVEY_QUESTION (CATEGORY_ID)^
-- end SURVEY_QUESTION
