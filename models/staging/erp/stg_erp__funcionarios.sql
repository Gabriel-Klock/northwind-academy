
with
    fonte_funcionarios as (
        select
            cast(ID as int) as pk_funcionario
            , cast(REPORTSTO as int) as fk_gerente
            , cast(FIRSTNAME as string) || ' ' || cast(lastname as string) as nm_funcionario
            , cast(TITLE as string) as cargo_funcionario
            , cast(BIRTHDATE as date) as dt_nascimento_funcionario
            , cast(HIREDATE as date) as dt_contratacao

        from {{source('erp', 'Employee')}}
    )
    
    select *
    from fonte_funcionarios