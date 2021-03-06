
<div class="custom_admin row">
    <div class="col-md-8">
        <div class="add_new_seach row mb-2">
            <div class="col-md-2">
                <button class="add publish-submit btn bg-secondary text-white">add</button>
            </div>
        </div>
        <div class="table">
        <table class="table-view w-100">
            <thead>
                <tr>
                    <td class="tb_checkbox">STT</td>
                    <td>Name</td>
                    <td>Pass</td>
                    <td>Sex</td>
                    <td>Phone</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>
                <?php
                    $stt=0;
                    foreach ($data['user'] as $item => $key) {
                        ?>
                        <tr>
                            <th>
                                <?= ++$stt; ?>
                                <p class="id_name" style="display: none;">
                                    <?= $key['id']  ?>
                                </p>
                            </th>
                            <th>
                                <p class="user_name">
                                    <?= $key['mail']  ?>
                                </p>
                            </th>
                            <th>
                                <p class="pass_name">
                                    <?= $key['pass'] ?>
                                </p>
                            </th>
                            <th>
                                <p><?= ($key['sex'] === '0')? "Nam" : "Nữ"; ?></p>
                                <p class="sex" hidden>
                                    <?= $key['sex'] ?>
                                </p>
                            </th>
                            <th>
                                <p class="phone">
                                    <?= $key['phone'] ?>
                                </p>
                                <p class="address" hidden>
                                    <?= $key['address'] ?>
                                </p>
                                <p class='img' hidden>
                                    <?= $key['img'] ?>
                                </p>
                            </th>
                            <th>
                                
                                <a href="" class="edit">
                                    <i class="bi bi-pencil-square text-warning"></i>
                                </a>
                                <a href="<?= (isset($_GET['id'])) ? strstr(param, "&id", true) : param ?>&id=<?= $key['id'] ?>" class="" onclick="return confirm('Are you sure you want to delete this item?') "> 
                                    <i class="bi bi-trash text-danger"></i>
                                </a>
                            </th>
                        </tr>
                    <?php
                    }
                ?>
                
            </tbody>
            <tfoot>
                <tr>
                    <td class="tb_checkbox">STT</td>
                    <td>Name</td>
                    <td>Pass</td>
                    <td>Sex</td>
                    <td>Phone</td>
                    <td>Action</td>
                </tr>
            </tfoot>
        </table>
    </div>
    </div>
    <div class="col-md-4">
    <form action="<?= (isset($_GET['id'])) ? strstr(param, "&id", true) : param ?>" enctype="multipart/form-data"  method="POST">
        <div class="border-left rounded shadow-sm p-2 mb-5 overflow-auto add_form">
                <h2 class="text-center right-title mb-2 text_title">Thêm tài khoản</h2>
                <div class="form_body pr-3 pl-3">
                    <input type="text" name="id" value="add" class='id' hidden >
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Name</label>
                        <input type="text" name="user" class="form-control col-sm-9 input_name" >
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Passs</label>
                        <input type="password" name="pass" class="form-control col-sm-9 input_pass" >
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Sex</label>
                        <select name="sex"  class="form-control col-sm-9 sex">
                            <option value="0">Nam</option>
                            <option value="1">Nữ</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Phone</label>
                        <input type="password" name="phone" class="form-control col-sm-9 phone" >
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword" class="col-sm-3 col-form-label">Address</label>
                        <textarea type="text" name="address" class="form-control col-sm-9 address" ></textarea>
                    </div>
                    <div class="d-flex flex-row-reverse">
                        <input type="submit" name="publish" value="publish" class="publish-submit btn btn-primary">
                    </div>
                </div>
        </div>
        <div class="postbox-content">
            <img class="img-banner" id="img-banner_id" alt="">
            <input type="file" id="avatar" class="img" name="img" accept="image/png, image/jpeg"  onchange="readURL(this);" />
            <input type="text" name="img1" class="img1" hidden>
        </div>
        </form>
    </div>
</div>

<script>
    $('.custom_admin .edit').click(function(e){
        e.preventDefault();
        table_find($(this) , '.user_name' , '.input_name');
        table_find($(this) , '.pass_name' , '.input_pass');
        table_find($(this) , '.id_name' , '.id');
        table_find($(this) , '.phone' , '.phone');
        table_find($(this) , '.address' , '.address');
        table_find_option($(this) , '.sex' , '.sex');
        $img = $(this).parent().parent().find('.img').text().trim();
        $("#img-banner_id").attr("src",'view/upload/'+ $img);
        $('.text_title').text("Sửa Thông Tin");
    });
    $('.custom_admin .add').click(function(e){
        e.preventDefault();
        $('.input_name').val('').change();
        $('.input_pass').val('').change();
        $('.phone').val('').change();
        $('.address').val('').change();
        $('.id').val('add').change();
        $('.text_title').text("Thêm tài khoản");
    });
</script>