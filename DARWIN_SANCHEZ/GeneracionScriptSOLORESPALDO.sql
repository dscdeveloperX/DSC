USE [DARWIN_SANCHEZ_DB]
GO
/****** Object:  Table [dbo].[dsc_tbl_Control]    Script Date: 2024-08-21 08:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dsc_tbl_Control](
	[ControlId] [int] IDENTITY(1,1) NOT NULL,
	[FormularioId] [int] NOT NULL,
	[Orden] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[TipoId] [nvarchar](20) NOT NULL,
	[OpcionValor1] [nvarchar](20) NULL,
	[OpcionTexto1] [nvarchar](20) NULL,
	[OpcionValor2] [nvarchar](20) NULL,
	[OpcionTexto2] [nvarchar](20) NULL,
	[OpcionValor3] [nvarchar](20) NULL,
	[OpcionTexto3] [nvarchar](20) NULL,
	[ValidRequired] [tinyint] NULL,
	[ValidRequiredMsg] [nvarchar](200) NULL,
	[ValidPattern] [tinyint] NULL,
	[ValidPatternExpReg] [nvarchar](200) NULL,
	[ValidPatternMsg] [nvarchar](200) NULL,
	[Estado] [tinyint] NOT NULL,
 CONSTRAINT [pk_dsc_tbl_Control_ControlId] PRIMARY KEY CLUSTERED 
(
	[ControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dsc_tbl_ControlTipo]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dsc_tbl_ControlTipo](
	[ControlTipoId] [nvarchar](20) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Estado] [tinyint] NULL,
 CONSTRAINT [pk_dsc_tbl_ControlTipo_ControlId] PRIMARY KEY CLUSTERED 
(
	[ControlTipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dsc_tbl_Formulario]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dsc_tbl_Formulario](
	[FormularioId] [int] IDENTITY(1000,10) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Estado] [tinyint] NULL,
 CONSTRAINT [pk_dsc_tbl_Formulario_FormularioId] PRIMARY KEY CLUSTERED 
(
	[FormularioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dsc_tbl_Control] ON 

INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (1, 1000, 1, N'fotoPersona', N'Foto de perfil :', N'file', N'', N'', N'', N'', N'', N'', 1, N'Foto de perfil es requerida', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (2, 1000, 2, N'nombrePersona', N'Nombre :', N'text', N'', N'', N'', N'', N'', N'', 1, N'Nombre es requerido', 1, N'^[A-Za-z]+$', N'Solo se permiten letras', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (3, 1000, 3, N'generoPersona', N'Genero :', N'radio', N'M', N'Masculino', N'F', N'Femenino', N'', N'', 1, N'Nombre es requerido', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (4, 1000, 4, N'fechaNacimientoPersona', N'Fecha de nacimiento :', N'date', N'', N'', N'', N'', N'', N'', 1, N'Fecha de nacimiento es requerida', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (5, 1000, 5, N'emailPersona', N'Correo Electrónico :', N'email', N'', N'', N'', N'', N'', N'', 1, N'Correo electrónico es requerido', 1, N'^[^\s@]+@[^\s@]+\.[^\s@]+$', N'Correo electronico invalido', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (6, 1000, 6, N'edadActualPersona', N'Edad Actual :', N'number', N'', N'', N'', N'', N'', N'', 1, N'Edad actual es requerida', 1, N'^[1-9][0-9]*$', N'Edad actual debe ser mayor a 0', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (7, 1010, 1, N'fotoMascota', N'Foto de Mascota :', N'file', N'', N'', N'', N'', N'', N'', 1, N'Foto de perfil es requerida', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (8, 1010, 2, N'nombreMascota', N'Nombre :', N'text', N'', N'', N'', N'', N'', N'', 1, N'Nombre es requerido', 1, N'^[A-Za-z]+$', N'Solo se permiten letras', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (9, 1010, 3, N'razaMascota', N'Raza :', N'text', N'', N'', N'', N'', N'', N'', 1, N'Raza es requerida', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (10, 1010, 4, N'colorMascota', N'Color :', N'color', N'', N'', N'', N'', N'', N'', 1, N'color es requerido', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (11, 1010, 5, N'pedigreeMascota', N'Pedigree :', N'checkbox', N'', N'', N'', N'', N'', N'', 1, N'pedigree es requerido', 1, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (12, 1010, 6, N'tamanoMascota', N'Tamaño :', N'radio', N'P', N'Pequeño', N'M', N'Mediano', N'G', N'Grande', 1, N'tamaño es requerida', 0, N'', N'', 1)
INSERT [dbo].[dsc_tbl_Control] ([ControlId], [FormularioId], [Orden], [Nombre], [Descripcion], [TipoId], [OpcionValor1], [OpcionTexto1], [OpcionValor2], [OpcionTexto2], [OpcionValor3], [OpcionTexto3], [ValidRequired], [ValidRequiredMsg], [ValidPattern], [ValidPatternExpReg], [ValidPatternMsg], [Estado]) VALUES (18, 1000, 1, N'apellidos', N'APELLIDOS', N'text', N'', N'', N'', N'', N'', N'', 1, N'Valor es requerido', 1, N'^[A-Za-z0-9]+$', N'Solo permite numeros y letras', 1)
SET IDENTITY_INSERT [dbo].[dsc_tbl_Control] OFF
GO
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'checkbox', N'Activar|Desactivar', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'color', N'Colores', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'date', N'Fechas', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'email', N'Correos electrónicos', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'file', N'Subir Imagenes', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'number', N'Números', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'password', N'Contraseñas', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'radio', N'Opciones', 1)
INSERT [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId], [Nombre], [Estado]) VALUES (N'text', N'Textos', 1)
GO
SET IDENTITY_INSERT [dbo].[dsc_tbl_Formulario] ON 

INSERT [dbo].[dsc_tbl_Formulario] ([FormularioId], [Nombre], [Estado]) VALUES (1000, N'Persona', 1)
INSERT [dbo].[dsc_tbl_Formulario] ([FormularioId], [Nombre], [Estado]) VALUES (1010, N'Mascota', 1)
SET IDENTITY_INSERT [dbo].[dsc_tbl_Formulario] OFF
GO
ALTER TABLE [dbo].[dsc_tbl_Control] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[dsc_tbl_ControlTipo] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[dsc_tbl_Formulario] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[dsc_tbl_Control]  WITH CHECK ADD  CONSTRAINT [fk_dsc_tbl_Control_FormularioId] FOREIGN KEY([FormularioId])
REFERENCES [dbo].[dsc_tbl_Formulario] ([FormularioId])
GO
ALTER TABLE [dbo].[dsc_tbl_Control] CHECK CONSTRAINT [fk_dsc_tbl_Control_FormularioId]
GO
ALTER TABLE [dbo].[dsc_tbl_Control]  WITH CHECK ADD  CONSTRAINT [fk_dsc_tbl_Control_TipoId] FOREIGN KEY([TipoId])
REFERENCES [dbo].[dsc_tbl_ControlTipo] ([ControlTipoId])
GO
ALTER TABLE [dbo].[dsc_tbl_Control] CHECK CONSTRAINT [fk_dsc_tbl_Control_TipoId]
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_DeleteControl]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dsc_sp_DeleteControl](
@ControlId int
)
as
begin
DELETE FROM dsc_tbl_Control
where ControlId = @ControlId;
END
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_InsertControl]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dsc_sp_InsertControl](
@FormularioId int
,@Orden int
,@Nombre nvarchar(100)
,@Descripcion nvarchar(200)
,@TipoId nvarchar(20)
,@OpcionValor1 nvarchar(20)
,@OpcionTexto1 nvarchar(20)
,@OpcionValor2 nvarchar(20)
,@OpcionTexto2 nvarchar(20)
,@OpcionValor3 nvarchar(20)
,@OpcionTexto3 nvarchar(20)
,@ValidRequired tinyint
,@ValidRequiredMsg nvarchar(200)
,@ValidPattern tinyint
,@ValidPatternExpReg nvarchar(200)
,@ValidPatternMsg nvarchar(200)
,@Estado tinyint
)
as
begin
INSERT INTO dsc_tbl_Control(FormularioId,Orden,Nombre,Descripcion,TipoId,OpcionValor1,OpcionTexto1,OpcionValor2,OpcionTexto2,OpcionValor3,OpcionTexto3,ValidRequired,ValidRequiredMsg,ValidPattern,ValidPatternExpReg,ValidPatternMsg,Estado)
VALUES(@FormularioId,@Orden,@Nombre,@Descripcion,@TipoId,@OpcionValor1,@OpcionTexto1,@OpcionValor2,@OpcionTexto2,@OpcionValor3,@OpcionTexto3,@ValidRequired,@ValidRequiredMsg,@ValidPattern,@ValidPatternExpReg,@ValidPatternMsg,@Estado);
END
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_SelectControl]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[dsc_sp_SelectControl](
@FormularioId int = null,
@ControlId int = null,
@Estado tinyint = null
)
as
begin
SELECT c.ControlId
      ,c.FormularioId
      ,c.Orden
      ,c.Nombre
      ,c.Descripcion
      ,c.TipoId
	  ,ct.Nombre as TipoNombre
      ,c.OpcionValor1
      ,c.OpcionTexto1
      ,c.OpcionValor2
      ,c.OpcionTexto2
      ,c.OpcionValor3
      ,c.OpcionTexto3
      ,c.ValidRequired
      ,c.ValidRequiredMsg
      ,c.ValidPattern
      ,c.ValidPatternExpReg
      ,c.ValidPatternMsg
      ,c.Estado
  FROM dsc_tbl_Control c inner join dsc_tbl_ControlTipo ct on (c.TipoId = ct.ControlTipoId)
  where (@FormularioId is null or c.FormularioId = @FormularioId) and
  (@ControlId is null or c.ControlId = @ControlId) and
  (@Estado is null or c.Estado = @Estado)
  order by FormularioId, c.Orden;
  end
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_SelectControlTipo]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dsc_sp_SelectControlTipo]
as
begin
SELECT ControlTipoId,Nombre,Estado
  FROM dsc_tbl_ControlTipo
  ORDER BY Nombre;
END
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_SelectFormulario]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dsc_sp_SelectFormulario]
as
begin
SELECT FormularioId,Nombre,Estado
  FROM dsc_tbl_Formulario
  ORDER BY Nombre;
END
GO
/****** Object:  StoredProcedure [dbo].[dsc_sp_UpdateControl]    Script Date: 2024-08-21 08:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[dsc_sp_UpdateControl](
@ControlId int
--,@FormularioId int
,@Orden int
,@Nombre nvarchar(100)
,@Descripcion nvarchar(200)
,@TipoId nvarchar(20)
,@OpcionValor1 nvarchar(20)
,@OpcionTexto1 nvarchar(20)
,@OpcionValor2 nvarchar(20)
,@OpcionTexto2 nvarchar(20)
,@OpcionValor3 nvarchar(20)
,@OpcionTexto3 nvarchar(20)
,@ValidRequired tinyint
,@ValidRequiredMsg nvarchar(200)
,@ValidPattern tinyint
,@ValidPatternExpReg nvarchar(200)
,@ValidPatternMsg nvarchar(200)
,@Estado tinyint
)
as
begin
UPDATE dsc_tbl_Control
SET 
--FormularioId=@FormularioId
Orden=@Orden
,Nombre=@Nombre
,Descripcion=@Descripcion
,TipoId=@TipoId
,OpcionValor1=@OpcionValor1
,OpcionTexto1=@OpcionTexto1
,OpcionValor2=@OpcionValor2
,OpcionTexto2=@OpcionTexto2
,OpcionValor3=@OpcionValor3
,OpcionTexto3=@OpcionTexto3
,ValidRequired=@ValidRequired
,ValidRequiredMsg=@ValidRequiredMsg
,ValidPattern=@ValidPattern
,ValidPatternExpReg=@ValidPatternExpReg
,ValidPatternMsg=@ValidPatternMsg
,Estado=@Estado
where ControlId = @ControlId;
END
GO
