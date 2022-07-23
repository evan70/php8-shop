<!-- Default box -->
<div class="card">

    <div class="card-body">

        <form action="" method="post">

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-outline card-success">
                        <div class="card-header">
                            <h3 class="card-title">Foto slajdera</h3>
                        </div>
                        <div class="card-body">
                            <button class="btn btn-success" id="add-gallery-img"
                                    onclick="popupGalleryImage(); return false;">Nahrať foto
                            </button>
                            <div id="gallery-img-output" class="upload-images gallery-image">
                                <?php if (!empty($gallery)): ?>
                                    <?php foreach ($gallery as $item): ?>
                                        <div class="product-img-upload">
                                            <img src="<?= $item ?>">
                                            <input type="hidden" name="gallery[]"
                                                   value="<?= $item ?>">
                                            <button class="del-img btn btn-app bg-danger"><i
                                                    class="far fa-trash-alt"></i></button>
                                        </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Uložiť</button>

        </form>

    </div>

</div>
<!-- /.card -->

<script>
    function popupGalleryImage() {
        CKFinder.popup({
            chooseFiles: true,
            onInit: function (finder) {
                finder.on('files:choose', function (evt) {
                    var file = evt.data.files.first();
                    const galleryImgOutput = document.getElementById('gallery-img-output');

                    if (galleryImgOutput.innerHTML) {
                        galleryImgOutput.innerHTML += '<div class="product-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    } else {
                        galleryImgOutput.innerHTML = '<div class="product-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    }

                });
                finder.on('file:choose:resizedImage', function (evt) {
                    const baseImgOutput = document.getElementById('base-img-output');

                    if (galleryImgOutput.innerHTML) {
                        galleryImgOutput.innerHTML += '<div class="product-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    } else {
                        galleryImgOutput.innerHTML = '<div class="product-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    }

                });
            }
        });
    }
</script>
