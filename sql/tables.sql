-- 생성자 Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   위치:        2021-01-27 10:33:40 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE account (
    "uid"     VARCHAR2(15) NOT NULL,
    upw       VARCHAR2(15) NOT NULL,
    uname     VARCHAR2(30) NOT NULL,
    uemail    VARCHAR2(50) NOT NULL,
    uphone    VARCHAR2(15) NOT NULL,
    ugender   VARCHAR2(30) NOT NULL,
    ubirth    DATE NOT NULL,
    uaddress  VARCHAR2(300) NOT NULL,
    ugrade    VARCHAR2(50) NOT NULL
);

ALTER TABLE account ADD CONSTRAINT account_pk PRIMARY KEY ( "uid" );

CREATE TABLE cart (
    "uid"  VARCHAR2(15) NOT NULL,
    pno    NUMBER(4) NOT NULL,
    cpqn   NUMBER(10) NOT NULL
);

ALTER TABLE cart ADD CONSTRAINT cart_pk PRIMARY KEY ( "uid",
                                                      pno );

CREATE TABLE direct_q (
    "uid"     VARCHAR2(15),
    qtitle    VARCHAR2(1000) NOT NULL,
    qcontent  VARCHAR2(1000) NOT NULL,
    qanswer   VARCHAR2(1000) NOT NULL,
    qno       NUMBER(4) NOT NULL
);

ALTER TABLE direct_q ADD CONSTRAINT direct_q_pk PRIMARY KEY ( qno );

CREATE TABLE faq (
    fno      NUMBER(4) NOT NULL,
    ftitle   VARCHAR2(500) NOT NULL,
    fanswer  VARCHAR2(500) NOT NULL,
    fcatid   NUMBER(4) NOT NULL,
    "uid"    VARCHAR2(15)
);

ALTER TABLE faq ADD CONSTRAINT faq_pk PRIMARY KEY ( fno );

CREATE TABLE faq_category (
    fname   VARCHAR2(300),
    fcatid  NUMBER(4) NOT NULL
);

ALTER TABLE faq_category ADD CONSTRAINT faq_category_pk PRIMARY KEY ( fcatid );

CREATE TABLE grade (
    ugrade         VARCHAR2(50) NOT NULL,
    gdiscountrate  NUMBER(5, 4) NOT NULL,
    gsaverate      NUMBER(5, 4) NOT NULL,
    gcoupon        NUMBER(3) NOT NULL,
    gcriteria      NUMBER(10) NOT NULL
);

ALTER TABLE grade ADD CONSTRAINT grade_pk PRIMARY KEY ( ugrade );

CREATE TABLE notice (
    nno          NUMBER(4) NOT NULL,
    ndate        DATE NOT NULL,
    ntitle       VARCHAR2(1000) NOT NULL,
    ncontent     VARCHAR2(3000) NOT NULL,
    account_uid  VARCHAR2(15)
);

ALTER TABLE notice ADD CONSTRAINT notice_pk PRIMARY KEY ( nno );

CREATE TABLE "order" (
    ono       NUMBER(4) NOT NULL,
    sid       NUMBER(4) NOT NULL,
    "uid"     VARCHAR2(15),
    pno       NUMBER(4),
    oaddress  VARCHAR2(300)
);

ALTER TABLE "order" ADD CONSTRAINT order_pk PRIMARY KEY ( ono );

CREATE TABLE ordered_items (
    opqn  NUMBER(4) NOT NULL,
    pno   NUMBER(4) NOT NULL,
    ono   NUMBER(4) NOT NULL
);

ALTER TABLE ordered_items ADD CONSTRAINT ordered_items_pk PRIMARY KEY ( pno,
                                                                        ono );

CREATE TABLE ordered_status (
    sid    NUMBER(4) NOT NULL,
    sname  VARCHAR2(400) NOT NULL
);

ALTER TABLE ordered_status ADD CONSTRAINT order_status_pk PRIMARY KEY ( sid );

CREATE TABLE product (
    pno          NUMBER(4) NOT NULL,
    pname        VARCHAR2(50) NOT NULL,
    pmainimg     VARCHAR2(500) NOT NULL,
    pprice       NUMBER(10) NOT NULL,
    pamount      VARCHAR2(10) NOT NULL,
    pmakingtime  VARCHAR2(20) NOT NULL,
    psubimg      VARCHAR2(500),
    pweight      NUMBER(5),
    ptitle       VARCHAR2(300),
    psubtitle    VARCHAR2(500),
    pcontent     VARCHAR2(4000)
);

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( pno );

CREATE TABLE purchase (
    "uid"           VARCHAR2(15) NOT NULL,
    upurchasecount  NUMBER(10),
    upurchasesum    NUMBER(10),
    usavemoney      NUMBER(10)
);

ALTER TABLE account
    ADD CONSTRAINT account_grade_fk FOREIGN KEY ( ugrade )
        REFERENCES grade ( ugrade );

ALTER TABLE cart
    ADD CONSTRAINT cart_account_fk FOREIGN KEY ( "uid" )
        REFERENCES account ( "uid" );

ALTER TABLE cart
    ADD CONSTRAINT cart_product_fk FOREIGN KEY ( pno )
        REFERENCES product ( pno );

ALTER TABLE direct_q
    ADD CONSTRAINT direct_q_account_fk FOREIGN KEY ( "uid" )
        REFERENCES account ( "uid" );

ALTER TABLE faq
    ADD CONSTRAINT faq_faq_category_fk FOREIGN KEY ( fcatid )
        REFERENCES faq_category ( fcatid );

ALTER TABLE faq
    ADD CONSTRAINT fid FOREIGN KEY ( "uid" )
        REFERENCES account ( "uid" );

ALTER TABLE notice
    ADD CONSTRAINT notice_account_fk FOREIGN KEY ( account_uid )
        REFERENCES account ( "uid" );

ALTER TABLE ordered_items
    ADD CONSTRAINT order_items_product_fk FOREIGN KEY ( pno )
        REFERENCES product ( pno );

ALTER TABLE "order"
    ADD CONSTRAINT order_order_status_fk FOREIGN KEY ( sid )
        REFERENCES ordered_status ( sid );

ALTER TABLE "order"
    ADD CONSTRAINT order_product_fk FOREIGN KEY ( pno )
        REFERENCES product ( pno );

ALTER TABLE ordered_items
    ADD CONSTRAINT ordered_items_order_fk FOREIGN KEY ( ono )
        REFERENCES "order" ( ono );

ALTER TABLE purchase
    ADD CONSTRAINT purchase_account_fk FOREIGN KEY ( "uid" )
        REFERENCES account ( "uid" );

ALTER TABLE "order"
    ADD CONSTRAINT "uid" FOREIGN KEY ( "uid" )
        REFERENCES account ( "uid" );



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             0
-- ALTER TABLE                             24
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
