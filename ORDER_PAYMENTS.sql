SELECT * FROM [dbo].[olist_order_payments_dataset]

CREATE TABLE TB_ACT_OLIST_ORDER_PAYMENTS

(

ORDER_ID NVARCHAR(150),
PAYMENT_SEQUENTIAL INT,
PAYMENT_TYPE NVARCHAR(30),
PAYMENT_INSTALLMENTS INT,
PAYMENT_VALUE FLOAT

)

INSERT INTO TB_ACT_OLIST_ORDER_PAYMENTS
SELECT * FROM [dbo].[olist_order_payments_dataset]

SELECT * FROM TB_ACT_OLIST_ORDER_PAYMENTS