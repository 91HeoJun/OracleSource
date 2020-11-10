
-- ��������(DDL �ۼ�)
-- 1. NOT NULL
CREATE TABLE TABLE_NOTNULL(
    LOGIN_ID VARCHAR2(20) NOT NULL,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20)
    );
    
INSERT INTO TABLE_NOTNULL(LOGIN_ID, LOGIN_PWD)
VALUES('HONG1234', 'HONG1234');

INSERT INTO TABLE_NOTNULL(LOGIN_ID, LOGIN_PWD)
VALUES('KANG1234', NULL);

UPDATE TABLE_NOTNULL SET login_pwd = NULL WHERE login_id='HONG1234';

SELECT * FROM TABLE_NOTNULL;

-- �������� Ȯ���ϱ�
SELECT * FROM user_constraints;

-- �������Ǹ� �����ϱ�
CREATE TABLE TABLE_NOTNULL2(
    LOGIN_ID VARCHAR2(20) CONSTRAINT TBL_NN_LOGIND_NN NOT NULL,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TBL_NN_LOGINPWD_NN NOT NULL,
    TEL VARCHAR2(20)
    );
    SELECT * FROM user_constraints;
    
-- �������� �߰�
ALTER TABLE TABLE_NOTNULL2 MODIFY(TEL NOT NULL);

-- �������� �̸� �߰� ��
ALTER TABLE TABLE_NOTNULL2 MODIFY(TEL CONSTRAINT TBL_NN_TEL_NN NOT NULL);
-- �������� �̸� ����
ALTER TABLE TABLE_NOTNULL2 RENAME CONSTRAINT SYS_C0012158 TO TBL_NN_TEL_NN;

-- �������� ����
ALTER TABLE TABLE_NOTNULL2 DROP CONSTRAINT TBL_NN_TEL_NN;

-- ������ NULL���� �� �ʵ尡 ���� ��� UPDATE �Ұ�
UPDATE TABLE_NOTNULL SET TEL = '010-1111-2222' WHERE LOGIN_ID = 'HONG1234';
ALTER TABLE TABLE_NOTNULL MODIFY(TEL NOT NULL);
