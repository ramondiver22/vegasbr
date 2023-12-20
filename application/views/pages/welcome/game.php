<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $config[0]->nome ?> <?php if($nomepagina): ?>- <?php echo $nomepagina ?><?php endif; ?></title>
  <!-- Adicione a referência ao Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
      background-color: black !important;
    }

    #iframeContainer {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }

    #buttonContainer {
      position: fixed;
      top: 20px;
      left: 20px;
      z-index: 1000;
    }
    #preloader {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: #000; /* Cor de fundo preto */
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
      z-index: 1000;
    }

    #preloader img {
      max-width: 250px; /* Largura máxima para o logo */
    }

    #loadingText {
      color: #fff; /* Cor do texto de carregamento */
      margin-top: 10px; /* Espaçamento superior para o texto */
    }
  </style>
</head>
<body>

<div id="preloader">
  <img src="<?php echo $config[0]->logo ?>" alt="Sua Logo">
  <div class="spinner-border text-primary" role="status">
    <span class="sr-only">Carregando game...</span>
  </div>
  <div id="loadingText">Carregando game...</div>
</div>


<!-- Botões -->
<div id="buttonContainer">
  <button class="btn btn-primary" onclick="history.back()">
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-left-circle"><circle cx="12" cy="12" r="10"/><path d="M16 12H8"/><path d="m12 8-4 4 4 4"/></svg>
  </button>
</div>

<!-- Iframe -->
<div id="iframeContainer">
    <iframe id="fullscreen-iframe" width="100%" height="100%" frameborder="0"></iframe>
</div>

<!-- Adicione a referência ao Bootstrap e ao Bootstrap Icons -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script>
        window.addEventListener('load', function () {
            var preloader = document.getElementById('preloader');

            setTimeout(function() {
                preloader.style.display = 'none';
            }, 500);
        });
    </script>
<script>
   const apiUrl = "<?php echo site_url('fiverscan/pegarLinkJogo/'.$provedora.'/'.$game); ?>";
        const iframe = document.getElementById('fullscreen-iframe'); // Substitua 'seuIframeId' pelo ID do seu iframe

        fetch(apiUrl)
          .then(response => {
            if (!response.ok) {
              throw new Error('Network response was not ok');
            }
            return response.json();
          })
          .then(data => {
            const gameURL = data.gameURL;
            iframe.src = gameURL;
          })
          .catch(error => console.error('Error:', error));
</script>
</body>
</html>
