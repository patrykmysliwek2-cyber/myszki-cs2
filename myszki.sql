-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 25, 2026 at 10:04 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myszki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `myszki`
--

CREATE TABLE `myszki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `producent` varchar(50) DEFAULT NULL,
  `waga` int(11) DEFAULT NULL,
  `czujnik` varchar(50) DEFAULT NULL,
  `polaczenie` varchar(30) DEFAULT NULL,
  `obraz` varchar(100) DEFAULT NULL,
  `opis` varchar(200) DEFAULT NULL,
  `opis_dlugi` text DEFAULT NULL,
  `plusy` text DEFAULT NULL,
  `minusy` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myszki`
--

INSERT INTO `myszki` (`id`, `nazwa`, `producent`, `waga`, `czujnik`, `polaczenie`, `obraz`, `opis`, `opis_dlugi`, `plusy`, `minusy`) VALUES
(1, 'G Pro X Superlight 2', 'Logitech', 60, 'HERO 2', 'Bezprzewodowa', 'superlight2.jpg', 'Lekka klasyka graczy CS2.', 'Superlight 2 to następca jednej z najpopularniejszych myszek w historii e-sportu. Ma niską wagę, bardzo stabilne połączenie bezprzewodowe LIGHTSPEED i długi czas pracy na baterii. Kształt jest dość uniwersalny, więc pasuje do wielu rodzajów chwytu i średnich oraz większych dłoni. Jeśli chcesz sprawdzone rozwiązanie, z którego korzysta mnóstwo zawodowców, to jest bardzo bezpieczny wybór.', 'Sprawdzona i popularna;Stabilne połączenie;Długi czas pracy baterii;Uniwersalny kształt', 'Wysoka cena;Mniej wygodna dla bardzo małych dłoni'),
(2, 'Viper V3 Pro', 'Razer', 54, 'Focus Pro 35K', 'Bezprzewodowa', 'viperv3pro.jpg', 'Ultralekka i symetryczna.', 'Viper V3 Pro to bardzo lekka myszka o symetrycznym kształcie, który pasuje zarówno praworęcznym, jak i leworęcznym. Ma nowoczesny czujnik i wysoką częstotliwość odświeżania, dzięki czemu kursor reaguje błyskawicznie. W CS2, gdzie liczy się szybkie celowanie i szybkie poprawki, taka lekkość naprawdę pomaga. Jest wygodna głównie dla osób, które lubią płaski, niski kształt.', 'Bardzo niska waga;Szybki czujnik;Symetryczny kształt;Dobra dla leworęcznych', 'Wysoka cena;Niski kształt nie każdemu pasuje'),
(3, 'X2 V2', 'Pulsar', 52, 'PAW3395', 'Bezprzewodowa', 'pulsarx2v2.jpg', 'Lekka alternatywa dla topowych modeli.', 'Pulsar X2 V2 to myszka dla tych, którzy chcą top lekkość bez przepłacania. Waży niewiele, ma dobry czujnik i solidne wykonanie. Często jest tańsza niż najbardziej znane marki, a gra się na niej bardzo podobnie. Świetnie sprawdza się u osób z mniejszymi i średnimi dłońmi, które lubią trzymać myszkę palcami (tzw. claw i fingertip).', 'Niska cena jak na ten poziom;Bardzo lekka;Dobry czujnik;Pasuje mniejszym dłoniom', 'Mniejsza od większości myszek;Gorsza dostępność w sklepach'),
(4, 'Maya X', 'Lamzu', 47, 'PAW3950', 'Bezprzewodowa', 'mayax.jpg', 'Ekstremalnie lekka, dla fanów lekkości.', 'Maya X to jedna z najlżejszych myszek bezprzewodowych na rynku. Ma bardzo szybki czujnik i wysoką częstotliwość odświeżania. Jest dla ludzi, którzy kochają zwinne, szybkie ruchy i niemal nie czują myszki w ręku. Trzeba się trochę przyzwyczaić do tak niskiej wagi, bo na początku może wydawać się, że kontrola jest inna niż zwykle.', 'Najniższa waga w zestawieniu;Bardzo szybki czujnik;Świetna do szybkich ruchów', 'Trzeba się przyzwyczaić;Wykonanie lżejsze niż w cięższych modelach'),
(5, 'EC2-CW', 'Zowie', 77, 'Flawless', 'Bezprzewodowa', 'ec2cw.jpg', 'Klasyczny kształt EC, prosta w użyciu.', 'Seria EC od lat jest ulubieńcem graczy CS, a wersja bezprzewodowa EC2-CW ma ten sam kształt, tylko bez kabla. Myszka nie wymaga instalowania żadnego programu, więc podłączasz i grasz. Jest cięższa niż nowe ultralekkie modele, ale daje poczucie stabilności i dobrej kontroli. Dobra dla osób z większymi dłońmi, które wolą klasyczny kształt.', 'Znany, sprawdzony kształt;Nie wymaga programu;Dobra kontrola', 'Cięższa od konkurencji;Prostsze funkcje'),
(6, 'OP1 8k V2', 'Endgame Gear', 58, 'PAW3395', 'Przewodowa', 'op1.jpg', 'Przewodowa, szybka i wytrzymała.', 'OP1 8k V2 to myszka przewodowa, więc nie musisz myśleć o baterii ani opóźnieniach. Ma wysoką częstotliwość odświeżania i solidne wykonanie, a do tego jest stosunkowo lekka. Idealna dla graczy, którzy nie lubią bezprzewodowych myszek albo chcą taniej wejść w dobry sprzęt do CS2.', 'Brak problemu z baterią;Szybka i stabilna;Zwykle tańsza od bezprzewodowych', 'Kabel może przeszkadzać;Mniej wygodna przy dużych dłoniach');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `myszki`
--
ALTER TABLE `myszki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myszki`
--
ALTER TABLE `myszki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
