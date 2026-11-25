<?php
include "db.php";
$id = (int) $_GET['id'];
$wynik = mysqli_query($polaczenie, "SELECT * FROM myszki WHERE id = $id");
$m = mysqli_fetch_assoc($wynik);

// rozcinamy plusy i minusy na listy (po znaku ;)
$plusy = explode(";", $m['plusy']);
$minusy = explode(";", $m['minusy']);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $m['nazwa']; ?></title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1><?php echo $m['producent'] . " " . $m['nazwa']; ?></h1>
  </header>

  <main class="szczegoly">

    <div class="obrazek duzy">
      <img src="img/<?php echo $m['obraz']; ?>" alt="<?php echo $m['nazwa']; ?>" onerror="this.style.display='none'">
    </div>

    <table>
      <tr><td>Producent</td><td><?php echo $m['producent']; ?></td></tr>
      <tr><td>Waga</td><td><?php echo $m['waga']; ?> g</td></tr>
      <tr><td>Czujnik</td><td><?php echo $m['czujnik']; ?></td></tr>
      <tr><td>Połączenie</td><td><?php echo $m['polaczenie']; ?></td></tr>
    </table>

    <p class="duzy-opis"><?php echo $m['opis_dlugi']; ?></p>

    <div class="plusy-minusy">
      <div class="plusy">
        <h3>✅ Zalety</h3>
        <ul>
          <?php foreach ($plusy as $p) { echo "<li>$p</li>"; } ?>
        </ul>
      </div>
      <div class="minusy">
        <h3>❌ Wady</h3>
        <ul>
          <?php foreach ($minusy as $mi) { echo "<li>$mi</li>"; } ?>
        </ul>
      </div>
    </div>

    <a class="przycisk" href="index.php">← Wróć do listy</a>
  </main>
</body>
</html>