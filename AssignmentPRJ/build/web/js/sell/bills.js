/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function pagger(id, pageindex, totalpage, gap)
{
    var container = document.getElementById(id);
    var result = '';
    //generate first
    if (pageindex - gap > 1)
        result += '<li class="page-item"><a href="warehouse?page=1" class="page-link">1</a></li>';

    for (var i = pageindex - gap; i < pageindex; i++)
    {
        if (i >= 1)
        {
            result += '<li class="page-item"><a href="warehouse?page=' + i + '" class="page-link">' + i + '</a></li>';
        }
    }

    // generate span for pageindex
    result += '<li class="active page-item"><a href="#" class="page-link">' + pageindex + '</a></li>';

    for (var i = pageindex + 1; i <= pageindex + gap; i++)
    {
        if (i <= totalpage)
        {
            result += '<li class="page-item"><a href="warehouse?page=' + i + '" class="page-link">' + i + '</a></li>';
        }
    }

    //generate last
    if (pageindex + gap < totalpage)
        result += '<li class="page-item"><a href="warehouse?page=' + totalpage + '" class="page-link">' + totalpage + '</a></li>';

    container.innerHTML = result;
}
