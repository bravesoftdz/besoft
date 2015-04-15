--<beoperacional>
--	<versao>1.0.0</versao>
		-- PESSOA
		CREATE TABLE pessoa (
			cd_pessoa numeric(8) not null,
			nm_pessoa varchar(60) not null,
			cnpj_cpf_idestrangeiro  varchar(20) not null,
			bo_colaborador boolean,
			bo_cliente boolean,
			bo_fornecedor boolean,
			tp_status char(1) not null,
			tp_pessoa_jf char(1) not null,
			cd_endereco numeric(3) not null,
			email_envio varchar(300);
			email_nfe varchar(60);
			cd_pessoafiscalicms numeric(3) not null,
			cd_pessoafiscalipi numeric(3) not null,
			cd_pessoafiscalpis numeric(3) not null,
			cd_pessoafiscalcofins numeric(3) not null,
			cd_pessoafiscalir numeric(3) not null,
			cd_pessoafiscalinss numeric(3) not null,
			primary key (cd_pessoa)
		);
		-- PESSOA ENDERECO
		CREATE TABLE pessoaendereco (
			cd_pessoa numeric(8) not null,
			cd_endereco numeric(3) not null,
			ds_logradouro varchar(60) not null,
			nro varchar(60) not null,
			ds_cpl varchar(60),
			ds_bairro varchar(60) not null,
			cd_municipio numeric(7) not null,
			cd_uf char(2) not null,
			cd_cep numeric (8),
			cd_pais numeric(4),
			cd_indiedest numeric(1) not null,
			cd_ie numeric(14),
			cd_isuf numeric(9),
			im char(15),
			bo_entrega char(1),
			bo_faturamento char(1),
			bo_retirada char(1),
			primary key (cd_pessoa, cd_endereco)
		);
		-- MUNICIPIO
		CREATE TABLE municipio (
			cd_municipio numeric(7) not null,
			ds_municipio varchar(60) not null,
			cd_uf numeric(2) not null,
			primary key (cd_municipio)
		);

		-- ESTADO
		CREATE OR REPLACE TABLE estado (
			cd_uf numeric(2) not null,
			ds_uf char(2) not null,
			cd_pais numeric(4) not null,
			primary key (cd_uf)
		);
		-- PAIS
		CREATE TABLE pais (
			cd_pais numeric(4) not null,
			ds_pais varchar(60) not null,
			primary key (cd_pais)
		);

		-- RELACIONAMENTOS ENDERECOS
		alter table pessoaendereco add constraint fk_pessoa_endereco_municipio
		foreign key (cd_municipio) references municipio(cd_municipio);

		alter table estado add constraint fk_pais_estado
		foreign key (cd_pais) references pais(cd_pais);

		alter table municipio add constraint fk_municipio_estado
		foreign key (cd_uf) references estado(cd_uf);

		alter table pessoa add constraint fk_pessoa_endereco
		foreign key (cd_pessoa, cd_endereco) references pessoaendereco(cd_pessoa, cd_endereco);


		-- FIM RELACIONAMENTOS ENDERECOS
--</beoperacional>