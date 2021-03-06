USE PaymentData;
--DECLARE @iter INT = 0
--DECLARE @max_iter INT = 1000

DECLARE @r_payee UNIQUEIDENTIFIER
DECLARE @r_payer UNIQUEIDENTIFIER
DECLARE @r_category UNIQUEIDENTIFIER
DECLARE @r_project UNIQUEIDENTIFIER

SET @r_payee = (SELECT TOP (1) PaymentParticipant.Oid FROM dbo.PaymentParticipant ORDER BY RAND())
SET @r_payer = (SELECT TOP (1) PaymentParticipant.Oid FROM dbo.PaymentParticipant ORDER BY RAND())
SET @r_category = (SELECT TOP (1) PaymentCategory.Oid FROM dbo.PaymentCategory ORDER BY RAND())
SET @r_project = (SELECT TOP (1) dbo.Project.Oid FROM dbo.Project ORDER BY RAND())

INSERT dbo.Payment(
	Oid, 
	Amount, 
	Category, 
	Project, 
	Justification, 
	Comment, 
	Date, 
	Payer, 
	Payee, 
	OptimisticLockField, 
	GCRecord, 
	CreateDate, 
	CheckNumber, 
	IsAuthorized, 
	Number
) VALUES (
	NEWID(), 
	79, 
	@r_category, 
	@r_project, 
	N'0P0', 
	N'Aperiam itaque voluptatem dolor molestiae.', 
	'2014-08-11 22:24:19.170', 
	@r_payer, 
	@r_payee, 
	-6673, 
	5412, 
	'1994-07-10 19:58:31.050', 
	N'20893', 
	0, 
	N'65221'
)

--SET @iter = @iter + 1;

