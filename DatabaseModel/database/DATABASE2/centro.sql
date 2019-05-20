CREATE TABLE centro.Administrativo ( 
  "idAdministrativo" VARCHAR(10) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Apellidos" VARCHAR(20) NULL , 
  "Funcion" NUMERIC(4) NOT NULL , CONSTRAINT "Administrativo_PK" PRIMARY KEY ( "idAdministrativo" ) );

CREATE TABLE planMedico.AgendaCitas ( 
  "idCita" NUMERIC(4) NOT NULL , 
  "idMedicoConsulta" VARCHAR(10) NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "codSede" NUMERIC(10) NOT NULL , 
  "idMedicoPrincipal" VARCHAR(10) NULL , 
  "idPaciente" VARCHAR(10) NULL , 
  "Hora" TIME NULL , 
  "Fecha" DATE NULL , 
  "Motivo" VARCHAR(120) NULL , CONSTRAINT "AgendaCitas_PK" PRIMARY KEY ( "idPlan", "idCita" ) );

CREATE TABLE planMedico.AnexoExamen ( 
  "idExamen" NUMERIC(10) NOT NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "idAnexo" NUMERIC(4) NOT NULL , 
  "Direccion" VARCHAR(50) NULL , CONSTRAINT "AnexoExamen_PK" PRIMARY KEY ( "idExamen", "idPlan", "idAnexo" ) );

CREATE TABLE centro.Centro ( 
  "cedJuridica" VARCHAR(15) NOT NULL , 
  "Nombre" VARCHAR(20) NULL , 
  "RazonSocial" VARCHAR(50) NULL , CONSTRAINT "Centro_PK" PRIMARY KEY ( "cedJuridica" ) );

CREATE TABLE paciente.Contacto ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idContacto" NUMERIC(4) NOT NULL , 
  "Nombre" VARCHAR(20) NULL , 
  "Apellidos" VARCHAR(50) NULL , 
  "Relacion" VARCHAR(20) NULL , CONSTRAINT "Contacto_PK" PRIMARY KEY ( "idContacto", "idPaciente" ) );

CREATE TABLE centro.CorreoAdministrativo ( 
  "idAdministrativo" VARCHAR(10) NOT NULL , 
  "Correo" VARCHAR(20) NOT NULL , CONSTRAINT "CorreoAdministrativo_PK" PRIMARY KEY ( "idAdministrativo", "Correo" ) );

CREATE TABLE medico.CorreoMedico ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "Correo" VARCHAR(20) NOT NULL , CONSTRAINT "CorreoMedico_PK" PRIMARY KEY ( "idMedico", "Correo" ) );

CREATE TABLE paciente.DetalleHistorial ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idEntrada" NUMERIC(10) NOT NULL , 
  "noLinea" NUMERIC(2) NOT NULL , 
  "Detalle" VARCHAR(120) NULL , CONSTRAINT "DetalleHistorial_PK" PRIMARY KEY ( "idPaciente", "idEntrada", "noLinea" ) );

CREATE TABLE planMedico.Diagnostico ( 
  "idPlan" NUMERIC(4) NOT NULL , 
  "noEntrada" NUMERIC(4) NOT NULL , 
  "idPaciente" VARCHAR(10) NULL , 
  "idMedico" VARCHAR(10) NULL , 
  "Descripcion" VARCHAR(250) NULL , 
  "Fecha" DATE NULL , CONSTRAINT "Diagnostico_PK" PRIMARY KEY ( "idPlan", "noEntrada" ) );

CREATE TABLE centro.EncardadoXLaboratorio ( 
  "idEncargado" NUMERIC(5) NOT NULL , 
  "FechaAsignacion" DATE NULL , 
  "idLaboratorio" NUMERIC(10) NOT NULL , CONSTRAINT "EncardadoXLaboratorio_PK" PRIMARY KEY ( "idEncargado", "idLaboratorio" ) );

CREATE TABLE paciente.Encargado ( 
  "cedPaciente" VARCHAR(10) NOT NULL , 
  "cedEncargado" VARCHAR(10) NOT NULL , 
  "Nombre" VARCHAR(20) NULL , 
  "Apellidos" VARCHAR(50) NULL , CONSTRAINT "Encargado_PK" PRIMARY KEY ( "cedPaciente", "cedEncargado" ) );

CREATE TABLE centro.EncargadoLaboratorio ( 
  "idEncargado" NUMERIC(5) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Apellidos" VARCHAR(20) NULL , CONSTRAINT "EncargadoLaboratorio_PK" PRIMARY KEY ( "idEncargado" ) );

CREATE TABLE centro.EquipoLaboratorio ( 
  "idEquipo" NUMERIC(10) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Descripcion" VARCHAR(50) NULL , 
  "idLaboratorio" NUMERIC(10) NULL , CONSTRAINT "EquipoLaboratorio_PK" PRIMARY KEY ( "idEquipo" ) );

CREATE TABLE medico.Especialidad ( 
  "idEspecialidad" NUMERIC(4) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Detalle" VARCHAR(50) NULL , CONSTRAINT "Especialidad_PK" PRIMARY KEY ( "idEspecialidad" ) );

CREATE TABLE medico.EspecialidadXMedico ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "idEspecialidad" NUMERIC(4) NOT NULL , 
  "CobroBase" NUMERIC(10) NULL , CONSTRAINT "EspecialidadXMedico_PK" PRIMARY KEY ( "idMedico", "idEspecialidad" ) );

CREATE TABLE planMedico.EstadoReceta ( 
  "idEstado" NUMERIC(2) NOT NULL , 
  "Detalle" VARCHAR(10) NULL , CONSTRAINT "EstadoReceta_PK" PRIMARY KEY ( "idEstado" ) );

CREATE TABLE planMedico.Examen ( 
  "idExamen" NUMERIC(10) NOT NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "idLaboratorio" NUMERIC(10) NULL , 
  "idEspecialista" VARCHAR(10) NULL , 
  "Fecha" DATE NULL , 
  "Descripcion" VARCHAR(120) NULL , CONSTRAINT "Examen_PK" PRIMARY KEY ( "idExamen", "idPlan" ) );

CREATE TABLE facturacion.FacturaCita ( 
  "idCita" NUMERIC(4) NOT NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "Monto" MONEY NULL , 
  "Detalle" VARCHAR(250) NULL , CONSTRAINT "FacturaCita_PK" PRIMARY KEY ( "idCita", "idPlan" ) );

CREATE TABLE centro.Farmaceuta ( 
  "idFarmaceuta" NUMERIC(5) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Apellidos" VARCHAR(20) NULL , CONSTRAINT "Farmaceuta_PK" PRIMARY KEY ( "idFarmaceuta" ) );

CREATE TABLE centro.FarmaceutaXFarmacia ( 
  "idFarmaceuta" NUMERIC(5) NOT NULL , 
  "idFarmacia" NUMERIC(10) NOT NULL , 
  "FechaAsignacion" DATE NULL , CONSTRAINT "FarmaceutaXFarmacia_PK" PRIMARY KEY ( "idFarmaceuta", "idFarmacia" ) );

CREATE TABLE centro.Farmacia ( 
  "idFarmacia" NUMERIC(10) NOT NULL , 
  "codSede" NUMERIC(10) NULL , 
  "Nombre" VARCHAR(10) NULL , CONSTRAINT "Farmacia_PK" PRIMARY KEY ( "idFarmacia" ) );

CREATE TABLE centro.Funciones ( 
  "idFuncion" NUMERIC(4) NOT NULL , 
  "Descripcion" VARCHAR(20) NULL , CONSTRAINT "Funciones_PK" PRIMARY KEY ( "idFuncion" ) );

CREATE TABLE paciente.HistorialInternamiento ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "Fecha" DATE NOT NULL , 
  "Razon" VARCHAR(250) NULL , 
  "idMedicoEncargado" VARCHAR(10) NOT NULL , CONSTRAINT "HistorialInternamiento_PK" PRIMARY KEY ( "idPaciente", "idMedicoEncargado", "Fecha" ) );

CREATE TABLE paciente.HistorialMedico ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idEntrada" NUMERIC(10) NOT NULL , 
  "Fecha" DATE NULL , 
  "Resumen" VARCHAR(120) NULL , CONSTRAINT "Historial_PK" PRIMARY KEY ( "idPaciente", "idEntrada" ) );

CREATE TABLE medico.Honorarios ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "idHonorario" NUMERIC(4) NOT NULL , 
  "CobroBase" NUMERIC(10) NULL , 
  "Titulo" VARCHAR(20) NULL , 
  "Descripcion" VARCHAR(120) NULL , CONSTRAINT "Honorarios_PK" PRIMARY KEY ( "idMedico", "idHonorario" ) );

CREATE TABLE medico.Horario ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "HoraEntrada" TIME NULL , 
  "HoraSalida" TIME NULL , 
  "Dia" NUMERIC(1) NOT NULL , 
  "codSede" NUMERIC(10) NOT NULL , CONSTRAINT "Horario_PK" PRIMARY KEY ( "idMedico", "Dia", "codSede" ) );

CREATE TABLE centro.InventarioFarmacia ( 
  "idFarmacia" NUMERIC(10) NOT NULL , 
  "idMedicamento" NUMERIC(10) NOT NULL , 
  "Cantidad" NUMERIC(10) NULL , CONSTRAINT "InventarioFarmacia_PK" PRIMARY KEY ( "idFarmacia", "idMedicamento" ) );

CREATE TABLE centro.Laboratorio ( 
  "idLaboratorio" NUMERIC(10) NOT NULL , 
  "codSede" NUMERIC(10) NULL , 
  "Nombre" VARCHAR(20) NULL , 
  "tipoLaboratorio" NUMERIC(4) NULL , CONSTRAINT "Laboratorio_PK" PRIMARY KEY ( "idLaboratorio" ) );

CREATE TABLE centro.Medicamento ( 
  "idMedicamento" NUMERIC(10) NOT NULL , 
  "Nombre" VARCHAR(50) NULL , CONSTRAINT "Medicamento_PK" PRIMARY KEY ( "idMedicamento" ) );

CREATE TABLE medico.Medico ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "Nombre" VARCHAR(10) NULL , 
  "Apellidos" VARCHAR(10) NULL , CONSTRAINT "Medico_PK" PRIMARY KEY ( "idMedico" ) );

CREATE TABLE paciente.Paciente ( 
  "cedulaPaciente" VARCHAR(10) NOT NULL , 
  "FechaNacimiento" DATE NULL , 
  "EstadoCivil" VARCHAR(10) NULL , 
  "Apellidos" VARCHAR(50) NULL , 
  "Nombre" VARCHAR(20) NULL , 
  "Ocupacion" VARCHAR(10) NULL , CONSTRAINT "Paciente_PK" PRIMARY KEY ( "cedulaPaciente" ) );

CREATE TABLE planMedico.PlanMedico ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idMedico" VARCHAR(10) NOT NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "Inicio" DATE NULL , CONSTRAINT "PlanMedico_PK" PRIMARY KEY ( "idPaciente", "idMedico", "idPlan" ) );

CREATE TABLE planMedico.Receta ( 
  "idPlan" NUMERIC(4) NOT NULL , 
  "idMedico" VARCHAR(10) NULL , 
  "idPaciente" VARCHAR(10) NULL , 
  "idReceta" NUMERIC(4) NOT NULL , 
  "idMedicamento" NUMERIC(10) NULL , 
  "Dosis" VARCHAR(20) NULL , 
  "Indicaciones" VARCHAR(50) NULL , 
  "Estado" NUMERIC(2) NULL , CONSTRAINT "Receta_PK" PRIMARY KEY ( "idPlan", "idReceta" ) );

CREATE TABLE planMedico.Resultado ( 
  "idPlan" NUMERIC(4) NOT NULL , 
  "idCita" NUMERIC(4) NOT NULL , 
  "idResultado" NUMERIC(2) NOT NULL , 
  "Detalle" VARCHAR NULL , CONSTRAINT "Resultado_PK" PRIMARY KEY ( "idCita", "idResultado", "idPlan" ) );

CREATE TABLE planMedico.ResultadoExamen ( 
  "idExamen" NUMERIC(10) NOT NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "noEntrada" NUMERIC(4) NOT NULL , 
  "Detalle" VARCHAR(120) NULL , CONSTRAINT "ResultadoExamen_PK" PRIMARY KEY ( "idExamen", "idPlan", "noEntrada" ) );

CREATE TABLE centro.Sede ( 
  "codigoSede" NUMERIC(10) NOT NULL , 
  "Nombre" VARCHAR(20) NOT NULL , 
  "codCentro" VARCHAR(15) NULL , CONSTRAINT "Sede_PK" PRIMARY KEY ( "codigoSede" ) );

CREATE TABLE planMedico.SolicitudExamen ( 
  "idMedico" VARCHAR(10) NULL , 
  "idPlan" NUMERIC(4) NOT NULL , 
  "idPaciente" VARCHAR(10) NULL , 
  "idExamen" NUMERIC(10) NOT NULL , 
  "Razon" VARCHAR(20) NULL , 
  "Descripcion" VARCHAR(120) NULL , CONSTRAINT "SolicitudExamen_PK" PRIMARY KEY ( "idPlan", "idExamen" ) );

CREATE TABLE paciente.Telefono ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "Telefono" NUMERIC(8) NOT NULL , 
  "Descripcion" VARCHAR(50) NULL , CONSTRAINT "Telefono_PK" PRIMARY KEY ( "idPaciente", "Telefono" ) );

CREATE TABLE centro.TelefonoAdministrativo ( 
  "idAdministrativo" VARCHAR(10) NOT NULL , 
  "Telefono" NUMERIC(9) NOT NULL , CONSTRAINT "TelefonoAdministrativo_PK" PRIMARY KEY ( "idAdministrativo", "Telefono" ) );

CREATE TABLE paciente.TelefonoContacto ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idContacto" NUMERIC(4) NOT NULL , 
  "Telefono" VARCHAR(10) NOT NULL , 
  "Descripcion" VARCHAR(20) NULL , CONSTRAINT "TelefonoContacto_PK" PRIMARY KEY ( "idPaciente", "Telefono", "idContacto" ) );

CREATE TABLE paciente.TelefonoEncargado ( 
  "cedEncargado" VARCHAR(10) NOT NULL , 
  "Telefono" VARCHAR(9) NOT NULL , 
  "cedPaciente" VARCHAR(10) NULL , 
  "Descripcion" VARCHAR(20) NULL , CONSTRAINT "TelefonoEncargado_PK" PRIMARY KEY ( "cedEncargado", "Telefono" ) );

CREATE TABLE medico.TelefonoMedico ( 
  "idMedico" VARCHAR(10) NOT NULL , 
  "Telefono" NUMERIC(9) NOT NULL , CONSTRAINT "TelefonoMedico_PK" PRIMARY KEY ( "idMedico", "Telefono" ) );

CREATE TABLE tipos.TipoLaboratorio ( 
  "tipoLaboratorio" NUMERIC(4) NOT NULL , 
  "Descripcion" VARCHAR(20) NULL , CONSTRAINT "TipoLaboratorio_PK" PRIMARY KEY ( "tipoLaboratorio" ) );

CREATE TABLE planMedico.Valoracion ( 
  "idPaciente" VARCHAR(10) NOT NULL , 
  "idMedico" VARCHAR(10) NOT NULL , 
  "noValoracion" NUMERIC(5) NOT NULL , 
  "Fecha" DATE NULL , 
  "Detalle" VARCHAR(260) NULL , CONSTRAINT "Valoracion_PK" PRIMARY KEY ( "idPaciente", "idMedico", "noValoracion" ) );

ALTER TABLE centro.Administrativo ADD CONSTRAINT "Administrativo_FK_Funcion" FOREIGN KEY ( "Funcion" )
 REFERENCES centro.Funciones ( "idFuncion" );

ALTER TABLE planMedico.AgendaCitas ADD CONSTRAINT "AgendaCitas_FK_Medico" FOREIGN KEY ( "idMedicoConsulta" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.AgendaCitas ADD CONSTRAINT "AgendaCitas_FK_Plan" FOREIGN KEY ( "idPaciente", "idMedicoPrincipal", "idPlan" )
 REFERENCES planMedico.PlanMedico ( "idPaciente",  "idMedico",  "idPlan" );

ALTER TABLE planMedico.AnexoExamen ADD CONSTRAINT "AnexoExamen_FK_Examen" FOREIGN KEY ( "idExamen", "idPlan" )
 REFERENCES planMedico.Examen ( "idExamen",  "idPlan" );

ALTER TABLE paciente.Contacto ADD CONSTRAINT "Contacto_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE centro.CorreoAdministrativo ADD CONSTRAINT "CorreoAdministrativo_FK_Administrativo" FOREIGN KEY ( "idAdministrativo" )
 REFERENCES centro.Administrativo ( "idAdministrativo" );

ALTER TABLE medico.CorreoMedico ADD CONSTRAINT "CorreoMedico_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE paciente.DetalleHistorial ADD CONSTRAINT "DetalleHistorial_FK_HistorialMedico" FOREIGN KEY ( "idPaciente", "idEntrada" )
 REFERENCES paciente.HistorialMedico ( "idPaciente",  "idEntrada" );

ALTER TABLE planMedico.Diagnostico ADD CONSTRAINT "Diagnostico_FK_Plan" FOREIGN KEY ( "idPaciente", "idMedico", "idPlan" )
 REFERENCES planMedico.PlanMedico ( "idPaciente",  "idMedico",  "idPlan" );

ALTER TABLE centro.EncardadoXLaboratorio ADD CONSTRAINT "EncardadoXLaboratorio_FK_Encargado" FOREIGN KEY ( "idEncargado" )
 REFERENCES centro.EncargadoLaboratorio ( "idEncargado" );

ALTER TABLE centro.EncardadoXLaboratorio ADD CONSTRAINT "EncardadoXLaboratorio_FK_Laboratorio" FOREIGN KEY ( "idLaboratorio" )
 REFERENCES centro.Laboratorio ( "idLaboratorio" );

ALTER TABLE paciente.Encargado ADD CONSTRAINT "Encargado_FK_Paciente" FOREIGN KEY ( "cedPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE centro.EquipoLaboratorio ADD CONSTRAINT "EquipoLaboratorio_FK_Laboratorio" FOREIGN KEY ( "idLaboratorio" )
 REFERENCES centro.Laboratorio ( "idLaboratorio" );

ALTER TABLE medico.EspecialidadXMedico ADD CONSTRAINT "EspecialidadXMedico_FK_Especialidad" FOREIGN KEY ( "idEspecialidad" )
 REFERENCES medico.Especialidad ( "idEspecialidad" );

ALTER TABLE medico.EspecialidadXMedico ADD CONSTRAINT "EspecialidadXMedico_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.Examen ADD CONSTRAINT "Examen_FK_Laboratorio" FOREIGN KEY ( "idLaboratorio" )
 REFERENCES centro.Laboratorio ( "idLaboratorio" );

ALTER TABLE planMedico.Examen ADD CONSTRAINT "Examen_FK_Medico" FOREIGN KEY ( "idEspecialista" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.Examen ADD CONSTRAINT "Examen_FK_Solicitud" FOREIGN KEY ( "idPlan", "idExamen" )
 REFERENCES planMedico.SolicitudExamen ( "idPlan",  "idExamen" );

ALTER TABLE facturacion.FacturaCita ADD CONSTRAINT "FacturaCita_FK_Cita" FOREIGN KEY ( "idPlan", "idCita" )
 REFERENCES planMedico.AgendaCitas ( "idPlan",  "idCita" );

ALTER TABLE centro.FarmaceutaXFarmacia ADD CONSTRAINT "FarmaceutaXFarmacia_FK_Farmaceuta" FOREIGN KEY ( "idFarmaceuta" )
 REFERENCES centro.Farmaceuta ( "idFarmaceuta" );

ALTER TABLE centro.FarmaceutaXFarmacia ADD CONSTRAINT "FarmaceutaXFarmacia_FK_Farmacia" FOREIGN KEY ( "idFarmacia" )
 REFERENCES centro.Farmacia ( "idFarmacia" );

ALTER TABLE paciente.HistorialInternamiento ADD CONSTRAINT "HistorialInternamiento_FK_Medico" FOREIGN KEY ( "idMedicoEncargado" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE paciente.HistorialInternamiento ADD CONSTRAINT "HistorialInternamiento_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE paciente.HistorialMedico ADD CONSTRAINT "Historial_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE medico.Honorarios ADD CONSTRAINT "Honorarios_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE medico.Horario ADD CONSTRAINT "Horario_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE medico.Horario ADD CONSTRAINT "Horario_FK_Sede" FOREIGN KEY ( "codSede" )
 REFERENCES centro.Sede ( "codigoSede" );

ALTER TABLE centro.InventarioFarmacia ADD CONSTRAINT "InventarioFarmacia_FK_Farmacia" FOREIGN KEY ( "idFarmacia" )
 REFERENCES centro.Farmacia ( "idFarmacia" );

ALTER TABLE centro.InventarioFarmacia ADD CONSTRAINT "InventarioFarmacia_FK_Medicamento" FOREIGN KEY ( "idMedicamento" )
 REFERENCES centro.Medicamento ( "idMedicamento" );

ALTER TABLE centro.Laboratorio ADD CONSTRAINT "Laboratorio_FK_TipoLaboratorio" FOREIGN KEY ( "tipoLaboratorio" )
 REFERENCES tipos.TipoLaboratorio ( "tipoLaboratorio" );

ALTER TABLE planMedico.PlanMedico ADD CONSTRAINT "PlanMedico_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.PlanMedico ADD CONSTRAINT "PlanMedico_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE planMedico.Receta ADD CONSTRAINT "Receta_FK_Estado" FOREIGN KEY ( "Estado" )
 REFERENCES planMedico.EstadoReceta ( "idEstado" );

ALTER TABLE planMedico.Receta ADD CONSTRAINT "Receta_FK_Medicamento" FOREIGN KEY ( "idMedicamento" )
 REFERENCES centro.Medicamento ( "idMedicamento" );

ALTER TABLE planMedico.Receta ADD CONSTRAINT "Receta_FK_PlanMedico" FOREIGN KEY ( "idPaciente", "idMedico", "idPlan" )
 REFERENCES planMedico.PlanMedico ( "idPaciente",  "idMedico",  "idPlan" );

ALTER TABLE planMedico.Resultado ADD CONSTRAINT "Resultado_FK_AgendaCitas" FOREIGN KEY ( "idPlan", "idCita" )
 REFERENCES planMedico.AgendaCitas ( "idPlan",  "idCita" );

ALTER TABLE planMedico.ResultadoExamen ADD CONSTRAINT "ResultadoExamen_FK_Examen" FOREIGN KEY ( "idExamen", "idPlan" )
 REFERENCES planMedico.Examen ( "idExamen",  "idPlan" );

ALTER TABLE centro.Sede ADD CONSTRAINT "Sede_FK_Centro" FOREIGN KEY ( "codCentro" )
 REFERENCES centro.Centro ( "cedJuridica" )
 ON DELETE CASCADE;

ALTER TABLE planMedico.SolicitudExamen ADD CONSTRAINT "SolicitudExamen_FK_Plan" FOREIGN KEY ( "idPaciente", "idMedico", "idPlan" )
 REFERENCES planMedico.PlanMedico ( "idPaciente",  "idMedico",  "idPlan" );

ALTER TABLE paciente.Telefono ADD CONSTRAINT "Telefono_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );

ALTER TABLE centro.TelefonoAdministrativo ADD CONSTRAINT "TelefonoAdministrativo_FK_Administrativo" FOREIGN KEY ( "idAdministrativo" )
 REFERENCES centro.Administrativo ( "idAdministrativo" );

ALTER TABLE paciente.TelefonoContacto ADD CONSTRAINT "TelefonoContacto_FK_Contacto" FOREIGN KEY ( "idContacto", "idPaciente" )
 REFERENCES paciente.Contacto ( "idContacto",  "idPaciente" );

ALTER TABLE paciente.TelefonoEncargado ADD CONSTRAINT "TelefonoEncargado_FK_Encargado" FOREIGN KEY ( "cedPaciente", "cedEncargado" )
 REFERENCES paciente.Encargado ( "cedPaciente",  "cedEncargado" );

ALTER TABLE medico.TelefonoMedico ADD CONSTRAINT "TelefonoMedico_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.Valoracion ADD CONSTRAINT "Valoracion_FK_Medico" FOREIGN KEY ( "idMedico" )
 REFERENCES medico.Medico ( "idMedico" );

ALTER TABLE planMedico.Valoracion ADD CONSTRAINT "Valoracion_FK_Paciente" FOREIGN KEY ( "idPaciente" )
 REFERENCES paciente.Paciente ( "cedulaPaciente" );
