<html>
    <head>
        <title>Apri Molti</title>
        <style>
            body {
                font-family: roboto;
            }
            form {
                display: flex;
                height: 300px;
                width: 100%;
                flex-wrap: wrap;
            }
            textarea {
                display: flex;
                margin: 1rem;
                flex-basis: 100%;
            }
            input[type="submit"] {
                color: white;
                background-color: green;
                border: 0;
                border-radius: 5px;
                width: 75px;
                height: 30px;
                display: flex;
                margin: 1rem;
                cursor: pointer;
            }

        </style>
    </head>
    <body>
        <form action="">
            <textarea placeholder="Enter URLs here.">
            </textarea>
            <input type="submit" value="Open Tabs" />
        </form>

        <script>
            const form = document.querySelector('form');
            form.addEventListener('submit', event => {
                event.preventDefault();
                const urls = form.querySelector('textarea').value.split('\n');
                urls.forEach( (url, i) => {
                    window.open(url,'_blank_'+i);
                });
            });
        </script>
    </body>
</html>