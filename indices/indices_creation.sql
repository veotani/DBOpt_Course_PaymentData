USE [PaymentData]
GO

-- AccountType.Name
CREATE NONCLUSTERED INDEX [iName_AccountType] ON [dbo].[AccountType]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- Supplier.ProfitByMaterialAsPayer
CREATE NONCLUSTERED INDEX [iProfitByMaterialAsPayer_Supplier] ON [dbo].[Supplier]
(
	[ProfitByMaterialAsPayer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- Supplier.ProfitByMaterialAsPayee
CREATE NONCLUSTERED INDEX [iProfitByMaterialAsPayee_Supplier] ON [dbo].[Supplier]
(
	[ProfitByMaterialAsPayee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- PaymentCategory.ProfitByMaterial
CREATE NONCLUSTERED INDEX [iProfitByMaterial_Supplier] ON [dbo].[PaymentCategory]
(
	[ProfitByMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- PaymentCategory.Name
CREATE NONCLUSTERED INDEX [iName_Supplier] ON [dbo].[PaymentCategory]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- PaymentCategory.CostByMaterial
CREATE NONCLUSTERED INDEX [iCostByMaterial_Supplier] ON [dbo].[PaymentCategory]
(
	[CostByMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- PaymentCategory.NotInPaymentParticipantProfit
CREATE NONCLUSTERED INDEX [iNotInPaymentParticipantProfit_Supplier] ON [dbo].[PaymentCategory]
(
	[NotInPaymentParticipantProfit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO