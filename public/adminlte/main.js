$(function () {

    $('.delete').click(function () {
        let res = confirm('Подтвердите действие');
        if (!res) return false;
    });

});