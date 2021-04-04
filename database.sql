
CREATE SEQUENCE pi3.time_id_seq;

CREATE TABLE pi3.Time (
                id BIGINT NOT NULL DEFAULT nextval('pi3.time_id_seq'),
                Estado VARCHAR NOT NULL,
                CONSTRAINT timeid PRIMARY KEY (id)
);


ALTER SEQUENCE pi3.time_id_seq OWNED BY pi3.Time.id;

CREATE SEQUENCE pi3.rodada_id_seq;

CREATE TABLE pi3.Rodada (
                Id BIGINT NOT NULL DEFAULT nextval('pi3.rodada_id_seq'),
                TimeId BIGINT NOT NULL,
                Pontos INTEGER NOT NULL,
                Classificacao INTEGER NOT NULL,
                DisputandoOutroCampeonato BOOLEAN NOT NULL,
                Ano VARCHAR NOT NULL,
                Rodada VARCHAR NOT NULL,
                Vitorias INTEGER NOT NULL,
                Empates INTEGER NOT NULL,
                Derrotas INTEGER NOT NULL,
                GolsPro INTEGER NOT NULL,
                GolsContra INTEGER NOT NULL,
                SaldoDeGols INTEGER NOT NULL,
                CONSTRAINT rodadaid PRIMARY KEY (Id)
);


ALTER SEQUENCE pi3.rodada_id_seq OWNED BY pi3.Rodada.Id;

CREATE TABLE pi3.FatoAproveitamento (
                TimeId BIGINT NOT NULL,
                RodadaId BIGINT NOT NULL,
                CONSTRAINT timeid PRIMARY KEY (TimeId)
);


CREATE SEQUENCE pi3.partida_id_seq;

CREATE TABLE pi3.Partida (
                id BIGINT NOT NULL DEFAULT nextval('pi3.partida_id_seq'),
                TimeId BIGINT NOT NULL,
                AdversarioId BIGINT NOT NULL,
                RodadaId BIGINT NOT NULL,
                Resultado INTEGER NOT NULL,
                GolsPro INTEGER NOT NULL,
                GolsContra INTEGER NOT NULL,
                MandoDeCampo INTEGER NOT NULL,
                Ano VARCHAR NOT NULL,
                CONSTRAINT partidaid PRIMARY KEY (id)
);


ALTER SEQUENCE pi3.partida_id_seq OWNED BY pi3.Partida.id;

CREATE TABLE pi3.ConfrontoDireto (
                id BIGINT NOT NULL,
                PartidaId BIGINT NOT NULL,
                CONSTRAINT timeid PRIMARY KEY (id)
);


ALTER TABLE pi3.ConfrontoDireto ADD CONSTRAINT time_confrontodireto_fk
FOREIGN KEY (id)
REFERENCES pi3.Time (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.FatoAproveitamento ADD CONSTRAINT time_fatoaproveitamento_fk
FOREIGN KEY (TimeId)
REFERENCES pi3.Time (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.Rodada ADD CONSTRAINT time_rodada_fk
FOREIGN KEY (TimeId)
REFERENCES pi3.Time (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.Partida ADD CONSTRAINT time_partida_fk
FOREIGN KEY (TimeId)
REFERENCES pi3.Time (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.Partida ADD CONSTRAINT time_partida_fk1
FOREIGN KEY (AdversarioId)
REFERENCES pi3.Time (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.FatoAproveitamento ADD CONSTRAINT rodada_fatoaproveitamento_fk
FOREIGN KEY (RodadaId)
REFERENCES pi3.Rodada (Id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.Partida ADD CONSTRAINT rodada_partida_fk
FOREIGN KEY (RodadaId)
REFERENCES pi3.Rodada (Id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE pi3.ConfrontoDireto ADD CONSTRAINT partida_confrontodireto_fk
FOREIGN KEY (PartidaId)
REFERENCES pi3.Partida (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;