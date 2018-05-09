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
		initiateur    	Int NOT NULL ,
        adversaire  	Int NOT NULL ,
        vainqueur  		Int NOT NULL ,
        suivant  		Int NOT NULL ,
        couleurInitiateur   Int NOT NULL ,
        couleurAdversaire Int NOT NULL ,
        PRIMARY KEY (numeroPartie )
)ENGINE=InnoDB;

ALTER TABLE Partie ADD CONSTRAINT FK_initiateur FOREIGN KEY (initiateur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_adversaire FOREIGN KEY (adversaire) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_vainqueur FOREIGN KEY (vainqueur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_suivant FOREIGN KEY (suivant) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_couleurInitiateur FOREIGN KEY (couleurInitiateur) REFERENCES Couleur(numeroCouleur);
ALTER TABLE Partie ADD CONSTRAINT FK_couleurAdversaire FOREIGN KEY (couleurAdversaire) REFERENCES Couleur(numeroCouleur);
