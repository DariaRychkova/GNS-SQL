drop database if exists GNS ;

create database GNS ;
	
use GNS ;

#------------------------------------------------------------
# Table: Joueur
#------------------------------------------------------------

CREATE TABLE Joueur(
        numeroJoueur Int NOT NULL ,
        nomJoueur    Varchar (25) ,
        mdpJoueur    Varchar (25) ,
        PRIMARY KEY (numeroJoueur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Couleur
#------------------------------------------------------------

CREATE TABLE Couleur(
        numeroCouleur Int NOT NULL ,
        nomCouleur    Varchar (25) ,
        PRIMARY KEY (numeroCouleur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Partie
#------------------------------------------------------------

CREATE TABLE Partie(
        numeroPartie    Int NOT NULL ,
        dateCreation    Date ,
		initiateur    	Int  ,
        adversaire  	Int  ,
        vainqueur  		Int  ,
        suivant  		Int  ,
        couleurInitiateur   Int  ,
        couleurAdversaire Int ,
        PRIMARY KEY (numeroPartie )
)ENGINE=InnoDB;

ALTER TABLE Partie ADD CONSTRAINT FK_initiateur FOREIGN KEY (initiateur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_adversaire FOREIGN KEY (adversaire) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_vainqueur FOREIGN KEY (vainqueur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_suivant FOREIGN KEY (suivant) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_couleurInitiateur FOREIGN KEY (couleurInitiateur) REFERENCES Couleur(numeroCouleur);
ALTER TABLE Partie ADD CONSTRAINT FK_couleurAdversaire FOREIGN KEY (couleurAdversaire) REFERENCES Couleur(numeroCouleur);


insert into Joueur values(1,"Nicolas","azerty");
insert into Joueur values(2,"Ilona","azerty");
insert into Joueur values(3,"Georges","azerty");
insert into Joueur values(4,"Aicha","azerty");
insert into Joueur values(5,"Cody","azerty");


insert into Couleur values(1, "Blanc");
insert into Couleur values(2, "Noir");

insert into Partie values(1, '2018-05-01', 5, 2, 2, null, 1, 2);
insert into Partie values(2, '2018-05-01', 5, 2, 5, null, 1, 2);
insert into Partie values(3, '2018-05-01', 5, null, null, 5, 1, 2);
insert into Partie values(4, '2018-05-01', 2, null, null, null, 2, null);
insert into Partie values(5, '2018-05-02', 5, 1, null, 1, 1, 2);
insert into Partie values(6, '2018-05-02', 5, 1, null, 5, 1,2);
insert into Partie values(7, '2018-05-02', 1, null, null, null, null, 2);
insert into Partie values(8, '2018-05-02', 1, null, null, null, null, 2);
insert into Partie values(9, '2018-05-03', 5, 2, null, 2, 1, 2);
insert into Partie values(10, '2018-05-03', 2, 1, 2, null, 2, 1);
