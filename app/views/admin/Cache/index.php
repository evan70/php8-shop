<!-- Default box -->
<div class="card">

    <div class="card-body">

        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Názov</th>
                <th>Popis</th>
                <td width="50"><i class="far fa-trash-alt"></i></td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    Cache kategórií
                </td>
                <td>
                    Menu kategórií. Je v cache na 1 hodinu.
                </td>
                <td width="50">
                    <a class="btn btn-danger btn-sm delete"
                       href="<?= ADMIN ?>/cache/delete?cache=category">
                        <i class="far fa-trash-alt"></i>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    Cache stránok
                </td>
                <td>
                    Menu stránok. Je v cache na 1 hodinu.
                </td>
                <td width="50">
                    <a class="btn btn-danger btn-sm delete"
                       href="<?= ADMIN ?>/cache/delete?cache=page">
                        <i class="far fa-trash-alt"></i>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>

    </div>
</div>
<!-- /.card -->
