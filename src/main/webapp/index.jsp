<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Login del sitio</title>
</head>
<body style="display: grid; grid-template-rows: auto 1fr auto; min-height: 100vh">
<h1 class="text-center m-5">Login</h1>
<main class="container d-flex justify-content-center align-items-center" >
    <form method="POST" action="./views/user.jsp" class="bg-light p-5 rounded">
        <div class="mb-3">
            <label for="user" class="form-label">Usuario</label>
            <input type="text" class="form-control" id="user" name="user" >
            <div id="userHelp" class="form-text">Nunca compartiremos sus datos con alguien más.</div>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <div class="row align-items-center justify-content-between">
            <div class="col-auto">
                <button type="submit" class="btn btn-dark">Ingresar</button>
            </div>
            <div class="col-auto">
                <a href="#" class="link-primary">Registrarme</a>
            </div>
        </div>
    </form>
</main>
<footer class="border-top border-3 mt-5">
    <p class="text-center pt-3">Agustin Nicolas Metrechen© - 2021</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>
