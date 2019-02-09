IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassificationTest]') AND type in (N'U'))
BEGIN
DROP TABLE [dbo].[ClassificationTest]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassificationTest](
	[SrNo] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionType] [varchar](50) NOT NULL, --text/image
	[Questions] [nvarchar](max) NULL, -- what is your name
	[imageQuestion] [image] NULL, -- Image type question
	[answerType] [int] NULL, -- 1/2 -- 1= Signgle select (Radio buttion), 2 = Multiple select (Checkbox)
	[Answer1] [nvarchar](255) NULL,
	[Answer2] [nvarchar](255) NULL,
	[Answer3] [nvarchar](255) NULL,
	[Answer4] [nvarchar](255) NULL,
	[Answer5] [nvarchar](255) NULL,
	[CorrectAnswer] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
CONSTRAINT [PK_ClassificationTest] PRIMARY KEY CLUSTERED 
(
	[SrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]