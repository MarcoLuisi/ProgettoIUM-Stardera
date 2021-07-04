use dbStar;

insert into utente(email, passwordUtente, nome, cognome,username) values
('robertoRossi60@gmail.com', '12345678', 'Roberto', 'Rossi', 'roberto60'),
('marioRossi60@gmail.com','12345678', 'Mario', 'Rossi', 'mario60'),
('giovannaBianchi90@gmail.com', '12345678', 'Giovanna', 'Bianchi','giovanna90'),
('giacomoNeri97@gmail.com', '12345678', 'Giacomo', 'Neri','giacomo97'),
('mariaVerdi95@gmail.com', '12345678', 'Maria', 'Verdi','lux10');

insert into punto(nome, città, indirizzo, descrizione, telescopi, wifi, visibilità) values
('Belvedere San Martino', 'Napoli', 'Largo S. Martino, 1, 80129 Napoli NA','A pochi passi dalla stazione Morghen della Funicolare di Montesanto c''è il belvedere di San Martino, una delle vedute più belle della città di Napoli, da cui si può ammmirare l''intero golfo che offre uno spettacolo mozzafiato.', 'No', 'Si', 'Buono'),
('Parco Virgiliano', 'Napoli', 'Viale Virgilio, 80123 Napoli NA','Il parco Virgiliano, detto anche "parco della Rimembranza", è un parco panoramico che sorge nel quartiere Posillipo, a Napoli.', 'Si', 'Si', 'Eccellente'),
('Eremo dei Camaldoli','Napoli', 'Cupa Verdolino, 8, 80131 Napoli NA','Il complesso dell''Eremo dei Camaldoli è un monumentale complesso storico ed artistico di Napoli; si erge sulla collina dei Camaldoli. Dall''eremo si gode un panorama suggestivo sul golfo di Napoli e i monti circostanti.', 'Si', 'No', 'Molto buono'),
('Colle Bellara', 'Salerno', 'Via del Belvedere, 84135 Salerno SA', 'Il Colle Bellara è uno dei punti più alti che sorvegliano placidamente la città di Salerno e sorge poco prima del quartiere residenziale di Sala Abbagnano.', 'No', 'No', 'Eccellente'),
('Castello di Arechi', 'Salerno', 'Località Croce, 84125 Salerno SA', 'Il Castello di Arechi è un castello medievale, situato ad un''altezza di circa 300 metri sul livello del mare, che domina la città ed il golfo di Salerno.', 'No', 'Si', 'Molto buono'),
('Lungomare Trieste', 'Salerno', 'Via Lungomare Trieste, 84121 Salerno SA', 'Il lungomare Trieste di Salerno è un grande giardino alberato che costeggia il mare Tirreno nel tratto centrale del nucleo urbano, da Piazza della Libertà al porto turistico.', 'No', 'Si', 'Buono'),
('Parco di Villa Ghigi', 'Bologna','Via San Mamolo, 105, 40136 Bologna BO','Il Parco Villa Ghigi è tra i più frequentati e apprezzati della città per l''eccezionale contesto paesaggistico in cui è inserito, la varietà di ambienti, i panorami su Bologna, la buona accessibilità e i comodi sentieri.', 'Si', 'Si', 'Molto Buono'),
('Parco dei Giardini','Bologna','Via dei Giardini, 40128 Bologna BO','Nel Quartiere Navile di Bologna esiste un bellissimo parco: Il Parco dei Giardini, la cui area verde si estende per oltre 11 ettari dove si può passeggiare, giocare, chiacchierare lungo i viali che costeggiano il laghetto', 'Si', 'Si', 'Eccellente'),
('Parco di Villa Spada', 'Bologna', 'Via di Casaglia, 3, 40135 Bologna BO','Il Parco di Villa Spada sorge nella zona pedecollinare di Bologna e dai punti più elevati si gode un notevole panorama sulla città.', 'Si', 'Si', 'Buono'),
('Bellosguardo', 'Firenze', 'Via Roti Michelozzi, 1, 50124 Firenze FI','Bellosguardo è una zona di Firenze, situata nella parte sud-ovest, collocata su una piccola collina dalla quale si gode un panorama sul centro storico della città.', 'Si', 'Si', 'Buono'),
('Piazzale Michelangelo','Firenze','Piazzale Michelangelo, 50125 Firenze FI','Piazzale Michelangelo a Firenze rappresenta il più famoso punto di osservazione del panorama cittadino, riprodotto in innumerevoli cartoline e meta obbligata dei turisti in visita alla città.', 'Si', 'Si','Eccellente'),
('San Miniato al Monte','Firenze', 'Via delle Porte Sante, 34, 50125 Firenze FI','La basilica abbaziale di San Miniato si trova in uno dei luoghi più elevati della città di Firenze, ed è uno dei migliori esempi di stile romanico fiorentino.', 'Si', 'Si', 'Molto buono');

insert into osservazione (dataOsservazione, orarioOsservazione, città, indirizzo, località, fontiLuminose, magnitudineLimite, brillanzaTotale, livello, utente) values
('2019-10-10', '20:30:00', 'Napoli', 'Largo S. Martino, 1, 80129', 'Urbana', 'Medio', 4.5, 20, 'Alto', 'roberto60'),
('2020-11-11', '21:00:00', 'Napoli', 'Viale Virgilio, 80123', 'Suburbana', 'Basso', 5.5,  21, 'Medio-basso', 'giacomo97'),
('2021-01-14', '22:00:00', 'Napoli',  'Cupa Verdolino, 8, 80131', 'Rurale', 'Basso', 6, 21.5, 'Basso', 'giovanna90'),
('2019-08-20', '23:00:00', 'Salerno', 'Via del Belvedere, 84135', 'Rurale', 'Basso', 6, 21.5, 'Basso', 'roberto60'),
('2020-04-21', '22:30:00', 'Salerno', 'Località Croce, 84125', 'Suburbana', 'Medio', 5,  20.5, 'Medio-alto', 'giacomo97'),
('2021-02-05', '22:15:00', 'Salerno', 'Lungomare Trieste, 84121', 'Urbana', 'Alto', 4, 19, 'Molto alto', 'giovanna90'),
('2019-12-12', '23:00:00', 'Bologna', 'Via San Mamolo, 105, 40136', 'Suburbana', 'Basso', 5.5, 21, 'Medio-basso', 'roberto60'),
('2020-06-06', '21:30:00', 'Bologna', 'Via dei Giardini, 40128', 'Suburbana', 'Basso', 5.5, 21, 'Medio-basso',  'giacomo97'),
('2021-04-14', '22:15:00', 'Bologna', 'Via di Casaglia, 3, 40135', 'Suburbana','Assente', 6, 21.5, 'Basso', 'giovanna90'),
('2019-10-04', '21:00:00', 'Firenze', 'Via Roti Michelozzi, 1, 50124','Rurale', 'Assente', 6.5, 22, 'Molto basso', 'roberto60'),
('2020-12-23', '23:30:00', 'Firenze', 'Piazzale Michelangelo, 50125', 'Urbana', 'Medio', 4.5, 20, 'Alto', 'giovanna90'),
('2021-01-02', '23:15:00', 'Firenze', 'Via delle Porte Sante, 34, 50125', 'Urbana', 'Basso', 5, 20.5, 'Medio-alto', 'giacomo97');



