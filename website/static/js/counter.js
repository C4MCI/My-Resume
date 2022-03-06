fetch('https://6mwrauob4f.execute-api.eu-central-1.amazonaws.com/Prod/put')
    .then(() => fetch('https://6mwrauob4f.execute-api.eu-central-1.amazonaws.com/Prod/get'))
    .then(response => response.json())
    .then((data) => {
        document.getElementById('counter').innerText = data.count
    })