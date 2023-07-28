<!DOCTYPE html>
<html>
    <head>

<script src="https://code.jquery.com/jquery-3.7.0.slim.min.js" integrity="sha256-tG5mcZUtJsZvyKAxYLVXrmjKBVLd6VpVccqz/r4ypFE=" crossorigin="anonymous"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>


<link href="https://cdn.jsdelivr.net/npm/tom-select@2.2.2/dist/css/tom-select.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/tom-select@2.2.2/dist/js/tom-select.complete.min.js"></script>


    </head>
    <body>


                <select id="select-repo" placeholder="Pick a repository..." multiple class="form-control"></select>


    </body>
</html>


<script type="text/javascript">
    

new TomSelect('#select-repo',{
        valueField: 'url',
        labelField: 'name',
        searchField: 'name',
        // fetch remote data
        load: function(query, callback) {

            var url = 'http://localhost/dms/test/data';


            fetch(url)
                .then(response => response.json())
                .then(json => {
                    callback(json);
                    console.log(json)
                }).catch(()=>{
                    alert(1);
                    callback();
                });

        },
        // custom rendering functions for options and items
        render: {
            option: function(item, escape) {
                return '<div>' + escape(item.name) + ' - ' + escape(item.email) + '</div>';
            },
            item: function(item, escape) {
                return '<div>' + escape(item.name) + ' - ' + escape(item.email) + '</div>';
            }
        },
    });




</script>

<!-- <style type="text/css">
.icon{
    width: 3rem;
}
.item{
    width: 100%;
}
</style> -->