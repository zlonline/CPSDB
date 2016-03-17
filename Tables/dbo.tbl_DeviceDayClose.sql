CREATE TABLE [dbo].[tbl_DeviceDayClose]
(
[Id] [bigint] NOT NULL IDENTITY(1, 2) NOT FOR REPLICATION,
[DeviceId] [bigint] NOT NULL,
[OpenedDate] [datetime] NOT NULL,
[ClosedDate] [datetime] NOT NULL,
[SettlementOpenedDate] [datetime] NOT NULL,
[SettlementClosedDate] [datetime] NOT NULL,
[BatchId] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WithdrawalCount] [bigint] NOT NULL,
[InquiryCount] [bigint] NOT NULL,
[TransferCount] [bigint] NOT NULL,
[DepositCount] [bigint] NOT NULL,
[StatementCount] [bigint] NOT NULL,
[DebitPurchaseCount] [bigint] NOT NULL,
[CreditPurchaseCount] [bigint] NOT NULL,
[PreAuthorizationCount] [bigint] NOT NULL,
[PreAuthorizationCompletionCount] [bigint] NOT NULL,
[DebitMerchandiseReturnCount] [bigint] NOT NULL,
[CreditMerchandiseReturnCount] [bigint] NOT NULL,
[VoidSaleCount] [bigint] NOT NULL,
[VoidMerchandiseReturnCount] [bigint] NOT NULL,
[ReversalWithdrawalCount] [bigint] NOT NULL,
[ReversalTransferCount] [bigint] NOT NULL,
[ReversalDepositCount] [bigint] NOT NULL,
[ReversalDebitPurchaseCount] [bigint] NOT NULL,
[ReversalCreditPurchaseCount] [bigint] NOT NULL,
[ReversalPreAuthorizationCount] [bigint] NOT NULL,
[ReversalPreAuthorizationCompletionCount] [bigint] NOT NULL,
[ReversalDebitMerchandiseReturnCount] [bigint] NOT NULL,
[ReversalCreditMerchandiseReturnCount] [bigint] NOT NULL,
[ReversalVoidSaleCount] [bigint] NOT NULL,
[ReversalVoidMerchandiseReturnCount] [bigint] NOT NULL,
[WithdrawalSum] [bigint] NOT NULL,
[DepositSum] [bigint] NOT NULL,
[DebitPurchaseSum] [bigint] NOT NULL,
[CreditPurchaseSum] [bigint] NOT NULL,
[PreAuthorizationCompletionSum] [bigint] NOT NULL,
[DebitMerchandiseReturnSum] [bigint] NOT NULL,
[CreditMerchandiseReturnSum] [bigint] NOT NULL,
[VoidSaleSum] [bigint] NOT NULL,
[VoidMerchandiseReturnSum] [bigint] NOT NULL,
[ReversalWithdrawalSum] [bigint] NOT NULL,
[ReversalDepositSum] [bigint] NOT NULL,
[ReversalDebitPurchaseSum] [bigint] NOT NULL,
[ReversalCreditPurchaseSum] [bigint] NOT NULL,
[ReversalPreAuthorizationCompletionSum] [bigint] NOT NULL,
[ReversalDebitMerchandiseReturnSum] [bigint] NOT NULL,
[ReversalCreditMerchandiseReturnSum] [bigint] NOT NULL,
[ReversalVoidSaleSum] [bigint] NOT NULL,
[ReversalVoidMerchandiseReturnSum] [bigint] NOT NULL,
[SurchargeSum] [bigint] NOT NULL,
[ConvinienceSum] [bigint] NOT NULL,
[UpdatedUserId] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_DeviceDayClose] ADD CONSTRAINT [pk_DeviceDayClose] PRIMARY KEY NONCLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_DeviceDayClose_DeviceId_ClosedDate] ON [dbo].[tbl_DeviceDayClose] ([DeviceId], [ClosedDate]) ON [PRIMARY]
GO
