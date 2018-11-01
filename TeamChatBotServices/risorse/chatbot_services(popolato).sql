-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Nov 01, 2018 alle 16:33
-- Versione del server: 5.7.21
-- Versione PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot_services`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `PK_SERVIZIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIZIONE` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STATO` int(11) NOT NULL,
  PRIMARY KEY (`PK_SERVIZIO`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `services`
--

INSERT INTO `services` (`PK_SERVIZIO`, `NOME`, `DESCRIZIONE`, `STATO`) VALUES
(1, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(2, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(3, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(4, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(5, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(6, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(7, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(8, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(9, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(10, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(11, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(12, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(13, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(14, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(15, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(16, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(17, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(18, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(19, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(20, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(21, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(22, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(23, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(24, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(25, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(26, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(27, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(28, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(29, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(30, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(31, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(32, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(33, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(34, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(35, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(36, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(37, 'Nuova grafica net.watch', 'Gentile Cliente ti annunciamo che dal 15 giugno sarà inaugurata la nuova interfaccia grafica di net.watch. Oltre a migliorare la user experience degli utenti la nuova interfaccia prevede alcune nuove funzionalità. Per maggiori informazioni si rimanda all allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(38, 'Nuove icone monitor map e area Helpdesk', 'descrizione di prova ecc', 0),
(39, 'Vulnerabilità IOS Cisco', 'E disponibile l elenco di vulnerabilità presenti nei software Cisco IOS e NX-OS.Per visionare la funzionalità basta entrare in Monitoraggio->Asset e scorrere fino alla tabella Vulnerabilità. Per ogni informazione aggiuntiva fare riferimento al Services Backoffice emailbackoffice@vem.com telefono 0543-725005.', 0),
(40, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(41, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(42, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(43, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(44, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(45, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(46, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(47, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(48, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(49, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(50, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(51, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(52, 'Nuova grafica net.watch', 'Gentile Cliente ti annunciamo che dal 15 giugno sarà inaugurata la nuova interfaccia grafica di net.watch. Oltre a migliorare la user experience degli utenti la nuova interfaccia prevede alcune nuove funzionalità. Per maggiori informazioni si rimanda all allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(53, 'Nuove icone monitor map e area Helpdesk', 'descrizione di prova ecc', 0),
(54, 'Vulnerabilità IOS Cisco', 'E disponibile l elenco di vulnerabilità presenti nei software Cisco IOS e NX-OS.Per visionare la funzionalità basta entrare in Monitoraggio->Asset e scorrere fino alla tabella Vulnerabilità. Per ogni informazione aggiuntiva fare riferimento al Services Backoffice emailbackoffice@vem.com telefono 0543-725005.', 0),
(55, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(56, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(57, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(58, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(59, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(60, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(61, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(62, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(63, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(64, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(65, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(66, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(67, 'Nuova grafica net.watch', 'Gentile Cliente ti annunciamo che dal 15 giugno sarà inaugurata la nuova interfaccia grafica di net.watch. Oltre a migliorare la user experience degli utenti la nuova interfaccia prevede alcune nuove funzionalità. Per maggiori informazioni si rimanda all allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(68, 'Nuove icone monitor map e area Helpdesk', 'descrizione di prova ecc', 0),
(69, 'Vulnerabilità IOS Cisco', 'E disponibile l elenco di vulnerabilità presenti nei software Cisco IOS e NX-OS.Per visionare la funzionalità basta entrare in Monitoraggio->Asset e scorrere fino alla tabella Vulnerabilità. Per ogni informazione aggiuntiva fare riferimento al Services Backoffice emailbackoffice@vem.com telefono 0543-725005.', 0),
(70, 'allarme sonoro', 'E stato introdotta la possibilità di scegliere se abilitare o disabilitare l audio a fronte di allarmi. Di default l allarme sonoro è abilitato. Per disabilitarlo basta andare nella pagina allarmi e in alto a destra compare il simbolo dell audio con a fianco la casella da spuntare a seconda del desiderata. Per ogni chiarimento fare riferimento al Services Backoffice mail backoffice@vem.com - telefono 0543-725005. ', 1),
(71, 'Nuova ricerca net.config', 'E stata pubblicata una nuova modalità di ricerca in net.config permette di individuare quali comandi sono presenti sulle configurazioni e fornisce indicazioni anche su quali apparati invece non sono presenti. Per maggiori informazioni contattate il Services Backoffice backoffice@vem.com o al numero 0543/725005.', 1),
(72, 'nuovo versione agente Net.inventory 3.016', 'E stata rilasciata la nuova versione 3.016 dell agent net.inventory che aggiunge il supporto a Windows 8.1. Consigliamo il passaggio alla nuova versione. Per ogni chiarimento contattare il nostro backoffice (backoffice@vem.com).', 1),
(73, 'net.privacy', 'Caro Clientedal 25/05 sarà disponibile la nuova versione del modulo Data Protection di myvem (ex net.privacy). Data Protection è il modulo di my.vem dedicato alla gestione degli adempimenti richiesti dal GDPR 2016/679.Per maggiori informazioni si prega di visionare l allegato cliccando su mostra dettaglio.', 1),
(74, 'Scarica l app myvem', 'Per un servizio ancora più integrato e flessibile è possibile scaricare sul proprio dispositivo mobile l’app di myvem disponibile negli store Apple e Android.In questo modo potrai monitorare lo stato della tua infrastruttura ICT e contattare il nostro NOC/SOC con facilità e rapidità direttamente dal tuo smartphone o dal tuo tablet.', 0),
(75, 'nuovo layout portale myvem-indicazioni utili', 'Gentile Cliente come annunciato il 16 aprile è stata rilasciata la nuova interfaccia grafica del portale myvem. In caso di problemi di visualizzazione si consiglia di svuotare la cache del browser e di rifare login. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(76, 'nuovo layout portale', 'Gentile Cliente ti annunciamo che dal 16 aprile sarà inaugurata la nuova interfaccia grafica del portale myvem. La nuova interfaccia rivisita i menu in alto e di sinistra non cambiano le funzionalità del portale. Si consiglia di svuotare la cache del browser e di rifare login. Per maggiori informazioni si rimanda all allegato (mostra dettaglio). Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(77, 'Numero di telefono fisso alternativo', 'IMPORTANTE causa disservizio prolungato sulle linee telefoniche fisse i nostri numeri sono temporaneamente irraggiungibili. Abbiamo predisposto un numero alternativo al quale potete contattarci 0543/1908084 in attesa che vengano ripristinati i vecchi numeri. Tutte le altre modalità di accesso al NOC/SOC restano invariate e sono correttamente funzionanti.', 1),
(78, 'Aggiornamento procedura apertura ticket via web', 'Gentile clientela presente per informarti che domenica 28 maggio verrà introdotta una modifica nell apertura dei ticket con particolare riferimento al campo \"Priorità\".Ti preghiamo di prendere visione della procedura in allegato in cui sono dettagliate le modifiche introdotte.Restiamo a disposizione per qualsiasi chiarimento.CordialmenteBackoffice Servizibackoffice@vem.com', 1),
(79, 'Manutenzione ordinaria', 'Gentile cliente si informa che il 19 aprile 2017 dalle ore 0600 alle 0700 verrà effettuata una rinegoziazione della connessione VPN my.vem. Questa operazione potrebbe comportare un evento di caduta del monitoraggio con conseguente riattivazione.Il nostro NOC/SOC è a disposizione per ogni chiarimento.', 1),
(80, 'Manutenzione portale myvem', 'Gentile cliente ti informiamo che il 4 gennaio 2017 dalle ore 13 alle ore 1330 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per circa 30 minuti. Ci scusiamo per il disagio.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 1),
(81, 'net.config nuova grafica e nuove funzionalità', 'Caro clienteè con piacere che ti comunichiamo che a partire dal 28 novembre p.v. verrà pubblicata la nuova versione del servizio net.config.Il servizio è stato completamente rivisto per quanto riguarda la veste grafica e sono state introdotte nuove funzionalità. Per conoscere nel dettaglio le modifiche apportate ti invitiamo a leggere il documento in allegato.Per qualsiasi chiarimento e/o approfondimento sul servizio net.config ti inviatiamo a scrivere a backoffice@vem.com', 0),
(82, 'Manutenzione portale myvem', 'Gentile cliente si informa che il 30 marzo 2016 alle ore 1300 verrà effettuata una manutenzione ordinaria del portale my.vem. Lo stesso non sarà disponibile per 10 minuti. Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com - telefono 0543/725005.', 0),
(83, 'Codice telefonico di accesso NOC/SOC', 'Gentile clienteè con piacere che ti informiamo che da oggi è possibile visualizzare il tuo codice telefonico per l’accesso al NOC/SOC direttamente dalla sezione “help desk” del portale myvem.comNella pagina “Elenco ticket” comparirà come ultima colonna il  codice di accesso (6 cifre) che ti permetterà di parlare direttamente con un operatore del NOC/SOC (dopo aver composto lo 0543/725005  > scelta 1 del risponditore automatico).Per ogni chiarimento contattare il backoffice servizi backoffice@vem.com - telefono 0543-725005.', 0),
(84, 'Nuova sezione Impostazioni', 'Gentile Cliente ti annunciamo che dal 9 dicembre sarà pubblicata la nuova sezione impostazioni.Per maggiori dettagli scarica il pdf allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 1),
(85, 'Nuova grafica net.watch', 'Gentile Cliente ti annunciamo che dal 15 giugno sarà inaugurata la nuova interfaccia grafica di net.watch. Oltre a migliorare la user experience degli utenti la nuova interfaccia prevede alcune nuove funzionalità. Per maggiori informazioni si rimanda all allegato.Per ogni chiarimento contattare il Backoffice Servizi backoffice@vem.com 0543-725005.', 0),
(86, 'Nuove icone monitor map e area Helpdesk', 'descrizione di prova ecc', 0),
(87, 'Vulnerabilità IOS Cisco', 'E disponibile l elenco di vulnerabilità presenti nei software Cisco IOS e NX-OS.Per visionare la funzionalità basta entrare in Monitoraggio->Asset e scorrere fino alla tabella Vulnerabilità. Per ogni informazione aggiuntiva fare riferimento al Services Backoffice emailbackoffice@vem.com telefono 0543-725005.', 0),
(88, 'allarme sonoro', 'E stato introdotta la possibilità di scegliere se abilitare o disabilitare l audio a fronte di allarmi. Di default l allarme sonoro è abilitato. Per disabilitarlo basta andare nella pagina allarmi e in alto a destra compare il simbolo dell audio con a fianco la casella da spuntare a seconda del desiderata. Per ogni chiarimento fare riferimento al Services Backoffice mail backoffice@vem.com - telefono 0543-725005. ', 1),
(89, 'Nuova ricerca net.config', 'E stata pubblicata una nuova modalità di ricerca in net.config permette di individuare quali comandi sono presenti sulle configurazioni e fornisce indicazioni anche su quali apparati invece non sono presenti. Per maggiori informazioni contattate il Services Backoffice backoffice@vem.com o al numero 0543/725005.', 1),
(90, 'nuovo versione agente Net.inventory 3.016', 'E stata rilasciata la nuova versione 3.016 dell agent net.inventory che aggiunge il supporto a Windows 8.1. Consigliamo il passaggio alla nuova versione. Per ogni chiarimento contattare il nostro backoffice (backoffice@vem.com).', 1),
(91, 'Novità net.watch', 'Con piacere ti comunichiamo le ultime novità apportate al servizio net.watchDa oggi è infatti possibile monitorare-	dettaglio della velocità e del duplex sulle porte degli switch -	stato dei peer bgp-	MPDU (Modular Power Distribution Unit) unità di distribuzione dell alimentazione all interno dei rack', 1),
(92, 'Richieste a backoffice', 'Gentile clienteda oggi è possibile inoltrare tutte le richieste di chiarimento o di modifica del perimetro sui contratti di assistenza net.sys net.assistance e software assurance (come la sostituzione di un device e l aggiunta di referenti abilitati a chiamare il NOC) direttamente a NOC Backoffice utilizzando il form presente nella sezione \"help desk\".', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `services_users`
--

DROP TABLE IF EXISTS `services_users`;
CREATE TABLE IF NOT EXISTS `services_users` (
  `FK_PK_SERVIZIO` int(11) NOT NULL,
  `FK_PK_UTENTE` int(11) NOT NULL,
  KEY `FK_PK_UTENTE` (`FK_PK_UTENTE`),
  KEY `FK_PK_SERVIZIO` (`FK_PK_SERVIZIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `services_users`
--

INSERT INTO `services_users` (`FK_PK_SERVIZIO`, `FK_PK_UTENTE`) VALUES
(1, 101),
(2, 101),
(3, 101),
(4, 102),
(5, 103),
(6, 104),
(7, 104),
(8, 105),
(9, 105),
(10, 106),
(11, 110),
(12, 115),
(13, 117),
(14, 109),
(15, 112),
(16, 110),
(17, 114),
(18, 120),
(19, 121),
(20, 132);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `PK_UTENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COGNOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_SESSION` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PK_UTENTE`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`PK_UTENTE`, `NOME`, `COGNOME`, `USER`, `PASSWORD`, `LAST_SESSION`) VALUES
(101, 'Frediano', 'Bellucci', 'Bles1948', 'Cietaey2mah', '2018-11-01 16:37:33'),
(102, 'Dafne ', 'Longo', 'Seress80', 'oa1jie8A', '2018-11-01 16:37:33'),
(103, 'Vladimiro', 'Napolitani', 'Shollity', 'eigieX7ao2j', '2018-11-01 16:37:33'),
(104, 'Clemente', 'Rossi', 'Hask1952', 'aXee9Ong8tei', '2018-11-01 16:37:33'),
(105, 'Enrica', 'DeRose', 'Muccer', 'uQuahg4do', '2018-11-01 16:37:33'),
(106, 'Alessia', 'Lucciano', 'Xviver', 'oju0eeFiyah', '2018-11-01 16:37:33'),
(107, 'Arabella', 'Padovesi', 'Hisom1988', 'uuXeifah0', '2018-11-01 16:37:33'),
(108, 'Adriano', 'Conti', 'Bettandow', 'wiyuK8aeSh', '2018-11-01 16:37:33'),
(109, 'Marco', 'Romani', 'Abouter', 'Riu3soo6Ie', '2018-11-01 16:37:33'),
(110, 'Dora', 'Giordano', 'Slitione', 'ookahn3oPae', '2018-11-01 16:37:33'),
(111, 'Gofreddo', 'Conti', 'Milive', 'Ed9ohZi1w', '2018-11-01 16:37:33'),
(112, 'Luigi', 'Angelo', 'Poesed', 'hie8iy3Iidae', '2018-11-01 16:37:33'),
(113, 'Patrizia', 'Fanucci', 'Vingligneedn1948', 'ohNux7beF', '2018-11-01 16:37:33'),
(114, 'Nerea', 'Zetticci', 'Capecrom', 'Pek6xiesh', '2018-11-01 16:37:33'),
(115, 'Daniela', 'Gallo', 'Gabsoorchim', 'geeCh7fie9', '2018-11-01 16:37:33'),
(116, 'Rosario', 'Mazzi', 'Kepon1988', 'echax6re7Th', '2018-11-01 16:37:33'),
(117, 'Gualtiero', 'Longo', 'Sheast', 'eequaey1oV', '2018-11-01 16:37:33'),
(118, 'Fedra', 'Schiavone', 'Huseermsed', 'xaebeMieku4', '2018-11-01 16:37:33'),
(119, 'Ciro', 'Pinto', 'Addis1941', 'Hu8Eiyeut3u', '2018-11-01 16:37:33'),
(120, 'Corrado', 'Marchesi', 'Africured1953', 'ohS3Leaj', '2018-11-01 16:37:33'),
(121, 'Arianna', 'Manfrin', 'Betteramer', 'EeVoo0the', '2018-11-01 16:37:33'),
(122, 'Giancarlo', 'Endrizzi', 'Aptate', 'vei5saech6Ae', '2018-11-01 16:37:33'),
(123, 'Santa', 'Mancini', 'Hadet1991', 'Chi1va5Ph', '2018-11-01 16:37:33'),
(124, 'Linda', 'Bellucci', 'Witiz1993', 'eeGeShah2', '2018-11-01 16:37:33'),
(125, 'Violanda', 'Longo', 'Hinsuff', 'uix1cooB', '2018-11-01 16:37:33'),
(126, 'Augusto', 'Greco', 'Usio1974', 'juShaet5', '2018-11-01 16:37:33'),
(127, 'Calliope ', 'Romano', 'Fricaunt', 'faequ2Ah', '2018-11-01 16:37:33'),
(128, 'Norma', 'Pinto', 'Thord1959', 'deseyie2Jae', '2018-11-01 16:37:33'),
(129, 'Generosa', 'Costa', 'Tonlefor', 'Iephie8ob', '2018-11-01 16:37:33'),
(130, 'Aladino', 'Marchesi', 'Hisfy1933', 'Vee6ietoh', '2018-11-01 16:37:33'),
(131, 'Enza', 'Cremonesi', 'Lestroon', 'Aebei2JuaD', '2018-11-01 16:37:33'),
(132, 'Gina', 'Capon', 'Aredle', 'Oonugh7z', '2018-11-01 16:37:33'),
(133, 'Vittoria', 'Manna', 'Grer1988', 'eXie0oCai', '2018-11-01 16:37:33'),
(134, 'Alba', 'Ferri', 'Eank1989', 'Aew9oolaiboo', '2018-11-01 16:37:33'),
(135, 'Giorgia', 'Moretti', 'Thaveruld', 'Ki4ohlie', '2018-11-01 16:37:33'),
(136, 'Bruna', 'Milani', 'Kene1983', 'Iel4Gishei', '2018-11-01 16:37:33'),
(137, 'Galeazzo', 'Padovano', 'Dicagand53', 'Neur1aeNg', '2018-11-01 16:37:33'),
(138, 'Daria', 'Esposito', 'Duall1986', 'Ba0bicee7', '2018-11-01 16:37:33'),
(139, 'Uranio', 'Mancini', 'Sayins', 'phieZie6F', '2018-11-01 16:37:33'),
(140, 'Marzia', 'Gallo', 'Mervagands', 'Ke9moNg0', '2018-11-01 16:37:33'),
(141, 'Fulvia', 'Palerma', 'Suest1989', 'as8Che1lah1ch', '2018-11-01 16:37:33'),
(142, 'Irmina', 'Giordano', 'Beepand', 'ChieC7cee', '2018-11-01 16:37:33'),
(143, 'Enza', 'Trentino', 'Adint1971', 'uu4vohth3E', '2018-11-01 16:37:33'),
(144, 'Beato', 'Trevisano', 'Riever', 'Iecu3Jeetoh', '2018-11-01 16:37:33'),
(145, 'Gisella', 'Bianchi', 'Haile1966', 'ahfahC4Xie7', '2018-11-01 16:37:33'),
(146, 'Ivano', 'Ricci', 'Lils1970', 'Vee9ahcee', '2018-11-01 16:37:33'),
(147, 'Maurilio', 'Udinese', 'Berand', 'saizi0OPh', '2018-11-01 16:37:33'),
(148, 'Costante', 'Sal', 'Faturis', 'Chiethal0ah', '2018-11-01 16:37:33'),
(149, 'Lavinia', 'Fanucci', 'Emenceapery', 'yoo0Moh3', '2018-11-01 16:37:33'),
(150, 'Sebastiano', 'Romano', 'Bearace66', 'iv1aiMohThoh', '2018-11-01 16:37:33'),
(151, 'Demetria', 'Arcuri', 'Eflete', 'ro8aPhoo', '2018-11-01 16:37:33'),
(152, 'Serafino', 'Lo Duca', 'Stren1995', 'eipoophai5K', '2018-11-01 16:37:33'),
(153, 'Protasio', 'Buccho', 'Thade1960', 'dah4fooJee', '2018-11-01 16:37:33'),
(154, 'Sabrina', 'Bellucci', 'Betalor', 'pi9Camoshahj', '2018-11-01 16:37:33'),
(155, 'Ottone', 'Napolitani', 'Mided1955', 'eep2euW8th', '2018-11-01 16:37:33'),
(156, 'Gino', 'Milano', 'Egesecun', 'aeQuav7wae6', '2018-11-01 16:37:33'),
(157, 'Gioia', 'Siciliani', 'Faidn1963', 'tiezied4A', '2018-11-01 16:37:33'),
(158, 'Leonide', 'Baresi', 'Gread1975', 'Mohsh0eesae', '2018-11-01 16:37:33'),
(159, 'Anselma', 'DeRose', 'Saidesehis', 'eve6ieLa7', '2018-11-01 16:37:33'),
(160, 'Flora', 'Marino', 'Oughts', 'Uij9aimeeh1', '2018-11-01 16:37:33'),
(161, 'Valter', 'Pisani', 'Boxylisher', 'ok1iuHah5Oh', '2018-11-01 16:37:33'),
(162, 'Cristina', 'Pinto', 'Myris1988', 'Chu0eu0b', '2018-11-01 16:37:33'),
(163, 'Aloisio', 'Russo', 'Neative', 'Saiv5ueJa', '2018-11-01 16:37:33'),
(164, 'Manlio', 'Gallo', 'Wheive', 'Dei0Yai1Nae', '2018-11-01 16:37:33'),
(165, 'Lanfranco', 'Manfrin', 'Yourinsuil', 'RooQuie1tei', '2018-11-01 16:37:33'),
(166, 'Dalia', 'Russo', 'Seral1941', 'zeeGhai3soh', '2018-11-01 16:37:33'),
(167, 'Bellino', 'Piccio', 'Squing', 'ibamahshu2X', '2018-11-01 16:37:33'),
(168, 'Benedetto', 'Milani', 'Ondur1962', 'ceiya2MoGh', '2018-11-01 16:37:33'),
(169, 'Elsa', 'Padovano', 'Niess1947', 'ouQu6ieph', '2018-11-01 16:37:33'),
(170, 'Antonino', 'Longo', 'Plefulther45', 'thaG4aethie', '2018-11-01 16:37:33'),
(171, 'Miriam', 'Baresi', 'Bland1988', 'mooph6Shai', '2018-11-01 16:37:33'),
(172, 'Gaetana', 'Lori', 'Whisintly', 'oov7ieduY', '2018-11-01 16:37:33'),
(173, 'Flavia', 'Castiglione', 'Wouesed77', 'Aidee4geeb4', '2018-11-01 16:37:33'),
(174, 'Callisto', 'Greco', 'Coluch', 'Keithai5Joi', '2018-11-01 16:37:33'),
(175, 'Letteria', 'Bellucci', 'Butfor', 'Tho2AF8jah9', '2018-11-01 16:37:33'),
(176, 'Prisca', 'Trevisan', 'Sholebabluch', 'quosi2Sheik', '2018-11-01 16:37:33'),
(177, 'Eustorgio', 'Trentino', 'Exproning', 'Ra0quiub8ie', '2018-11-01 16:37:33'),
(178, 'Albano', 'Siciliano', 'Gratchim', 'ahz8fielahM', '2018-11-01 16:37:33'),
(179, 'Nora', 'Cremonesi', 'Calloseven', 'DaZo7soo2ai', '2018-11-01 16:37:33'),
(180, 'Eliana', 'Mazzanti', 'Mirdid1941', 'aipo0Aezah', '2018-11-01 16:37:33'),
(181, 'Baldovino', 'Fiorentino', 'Recon1980', 'aD4wieci1j', '2018-11-01 16:37:33'),
(182, 'Gildo', 'Trevisano', 'Balt1957', 'ieD6eing', '2018-11-01 16:37:33'),
(183, 'Danilo', 'Mazzanti', 'Tudiblad', 'kooYai9a', '2018-11-01 16:37:33'),
(184, 'Eliana', 'DeRose', 'Kinary79', 'iofo4Ehei0', '2018-11-01 16:37:33'),
(185, 'Amelia', 'Padovesi', 'Selven', 'Ithe9ree5', '2018-11-01 16:37:33'),
(186, 'Carla', 'Moretti', 'Hernione1982', 'ahxieZu8', '2018-11-01 16:37:33'),
(187, 'Abramo', 'Palermo', 'Unand1951', 'quae2ucoo2Ph', '2018-11-01 16:37:33'),
(188, 'Armida', 'Napolitano', 'Thiets', 'ioj5phaFee', '2018-11-01 16:37:33'),
(189, 'Aloisio', 'Romani', 'Whouter', 'Meuz6ich4o', '2018-11-01 16:37:33'),
(190, 'Armida', 'Marcelo', 'Peress', 'Phien8aGoh', '2018-11-01 16:37:33'),
(191, 'Camilla', 'Castiglione', 'Hichad', 'yoiVoong6Qu', '2018-11-01 16:37:33'),
(192, 'Alfonsino', 'Trevisani', 'Wassew', 'uch7Eequo4e', '2018-11-01 16:37:33'),
(193, 'Alida', 'Lucciano', 'Sairch', 'Yeu0eipoas6', '2018-11-01 16:37:33'),
(194, 'Dora', 'Mazzi', 'Thistropring', 'eeSh2pu7y', '2018-11-01 16:37:33'),
(195, 'Caio', 'Trentini', 'Spedity97', 'Jaito1pee', '2018-11-01 16:37:33'),
(196, 'Enza', 'Marino', 'Lacquess1941', 'veoM7Vee', '2018-11-01 16:37:33'),
(197, 'Rosa', 'Cocci', 'Cumfornot', 'ahQu6Vair', '2018-11-01 16:37:33'),
(198, 'Vala ', 'Sal', 'Justakin', 'ohghoo5ahJ', '2018-11-01 16:37:33'),
(199, 'Armida', 'Fanucci', 'Owle1982', 'oobee5Xei', '2018-11-01 16:37:33'),
(200, 'Adriana', 'Calabresi', 'Sonarmiss', 'hoh1Kijaewae', '2018-11-01 16:37:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
