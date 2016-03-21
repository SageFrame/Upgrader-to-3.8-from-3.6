GO
/****** Object:  Table [dbo].[ThemeOptions]    Script Date: 3/17/2016 10:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeOptions](
	[ThemeID] [int] IDENTITY(1,1) NOT NULL,
	[ThemeObject] [nvarchar](max) NULL,
	[TemplateName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThemeOptions] PRIMARY KEY CLUSTERED 
(
	[ThemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ThemeOptions] ON 

INSERT [dbo].[ThemeOptions] ([ThemeID], [ThemeObject], [TemplateName]) VALUES (1, N'{"LayOut": "Fluid" ,"GutterSpace": "15","Font":{"GoogleFont":"","HeadingFont":"Raleway-Medium","BodyFont":"Raleway-Regular"},"FontSize":{"BaseFontSize":"14","BaseLineHeight":"24","H1":"36","H2":"24","H3":"21","H4":"18","H5":"16","H6":"14"},"CommonStyles":{"BodyTextColor":"#575757","BodyBackgroundColor":"#fff","LinkTextColor":"#5bc0de","LinkHoverColor":"#428bca","UnderlineLinkHover":"false"},"HeadingsTextColor":{"H1color":"#555","H2color":"#555","H3color":"#555","H4color":"#555","H5color":"#555","H6color":"#555"},"ButtonsColor":{"PrimaryColor":"#428bca","SuccessColor":"#5cb85c","InfoColor":"#5bc0de","ErrorColor":"#d9534f","WarningColor":"#f0ad4e"},"StickyHeader":{"EnableHeaderSticky":"false","DisableStickyHeaderSmallScreens":"false"},"TransparentHeader":{"MakeHeaderTransparent":"false","TransparencyValue":""},"HeaderFixedSidebar": "false","ActivePattern": "","FullImageBg": "","CSSComponents":{"chkNavigation":"true", "chkForms":"false", "chkTable":"false", "chkPagination":"false"  },"RightToLeft": "false"}', N'Default-Value')
INSERT [dbo].[ThemeOptions] ([ThemeID], [ThemeObject], [TemplateName]) VALUES (2, N'{"LayOut": "Fluid" ,"GutterSpace": "15","Font":{"GoogleFont":"","HeadingFont":"Raleway-Medium","BodyFont":"Raleway-Regular"},"FontSize":{"BaseFontSize":"14","BaseLineHeight":"24","H1":"36","H2":"24","H3":"21","H4":"18","H5":"16","H6":"14"},"CommonStyles":{"BodyTextColor":"#575757","BodyBackgroundColor":"#fff","LinkTextColor":"#5bc0de","LinkHoverColor":"#428bca","UnderlineLinkHover":"false"},"HeadingsTextColor":{"H1color":"#555","H2color":"#555","H3color":"#555","H4color":"#555","H5color":"#555","H6color":"#555"},"ButtonsColor":{"PrimaryColor":"#428bca","SuccessColor":"#5cb85c","InfoColor":"#5bc0de","ErrorColor":"#d9534f","WarningColor":"#f0ad4e"},"StickyHeader":{"EnableHeaderSticky":"false","DisableStickyHeaderSmallScreens":"false"},"TransparentHeader":{"MakeHeaderTransparent":"false","TransparencyValue":""},"HeaderFixedSidebar": "false","ActivePattern": "","FullImageBg": "","CSSComponents":{"chkNavigation":"true", "chkForms":"false", "chkTable":"false", "chkPagination":"false"  },"RightToLeft": "false"}', N'Default')
INSERT [dbo].[ThemeOptions] ([ThemeID], [ThemeObject], [TemplateName]) VALUES (3, N'{"LayOut": "Fluid" ,"GutterSpace": "15","Font":{"GoogleFont":"","HeadingFont":"Raleway-Medium","BodyFont":"Raleway-Regular"},"FontSize":{"BaseFontSize":"14","BaseLineHeight":"24","H1":"36","H2":"24","H3":"21","H4":"18","H5":"16","H6":"14"},"CommonStyles":{"BodyTextColor":"#575757","BodyBackgroundColor":"#fff","LinkTextColor":"#5bc0de","LinkHoverColor":"#428bca","UnderlineLinkHover":"false"},"HeadingsTextColor":{"H1color":"#555","H2color":"#555","H3color":"#555","H4color":"#555","H5color":"#555","H6color":"#555"},"ButtonsColor":{"PrimaryColor":"#428bca","SuccessColor":"#5cb85c","InfoColor":"#5bc0de","ErrorColor":"#d9534f","WarningColor":"#f0ad4e"},"StickyHeader":{"EnableHeaderSticky":"false","DisableStickyHeaderSmallScreens":"false"},"TransparentHeader":{"MakeHeaderTransparent":"false","TransparencyValue":""},"HeaderFixedSidebar": "true","ActivePattern": "","FullImageBg": "","CSSComponents":{"chkNavigation":"true", "chkForms":"false", "chkTable":"false", "chkPagination":"false"  },"RightToLeft": "false"}', N'Left-Layout')
INSERT [dbo].[ThemeOptions] ([ThemeID], [ThemeObject], [TemplateName]) VALUES (4, N'{"LayOut": "Boxed" ,"GutterSpace": "15","Font":{"GoogleFont":"","HeadingFont":"Raleway-Medium","BodyFont":"Raleway-Regular"},"FontSize":{"BaseFontSize":"14","BaseLineHeight":"24","H1":"36","H2":"24","H3":"21","H4":"18","H5":"16","H6":"14"},"CommonStyles":{"BodyTextColor":"#575757","BodyBackgroundColor":"#fff","LinkTextColor":"#5bc0de","LinkHoverColor":"#428bca","UnderlineLinkHover":"false"},"HeadingsTextColor":{"H1color":"#555","H2color":"#555","H3color":"#555","H4color":"#555","H5color":"#555","H6color":"#555"},"ButtonsColor":{"PrimaryColor":"#428bca","SuccessColor":"#5cb85c","InfoColor":"#5bc0de","ErrorColor":"#d9534f","WarningColor":"#f0ad4e"},"StickyHeader":{"EnableHeaderSticky":"false","DisableStickyHeaderSmallScreens":"false"},"TransparentHeader":{"MakeHeaderTransparent":"false","TransparencyValue":""},"HeaderFixedSidebar": "false","ActivePattern": "","FullImageBg": "","CSSComponents":{"chkNavigation":"true", "chkForms":"false", "chkTable":"false", "chkPagination":"false"  },"RightToLeft": "false"}', N'Boxed-Layout')
SET IDENTITY_INSERT [dbo].[ThemeOptions] OFF
/****** Object:  StoredProcedure [dbo].[usp_Theme_GetThemeOptions]    Script Date: 3/17/2016 10:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_Theme_GetThemeOptions]
@TemplateName NVARCHAR(50)

AS
BEGIN
IF EXISTS(select 1 from ThemeOptions WHERE TemplateName=@TemplateName) 
	BEGIN
	  SELECT ThemeObject FROM  ThemeOptions WHERE TemplateName=@TemplateName
	END
	ELSE
	BEGIN
	 SELECT ThemeObject FROM  ThemeOptions WHERE TemplateName='Default-Value'
	END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Theme_ResetThemeOptions]    Script Date: 3/17/2016 10:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_Theme_ResetThemeOptions]
@TemplateName NVARCHAR(50)
AS
BEGIN
DELETE FROM ThemeOptions WHERE TemplateName=@TemplateName

END

GO
/****** Object:  StoredProcedure [dbo].[usp_Theme_SaveThemeOptions]    Script Date: 3/17/2016 10:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_Theme_SaveThemeOptions]
@TemplateName NVARCHAR(50),
@ThemeObject NVARCHAR(MAX)
AS
BEGIN
	IF EXISTS(select 1 from ThemeOptions WHERE TemplateName=@TemplateName) 
	BEGIN
	   UPDATE ThemeOptions SET ThemeObject=@ThemeObject WHERE TemplateName=@TemplateName
	END
	ELSE
	BEGIN
	INSERT INTO ThemeOptions(TemplateName,ThemeObject) VALUES(@TemplateName,@ThemeObject)
	END
END
GO
