INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name,img_uri,img_gray_uri) 
VALUES ('BootCamp HTML',
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
'https://live.staticflickr.com/2891/11619047474_71850d7f16_b.jpg');

INSERT INTO TB_OFFER(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z',1);	

INSERT INTO TB_OFFER(edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z',1);


INSERT INTO TB_NOTIFICATION(text,moment,read,route,USER_ID) VALUES ('TEXTO 1 USUARIO 1',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',FALSE,'ROTA 1 USUARIO 1',1);	
INSERT INTO TB_NOTIFICATION(text,moment,read,route,USER_ID) VALUES ('TEXTO 2 USUARIO 1',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TRUE ,'ROTA 2 USUARIO 1',1);
INSERT INTO TB_NOTIFICATION(text,moment,read,route,USER_ID) VALUES ('TEXTO 1 USUARIO 2',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',FALSE,'ROTA 1 USUARIO 2',2);	
INSERT INTO TB_NOTIFICATION(text,moment,read,route,USER_ID) VALUES ('TEXTO 2 USUARIO 2',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',FALSE,'ROTA 2 USUARIO 2',2);


INSERT INTO TB_RESOURCE (TITLE, DESCRIPTION, POSITION, IMG_URI, TYPE, OFFER_ID) VALUES (
'TRILHA HTML',
'TRILHA PRINCIPAL DO CURSO',
1 ,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
1,
1) ;       

INSERT INTO TB_RESOURCE (TITLE, DESCRIPTION, POSITION, IMG_URI, TYPE, OFFER_ID) VALUES (
'FORUM',
'Tire suas dúvidas',
2 ,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
2,
1) ;  	             

INSERT INTO TB_RESOURCE (TITLE, DESCRIPTION, POSITION, IMG_URI, TYPE, OFFER_ID) VALUES (
'LIVES',
'Lives exclusivas para a turma',
3,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
0,
1) ;   


INSERT INTO TB_SECTION (TITLE, DESCRIPTION, POSITION, IMG_URI, resource_id, prerequisite_id) VALUES (
'CAPITULO 1',
'NESTE CAPITULO VAMOS COMEÇAR',
1,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
1,
NULL);
	              	
INSERT INTO TB_SECTION (TITLE, DESCRIPTION, POSITION, IMG_URI, resource_id, prerequisite_id) VALUES (
'CAPITULO 2',
'NESTE CAPITULO VAMOS CONTINUAR',
1,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
1,
1);

INSERT INTO TB_SECTION (TITLE, DESCRIPTION, POSITION, IMG_URI, resource_id, prerequisite_id) VALUES (
'CAPITULO 3',
'NESTE CAPITULO VAMOS F',
1,
'https://upload.wikimedia.org/wikipedia/commons/e/e5/Dom-Pedro-Old-Golf-Course-Vilamoura.jpg',
1,
2);             


insert into tb_enrollment (user_id,offer_id,enroll_Moment,refund_Moment,available,only_Update ) values (
1,
1,
TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',
null,
true,
false);

insert into tb_enrollment (user_id,offer_id,enroll_Moment,refund_Moment,available,only_Update ) values (
2,
1,
TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',
null,
TRUE,
false);

insert into tb_lesson (title,position,section_id)values('Aula 1 do capitulo 1',1,1);
insert into tb_content (id, text_content, video_URI ) values (1 , 'material de apoio: abc', 'https://youtu.be/vNS-54QlcEg');

insert into tb_lesson (title,position,section_id)values('Aula 2 do capitulo 1',2,1);
insert into tb_content (id, text_content, video_URI ) values (2 , '', 'https://youtu.be/vNS-54QlcEg');

insert into tb_lesson (title,position,section_id)values('Aula 3 do capitulo 1',3,1);
insert into tb_content (id, text_content, video_URI ) values (3 , '', 'https://youtu.be/vNS-54QlcEg');

insert into tb_lesson (title,position,section_id)values('Tarefa do capitulo 1',4,1);

insert into tb_task (id,description,question_Count,approval_Count,weight,due_Date) values 
(4,'Fazer um trabalho legal',5,4,1.0,TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

insert into tb_lessons_done (lesson_id, user_id, offer_id) values (1, 1, 1);
insert into tb_lessons_done (lesson_id, user_id, offer_id) values (2, 1, 1);

insert into tb_deliver (
correct_count, feed_back,moment,status, uri, offer_id,user_id, lesson_id) values
(5,'Retorno 1',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',1,'https://youtu.be/vNS-54QlcEg',1,1,1);

insert into tb_deliver (
correct_count, feed_back,moment,status, uri, offer_id,user_id, lesson_id) values
(5,'Retorno 1',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',1,'https://youtu.be/vNS-54QlcEg',1,2,2);

insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 1','Corpo do tópico 1',TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z',1,1,1);
insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 2','Corpo do tópico 2',TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z',2,1,1);
insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 3','Corpo do tópico 3',TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z',2,1,1);
insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 4','Corpo do tópico 4',TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z',1,1,2);
insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 5','Corpo do tópico 5',TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z',1,1,2);
insert into tb_topic (title, body, moment, author_id, offer_id, lesson_id) values ('Título do tópico 6','Corpo do tópico 6',TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z',2,1,3);

insert into tb_reply (body, moment, topic_id, author_id) values ( 'Tente reiniciar o omputador',TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z',1,2);
insert into tb_reply (body, moment, topic_id, author_id) values ( 'Deu certo, valeu!'          ,TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z',1,1);

insert into tb_reply_likes(reply_id,user_id)values(1,1);

insert into tb_topic_likes(topic_id,user_id) values (1,2);
insert into tb_topic_likes(topic_id,user_id) values (2,1);