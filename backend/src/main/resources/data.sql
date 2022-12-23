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
INSERT INTO TB_NOTIFICATION(text,moment,read,route,USER_ID) VALUES ('TEXTO 2 USUARIO 1',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',FALSE,'ROTA 2 USUARIO 1',1);
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