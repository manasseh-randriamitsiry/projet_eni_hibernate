<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>occuper</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"></head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary pt-2">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Gestion Salle</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/salle">Salle</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/prof">Prof</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active">Occuper</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div>
    Occuper
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Code_salle</th>
            <th scope="col">Code_prof</th>
            <th scope="col">Date</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>
                <a type="button"><i class="fa fa-2 fa-trash-can" style="color: red"></i></a>
                <a type="button"><i class="fa fa-2 fa-edit" style="color: green"></i></a>
            </td>
        </tr>
        <!-- edit modal -->

        <!-- delete modal -->

        <!-- insert modal -->
        <form class="row g-3 mt-3" th:action="@{/occuper/save}" method="post" th:object="${occuper}">
            <input type="hidden" th:field="*{id}">
            <div class="mb-3 row">
                <label for="id_salle" class="col-sm-2 col-form-label">Id_salle:</label>
                <div class="col-sm-10">
                    <input class="form-control" type="email" th:field="*{id_salle}" required id="id_salle">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="id_prof" class="col-sm-2 col-form-label">Id_prof:</label>
                <div class="col-sm-10">
                    <input class="form-control" type="text" th:field="*{id_prof}" id="id_prof">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="date" class="col-sm-2 col-form-label">Date:</label>
                <div class="col-sm-10">
                    <input class="form-control" type="date" th:field="*{date}" required id="date">
                </div>
            </div>
        </form>

        </tbody>
    </table>
</div>
</body>
</html>