SELECT * FROM [dbo].[olist_products_dataset]

CREATE TABLE TB_ACT_OLIST_PRODUCTS
(

PRODUCT_ID NVARCHAR(150),
PRODUCT_CATEGORY_NAME NVARCHAR(100),
PRODUCT_NAME_LENGHT INT,
PRODUCT_DESCRIPTION_LENGHT INT,
PRODUCT_PHOTOS_QTY INT,
PRODUCT_WEIGHT_G INT,
PRODUCT_LENGHT_CM INT,
PRODUCT_HEIGHT_CM INT,
PRODUCT_WIDTH_CM INT

)

INSERT INTO TB_ACT_OLIST_PRODUCTS
SELECT * FROM [dbo].[olist_products_dataset]

SELECT * FROM TB_ACT_OLIST_PRODUCTS