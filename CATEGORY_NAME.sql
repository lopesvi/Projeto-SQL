SELECT * FROM [dbo].[product_category_name_translation]

CREATE TABLE TB_ACT_OLIST_CATEGORY_NAME
(

PRODUCT_CATEGORY_NAME NVARCHAR(150),
PRODUCT_CATEGORY_NAME_ENGLISH NVARCHAR(150)

)

INSERT INTO TB_ACT_OLIST_CATEGORY_NAME
SELECT * FROM [dbo].[product_category_name_translation]

SELECT * FROM TB_ACT_OLIST_CATEGORY_NAME