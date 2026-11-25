<?php include "db.php"; ?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Najlepsze myszki do CS2 w 2026</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>🚀 Najlepsze myszki do CS2 w 2026</h1>
    <p>Kliknij w myszkę, żeby zobaczyć więcej</p>
  </header>

  <main class="siatka">
    <?php
    $wynik = mysqli_query($polaczenie, "SELECT * FROM myszki");
    while ($wiersz = mysqli_fetch_assoc($wynik)) {
        echo "<a class='karta' href='szczegoly.php?id=" . $wiersz['id'] . "'>";
        echo "<div class='obrazek'>";
        echo "<img src='img/" . $wiersz['obraz'] . "' alt='" . $wiersz['nazwa'] . "' onerror=\"this.style.display='none'\">";
        echo "</div>";
        echo "<h2>" . $wiersz['nazwa'] . "</h2>";
        echo "<p class='producent'>" . $wiersz['producent'] . "</p>";
        echo "<p>" . $wiersz['opis'] . "</p>";
        echo "<p class='waga'>" . $wiersz['waga'] . " g</p>";
        echo "</a>";
    }
    ?>
  </main>

  <footer>Zdjęcia: strony producentów</footer>
</body>
</html>