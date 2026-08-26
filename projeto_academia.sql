use academia_experimentais;

select * from  (
select nome, dt_aula, case 
when
dt_aula >= "2026-08-01" then "ponei"
end as novos_alunos 
from visitantes) as novos_alunos
where novos_alunos is not null