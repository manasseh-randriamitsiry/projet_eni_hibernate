<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>prof</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"></head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary pt-2">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/homepage">Gestion Salle</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/salle">Salle</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-info">Prof</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/occuper">Occuper</a>
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
<div class="mx-xl-3">
    <h3>Prof</h3>
    <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#ajout_modal">
        Ajout prof +
    </button>
    <table class="table table-secondary table-hover">
        <thead>
        <tr>
            <th scope="col">CodeProf</th>
            <th scope="col">Nom</th>
            <th scope="col">Prenom</th>
            <th scope="col">Grade</th>
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
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit_modal">
                    <i class="fa fa-2 fa-edit" style="color: green"></i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete_modal">
                    <i class="fa fa-2 fa-trash-can" style="color: red"></i>
                </button>
            </td>
        </tr>
        <!-- edit modal -->
        <div class="modal fade" id="edit_modal" tabindex="-1" aria-labelledby="edit_prof" aria-hidden="true">
            <form class="row g-3 mt-3" th:action="@{/salle/save}" method="post" th:object="${salle}">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" >Edit prof</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 row">
                                <label for="code_prof" class="col-sm-2 col-form-label">Code_prof:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="email" th:field="*{code_prof}" required id="code_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="nom_prof" class="col-sm-2 col-form-label">Nom:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{nom_prof}" id="nom_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="prenom_prof" class="col-sm-2 col-form-label">Prenom:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{prenom_prof}" id="prenom_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="grade_prof" class="col-sm-2 col-form-label">Grade:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{grade_prof}" id="grade_prof">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <!-- delete modal -->
        <div class="modal fade" id="delete_modal" tabindex="-1" aria-labelledby="delete_prof" aria-hidden="true">
            <form class="row g-3 mt-3" th:action="@{/salle/save}" method="post" th:object="${salle}">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" >Delete prof ?</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Confirm deletion
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <!-- ajout modal -->
        <div class="modal fade" id="ajout_modal" tabindex="-1" aria-labelledby="ajout_prof" aria-hidden="true">
            <form class="row g-3 mt-3" th:action="@{/salle/save}" method="post" th:object="${salle}">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" >Ajout Prof</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 row">
                                <label for="code_prof" class="col-sm-2 col-form-label">Code_prof:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="email" th:field="*{code_prof}" required id="code_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="nom_prof" class="col-sm-2 col-form-label">Nom:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{nom_prof}" id="nom_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="prenom_prof" class="col-sm-2 col-form-label">Prenom:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{prenom_prof}" id="prenom_prof">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="grade_prof" class="col-sm-2 col-form-label">Grade:</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" th:field="*{grade_prof}" id="grade_prof">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        </tbody>
    </table>
</div>
</body>
</html>