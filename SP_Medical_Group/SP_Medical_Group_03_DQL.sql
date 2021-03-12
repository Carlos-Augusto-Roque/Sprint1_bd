USE SP_Medical_Group;

-- mostrar quantidade de usu�rios
SELECT COUNT(IdUsuario)AS QuantidadeDeUsuarios FROM Usuarios ;

--converter a data de nascimento do usu�rio para formato mm-dd-aa na exibi��o
SELECT NomePaciente AS Paciente, DataNascimento FROM Pacientes;
SELECT NomePaciente AS Paciente, CONVERT(VARCHAR(10),DataNascimento,3) AS DataNascimento FROM Pacientes ;

--criar fun��o para retornar a quantidade de m�dicos de uma determinada especialidade
--consultando todos os medicos
SELECT * FROM Medicos;

--consultando medicos,suas especialidades CRMs e clinicas que fazem atendimentos
SELECT Medicos.NomeMedico AS [M�dico],Especialidades.DescricaoEspecialidade AS Especialidade,Medicos.CRM,Clinicas.NomeFantasia AS Atendimento FROM Medicos
INNER JOIN Especialidades
ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade
INNER JOIN Clinicas
ON Medicos.IdClinica = Clinicas.IdClinica;

--consultando a quantidade de m�dicos de uma determinada especialidade somente com script
SELECT COUNT(IdMedico) AS Quantidade_Medicos FROM Medicos
INNER JOIN Especialidades
ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade AND DescricaoEspecialidade = 'Pediatria';

--consultando a quantidade de m�dicos de uma determinada especialidade chamando a funcao criada
SELECT dbo.Q_Med_Esp('Pediatria') AS Quantidade_Medicos;

--criar fun��o para retornar a idade do usu�rio a partir de uma determinada procedure
EXECUTE Idade 'Mariana';

--consultando pacientes e suas consultas registradas (todos os status)
SELECT Pacientes.NomePaciente,Medicos.NomeMedico,Consultas.DataConsulta,Consultas.HorarioConsulta,StatusConsultas.DescricaoStatusConsulta AS [Status],Consultas.DescricaoAtendimento
FROM Consultas
INNER JOIN Pacientes
ON Pacientes.IdPaciente = Consultas.IdPaciente
INNER JOIN StatusConsultas
ON Consultas.IdStatusConsulta = StatusConsultas.IdStatusConsulta
INNER JOIN Medicos
ON Medicos.IdMedico = Consultas.IdMedico
WHERE Pacientes.NomePaciente = 'Mariana';