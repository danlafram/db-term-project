-- 1. Lister les le numéro et nom des cliniques, leur adresse et leur gestionnaire, ordonnés par le numéro de clinique 
SELECT cliniquesNum, Name, address, gestionnaireId
     FROM cliniques
     ORDER BY cliniqueNom

-- 2. Lister les noms des animaux sans doublons dans toutes les cliniques 
SELECT DISTINCT name 
	from animals;

-- 3. Lister les numéros et noms des propriétaires d’animaux ainsi que les détails de leurs animaux dans une clinique donnée (à vous de la choisir) 
SELECT O.ownerNum, O.fname, O.lname, A*
       FROM owner O, animaux A 
       WHERE O.ownerNum = A.ownerNum

-- 4. Lister l’ensemble des examens d’un animal donné
SELECT * 
	FROM exams 
	WHERE animalNo = 3;

-- 5. Lister le détail des traitements d’un animal suite à un examen donné 
SELECT treatmentId, examId
       FROM results 

-- 6. Lister le salaire total des employés par clinique ordonné par numéro de clinique
SELECT SUM(salary) 
	FROM employees
	WHERE cliniqueNum = 1;

-- 7. Lister le nombre total d’animaux d’un type donné (vous pouvez le choisir) dans chaque clinique 
SELECT SUM(*)
       FROM Animals
       WHERE type LIKE '%dog%'
       GROUP BY cliniqueNum

-- 8. Lister le coût minimum, maximum et moyen des traitements
SELECT 
	MIN(treatment_price) AS minimum,
	MAX(treatment_price) AS maximum,
	AVG(treatment_price) AS average
	FROM results;

-- 9. Quels sont les noms des employés de plus de 50 ans ordonnés par nom ?
SELECT fname, lname
     FROM employees
     WHERE age>50

-- 10. Quels sont les propriétaires dont le nom contient « blay » ? 
SELECT *
	FROM owners
	WHERE fname LIKE '%blay%' OR lname LIKE '%blay%';

-- 11. Supprimez le vétérinaire « Jean Tremblay » 

DELETE FROM employee
       WHERE (fname='Jean' AND lname='Tremblay') AND fonction='veterinaire'
-- 12. Lister les détails des propriétaires qui ont un chat et un chien
SELECT *
	FROM owners
	INNER JOIN animals ON owners.ownerNum = animals.ownerNum
	WHERE animals.type LIKE '%dog%' AND animals.type LIKE '%cat%';

-- 13. Lister les détails des propriétaires qui ont un chat ou un chien
SELECT *
	FROM owners
	INNER JOIN animals ON owners.ownerNum = animals.ownerNum
	WHERE animals.type LIKE '%dog%' OR animals.type LIKE '%cat%';


-- 14. Lister les détails des propriétaires qui ont un chat mais pas de chien vacciné contre la grippe
-- (la condition vacciné contre la grippe ne s’applique qu’au chien)

SELECT *
	FROM owners
	INNER JOIN animals ON owners.ownerNum = animals.ownerNum
	WHERE animalNum IN
	(
	SELECT animalNum
		FROM results
		INNER JOIN animals ON results.animalNum = animals.animalNum
		WHERE results.treatmentId = T112 AND animal.type LIKE '%cat%';
	);

--15.Lister tous les animaux d’une clinique donnée avec leurs traitements s’ils existent. Dans le cas contraire, affichez null.
SELECT
      FROM animal
      WHERE animalNo IN
      (SELECT r.animalNO, t.treatmentId
          FROM results r RIGHT JOIN  treatment t
          ON r.treatmentId = t.treatmnetId)
