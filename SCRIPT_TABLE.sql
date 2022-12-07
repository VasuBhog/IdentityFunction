IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductsWithIdentity]') AND type in (N'U'))
DROP TABLE [dbo].[ProductsWithIdentity]
GO

CREATE TABLE [ProductsWithIdentity] (
	[ProductId] [int] PRIMARY KEY NOT NULL IDENTITY(1,1),
	[Name] [nvarchar](100) NULL,
	[Cost] [int] NULL
)

-- Select rows from a Table or View 'ProductsWithIdentity' in schema 'SchemaName'
SELECT * FROM master.dbo.ProductsWithIdentity;