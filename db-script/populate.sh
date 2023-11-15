#!/bin/bash
set -e

psql -h localhost -p 5432 -v --username postgres --dbname postgres <<-EOSQL
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
    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Willkommen','1'); //1
    
    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Verben','alle') //2

    INSERT INTO CATEGORY (NAME,UNITY) VALUES ('Wortschatz (vocabulario)','alle') //3

    /*QUESTIONS & ANSWERS*/
        
        /*CATEGORY Willkommen unity 1*/
            /*Q1*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Bom noite em alemao?'); //1
            /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (1,"Gute Natcht",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (1,"Guten Abend",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (1,"Guten Morger",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (1,"Guten tag",false);

            /*Q2*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Bom dia em alemao?'); //2
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (2,"Gute Natcht",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (2,"Guten Abend",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (2,"Guten Morger",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (2,"Guten tag",false);
            
            /*Q3*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Boa tarde em alemao?'); //3
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (3,"Gute Natcht",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (3,"Guten Abend",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (3,"Guten Morger",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (3,"Guten tag",true);

            /*Q4*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Boa noite mas nao para dormir em alemao?'); //4
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (4,"Gute Natcht",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (4,"Guten Abend",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (4,"Guten Morger",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (4,"Guten tag",false);
            
            /*Q5*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como se diz o nosso nome?'); //5
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (5,"mein name ist [NAME]",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (5,"Guten Tag [NAME]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (5,"min namen ist [NAME]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (5,"bis name ist [NAME]",false);

            /*Q6*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como se diz ola?'); //6
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (6,"Hallo",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (6,"Guten Tag",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (6,"Hi",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (6,"bis",false);
            
            /*Q7*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?'); //7
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (7,"Tschüs",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (7,"bis kola",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (7,"min namen ist",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (7,"bis",false);
            
            /*Q8*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?'); //8
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (8,"Tsch",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (8,"bis kola",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (8,"aus whiedersehen",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (8,"bis",false);
            
             /*Q9*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer até amanha?'); //9
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (9,"Tsch",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (9,"bis Morgen",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (9,"aus whiedersehen",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (9,"bis",false);

             /*Q10*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer adeus em alemao?'); //10
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (10,"Tsch",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (10,"bis kola",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (10,"aus whiedersehen",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (10,"bis",false);
            
             /*Q11*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer eu venho de uma cidade ?'); //11
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (11,"Ich komme aus [Stadt]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (11,"Ich komme in [Stadt]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (11,"Ich wohne in [Stadt]",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (11,"Ich wohne aus [Stadt]",false);
            
             /*Q12*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como dizer eu venho de um pais ?'); //12
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (12,"Ich komme aus [Land]",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (12,"Ich komme in [Land]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (12,"Ich wohne in [Land]",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (12,"Ich wohne aus [Land]",false);

            /*Q13*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar de que pais uma pessoa é ?'); //13
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (13,"Woher kommen du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (13,"Woher kommst du?",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (13,"wo kommst du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (13,"wo wohne du?,false);

            /*Q14*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar de que cidade uma pessoa é?'); //14
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (14,"Woher kommen du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (14,"Woher kommst du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (14,"wo kommst du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (14,"wo wohnst du?,true);
            
            /*Q15*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (1,'Como perguntar quem uma pessoa é?'); //15
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (15,"wie heiβt du?",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (15,"wie heiβe du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (15,"wie geths du?",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (15,"wo bin du?",false);

        /*CATEGORY Verben alle*/
            /*Q1*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (wohnen)'); //16
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (16,"wohne",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (16,"wohnst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (16,"wohnt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (16,"wohnen",false);
            
            /*Q2*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (wohnen)'); //17
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (17,"wohne",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (17,"wohnst",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (17,"wohnt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (17,"wohnen",false);
            
            /*Q3*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (wohnt)'); //18
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (18,"wohne",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (18,"wohnst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (18,"wohnt",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (18,"wohnen",false);
            
            /*Q4*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (wohnen)'); //19
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (19,"wohne",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (19,"wohnst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (19,"wohnt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (19,"wohnen",false);
            
            /*Q5*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (kommen)'); //20
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (20,"komme",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (20,"kommst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (20,"kommt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (20,"kommen",false);
            
            /*Q6*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (kommen)'); //21
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (21,"komme",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (21,"kommst",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (21,"kommt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (21,"kommen",false);
            
            /*Q7*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (kommen)'); //22
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (22,"komme",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (22,"kommst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (22,"kommt",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (22,"kommen",false);
            
            /*Q8*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (kommen)'); //23
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (23,"komme",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (23,"kommst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (23,"kommt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (23,"kommen",true);
            
            /*Q9*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Ich (heiβen)'); //24
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (24,"heiβe",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (24,"heiβst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (24,"heiβt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (24,"heiβen",false);
            
             /*Q10*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Du (heiβen)'); //25
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (25,"heiβe",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (25,"heiβst",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (25,"heiβt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (25,"heiβen",false);
            
             /*Q11*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'er/sie (heiβen)'); //26
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (26,"heiβe",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (26,"heiβst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (26,"heiβt",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (26,"heiβen",false);
            
             /*Q12*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (2,'Sie (heiβen)'); //27
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (27,"heiβe",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (27,"heiβst",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (27,"heiβt",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (27,"heiβen",true);
        
        /*CATEGORY Wortschatz(Vocabulario)*/
            /*Q13*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'heiβen'); //28
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (28,"ser",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (28,"ouvir",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (28,"dancar",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (28,"existencia",false);
            
             /*Q14*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'kommen'); //29
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (29,"ser",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (29,"ser de um pais",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (29,"ser de uma cidade",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (29,"existencia em algo",false);
            
            /*Q15*/
            INSERT INTO QUESTION (ID_CATEGORY,QUESTION) VALUES (3,'wohnen'); //30
                /*ANSWERS*/
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (30,"ser",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (30,"ser de um pais",false);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (30,"ser de uma cidade",true);
                INSERT INTO ANSWER (ID_QUESTION,ANSWER,NATURE) VALUES (30,"existencia em algo",false);
EOSQL   