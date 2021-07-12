# ProgettoIUM-Stardera
Consegna del progetto per l'esame di Interazione uomo-macchina del Gruppo 20

Stardera, per il suo funzionamento, necessita di un database denominato "dbStar" per il salvataggio dei dati persistenti.

La creazione del database deve essere impartita tramite MySQL Workbench aprendo ed avviando il file “dbStar.sql” presente nella cartella WebContent/dbStar.sql

Per popolare il database è necessare aprire e avviare il file "datiStar.sql" presente nella cartella WebContent/dbStar.sql

Affinché il database funzioni correttamente è necessario modificare il file "MySQLDAO.java" presente nella cartella StarDera/src/DAO/MySQLDAO.java

In questo file (riga 21) occorre assegnare alla stringa PASS la propria password di MySQL

Per l'avvio del sistema:  http://localhost:8080/StarDera/index.jsp 
