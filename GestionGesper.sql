1)create user "Dupond" identified by "gesper"
grant select on gesper.* to Dupond

2)create user "Dubois" identified by "gesper";
grant select on gesper.* to Dubois;
grant update on gesper.employe to Dubois;
grant update on gesper.service to Dubois;

3)create user "Dupuis" identified by "gesper";
grant select on gesper.* to Dupuis;
grant update on gesper.* to Dupuis;

4)Select emp_nom, emp_prenom 
from employe;

5)select ser_designation 
from service;

6)select emp_nom, ser_designation 
from employe, service 
where employe.emp_id = service.ser_id

7)select emp_nom, emp_prenom 
from employe 
where emp_sexe = "M";

8)select emp_nom, emp_prenom, emp_salaire
from employe 
where emp_sexe = "F" 
and emp_salaire > 3000

9)select emp_nom, emp_prenom 
from employe 
where emp_cadre = true;

10)select emp_nom, emp_prenom 
from employe 
where emp_nom like "%Du%";

11) select emp_nom, emp_prenom, ser_designation 
from employe, service 
where employe.emp_service = service.ser_id 
and ser_designation like "%Atelier%";

12)select ser_id, ser_designation 
from service where ser_budget > 0;

13)select emp_nom, emp_prenom 
from employe order by emp_nom;

14)select emp_nom, emp_prenom 
from employe 
order by length(emp_nom);

15)select emp_nom, emp_prenom 
from employe 
order by emp_sexe, emp_prenom;

16)select count(*) 
from employe 
where emp_cadre=true;

17)select max(emp_salaire), min(length(emp_nom)), avg(emp_salaire) 
from employe;

18)select sum(emp_salaire) 
from employe where emp_cadre=true;

19)select pos_diplome, count(pos_employe), dip_libelle 
from posseder, diplome 
where dip_id = pos_diplome 
group by dip_libelle;

20)select emp_nom, emp_prenom, ser_designation 
from employe, service 
where employe.emp_service = service.ser_id 
and ser_id=1;

21)select ser_designation, count(ser_designation), avg(emp_salaire) 
from employe,service where emp_service=ser_id 
group by emp_service;

22)select emp_nom, emp_prenom, emp_salaire 
from employe 
where emp_salaire > (select avg(emp_salaire) from employe) 
group by emp_service;

24)select emp_nom, emp_prenom 
from employe
where emp_id not in ( select pos_employe from posseder);

25)Grant INSERT on gesper.diplome to Dupond, Dubois, Dupuis;
	Insert into dipolome values("4", "Master");
	
26)Grant delete on employe to Dupuis;
Revoke delete on employe from Dupuis;

27) Grant insert on gesper.* to Dupuis;
Insert into employe values (13,"Colin","Hubert","M",true,5800,3);

28) Grant delete on employe to Dupuis;
delete from employe where emp_nom = "Collin";