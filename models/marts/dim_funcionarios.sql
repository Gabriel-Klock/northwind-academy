with
    funcionarios as (
        select * 
        from {{ ref('stg_erp__funcionarios')}}
    )
    , joined as (
        select 
            funcionarios.PK_FUNCIONARIO
            , funcionarios.FK_GERENTE
            , funcionarios.NM_FUNCIONARIO
            , funcionarios.CARGO_FUNCIONARIO
            , funcionarios.DT_NASCIMENTO_FUNCIONARIO
            , funcionarios.DT_CONTRATACAO
            , gerentes.nm_funcionario as nm_gerente
            , gerentes.cargo_funcionario as cargo_gerente
        from funcionarios
        left join funcionarios as gerentes on funcionarios.fk_gerente = gerentes.pk_funcionario
    )

Select *
from joined
