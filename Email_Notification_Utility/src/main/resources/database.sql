CREATE DATABASE POC_DB;
USE POC_DB;

create table Email_Template_Config (
    id varchar(255),
    ApplicationName varchar(255),
    TemplateName varchar(255),
    Dynamic_Mail_Body varchar(4000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

INSERT INTO `poc_db`.`Email_Template_Config`
(`ID`,
`ApplicationName`,
`TemplateName`,
`Dynamic_Mail_Body`)
VALUES
('1001', 'ABC_BROADBAND', 'INVOICE_NOTIFICATION', '<!DOCTYPE html><html><body><h1>Dear #$user_name$#,</h1><p>Your bill for month of <B>#$month_info$#</B> is generated successfully.</p><p>Bill Amount : <B>#$bill_amount$#.</B></p><p>Payment Due Date : #$due_date$#.</p></body></html>'
);

INSERT INTO `poc_db`.`Email_Template_Config`
(`ID`,
`ApplicationName`,
`TemplateName`,
`Dynamic_Mail_Body`)
VALUES
('1002', 'NPS', 'Investment', '<!DOCTYPE html><html><body><h1>Dear #$user_name$#,</h1><p>Your Contrubuton in to NPS for month of <B>#$month_info$#</B> is  successfully Credited.</p><p>Investment Credited : <B>#$invested_amount$#.</B></p><p>Credited on Date : #$creditedOn$#.</p></body></html>'
);