
var rows_per_page = 3;
var total_rows;
$(document).ready(function(){
    //Set up the page number links
    initPageNumbers();
    //Set the default page number
    var page_num = 1;
    //If there's a hash fragment specifying a page number
    if(window.location.hash !== '')
    {
        //Get the hash fragment as an integer
        var hash_num = parseInt(window.location.hash.substring(1));
        //If the hash fragment integer is valid
        if(hash_num > 0)
        {
            //Overwrite the default page number with the user supplied number
            page_num = hash_num;
        }
    }
    //Load the first page
    getPage(page_num);
});
function initPageNumbers()
{
    //Get total rows number
    $.get('data/countrows', function(data){
        total_rows = parseInt(data.total_rows);
        //Loop through every available page and output a page link
        var count = 1;
        for(var x = 0;  x < total_rows; x += rows_per_page)
        {
            $('#page-numbers').append('<li><a href="#'+count+'" onclick="getPage('+count+');">'+count+'</a></li>');
            count++;
        }
    });
}
function getPage(page_num)
{
    //Clear the existing data view
    $('#rows').html('');
    //Get subset of data
    $.get('data/page/'+page_num+'/'+rows_per_page, function(data){
        //Loop through each row and output the data
        $(data).each(function(){
            $('#rows').append('<li>'+this.name+'</li>');
        });
    });
}
