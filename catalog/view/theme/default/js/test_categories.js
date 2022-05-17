// JS для добавления слеша в url наведённой ссылки и для выделения красным цветом предыдущей

$(document).ready(function () {
    let url;
    let previousElement = false;
    let currentElement;

    $('ul.box-category > li > a').hover(function () {
        url = $(this).attr('href');
        $(this).attr('href', url + '/');

        currentElement = this;
    }, function () {
        $(this).attr('href', url);
        if (previousElement)
            $(previousElement).css({'color': '#333'});

        $(currentElement).css({'color': 'red'});
        previousElement = currentElement;
    });

});