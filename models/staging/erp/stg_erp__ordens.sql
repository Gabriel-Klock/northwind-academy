with
    fonte_ordens as (
        select 
        cast(ID as int) pk_pedido
        , cast(CUSTOMERID as string) as fk_cliente
        , cast(EMPLOYEEID as int) as fk_funcionario
        , cast(SHIPVIA as int) as fk_transportadora
        , cast(ORDERDATE as date) as data_do_pedido
        , cast(FREIGHT as numeric) as frete
        , cast(SHIPNAME as string) as nm_destinatario
        , cast(SHIPADDRESS as string) as endereco_destinatario
        , cast(SHIPCITY as string) as cidade_destinatario
        , cast(SHIPREGION as string) as regiao_destinatario
        , cast(SHIPCOUNTRY as string) as pais_destinatario
        , cast(shippeddate as date) as data_do_envio
        , cast(requireddate as date) as data_requerida_entrega
        from {{ source('erp', '_order_') }}
    )

    select *
    from fonte_ordens
