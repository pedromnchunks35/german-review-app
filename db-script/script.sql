/*
    CREATING THE TABLES
    */
    CREATE TABLE CATEGORY (
    ID SERIAL PRIMARY KEY NOT NULL UNIQUE,
    NAME VARCHAR(200) NOT NULL,
    UNITY VARCHAR(200) NOT NULL
    );
    
    CREATE TABLE QUESTION (
        ID SERIAL PRIMARY KEY NOT NULL UNIQUE,
        ID_CATEGORY INT REFERENCES CATEGORY(ID) NOT NULL,
        QUESTION VARCHAR(200) NOT NULL
    );

    CREATE TABLE ANSWER (
        ID SERIAL PRIMARY KEY NOT NULL UNIQUE,
        ID_QUESTION INT REFERENCES QUESTION(ID) NOT NULL,
        ANSWER VARCHAR(200) NOT NULL,
        NATURE BOOLEAN NOT NULL
    );

    /*
    CATEGORYS
    */
    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Willkommen','1'); 
    
    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Verben','alle'); 

    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Wortschatz (vocabulario)','alle');

    /*QUESTIONS & ANSWERS*/
        DO $$
        DECLARE myid INT;
        BEGIN
        /*CATEGORY Willkommen unity 1*/
            /*Q1*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Boa noite em alemao?') RETURNING ID INTO myid;
            
            /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES(myid,'Gute Natcht',true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES(myid,'Guten Abend',false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Morgen', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Tag', false);

            /*Q2*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Bom dia em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Gute Natcht', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Abend', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Morgen', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten tag', false);
            
            /*Q3*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Boa tarde em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Gute Natcht', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Abend', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Morgen', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten tag', true);

            /*Q4*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Boa noite mas nao para dormir em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Gute Natcht', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Abend', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Morger', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten tag', false);
            
            /*Q5*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como se diz o nosso nome?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'mein name ist [NAME]', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Tag [NAME]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'min namen ist [NAME]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis name ist [NAME]', false);
                
            /*Q6*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como se diz ola?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Hallo', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Guten Tag', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Hi', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis', false);
            
            /*Q7*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Tschüs', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis kola', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'min namen ist', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis', false);
            
            /*Q8*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Tsch', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis kola', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'auf whiedersehen', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis', false);
            
             /*Q9*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer até amanha?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Tsch', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis Morgen', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'auf whiedersehen', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'bis', false);

             /*Q10*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (@last_question_id,"Tsch",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (@last_question_id,"bis kola",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (@last_question_id,"aus whiedersehen",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (@last_question_id,"bis",false);
            
             /*Q11*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer eu venho de uma cidade ?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich komme aus [Stadt]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich komme in [Stadt]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich wohne in [Stadt]', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich wohne aus [Stadt]', false);
            
             /*Q12*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer eu venho de um pais ?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich komme aus [Land]', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich komme in [Land]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich wohne in [Land]', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Ich wohne aus [Land]', false);

            /*Q13*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar de que pais uma pessoa é ?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Woher kommen du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Woher kommst du?', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wo kommst du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wo wohne du?', false);

            /*Q14*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar de que cidade uma pessoa é?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Woher kommen du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'Woher kommst du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wo kommst du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wo wohnst du?', true);
            
            /*Q15*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar quem uma pessoa é?') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wie heiβt du?', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wie heiβe du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wie geths du?', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wo bin du?', false);

        /*CATEGORY Verben alle*/
            /*Q1*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (wohnen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohne', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnen', false);
            
            /*Q2*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (wohnen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohne', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnst', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnen', false);
            
            /*Q3*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (wohnt)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohne', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnt', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnen', false);
            
            /*Q4*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (wohnen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohne', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'wohnen', false);
            
            /*Q5*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (kommen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                 INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'komme', true);
                 INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommst', false);
                 INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommt', false);
                 INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommen', false);
            
            /*Q6*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (kommen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'komme', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommst', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommen', false);
        
            /*Q7*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (kommen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'komme', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommt', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommen', false);
            
            /*Q8*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (kommen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'komme', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'kommen', true);
            
            /*Q9*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (heiβen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiße', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißen', false);
            
             /*Q10*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (heiβen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiße', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißt', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heißen', false);
            
             /*Q11*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (heiβen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiße', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβt', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβen', false);
            
             /*Q12*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (heiβen)') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiße', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβst', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβt', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'heiβen', true);
        
        /*CATEGORY Wortschatz(Vocabulario)*/
            /*Q13*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'heiβen') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ouvir', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'dancar', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'existencia', false);
            
             /*Q14*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'kommen') RETURNING ID_QUESTION INTO @last_question_id;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser de um país', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser de uma cidade', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'existência em algo', false);
            
            /*Q15*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'wohnen') RETURNING ID INTO myid;
            
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser de um país', false);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'ser de uma cidade', true);
                INSERT INTO ANSWER (ID_QUESTION, ANSWER, NATURE) VALUES (myid, 'existência em algo', false);
         
         END $$;