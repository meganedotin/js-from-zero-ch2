<weather>
  <header>
    <i class={weatherClass}></i>
    <span>{city || 'loading...'}</span>
  </header>
  <ul>
    <li>{description}</li>
    <li>{temp}&#8451;</li>
  </ul>

  <script>
    const apiBase = 'http://api.openweathermap.org/data/2.5/weather'
    const appid = opts.apikey
    const url = `${apiBase}?q=${opts.city}&APPID=${appid}&units=metric`
    this.on('mount', () => {
      fetch(url)
        .then(response => response.json())
        .then(data => {
          this.update({
            city: opts.city,
            temp: data.main.temp,
            description: data.weather[0].description,
            weatherClass: `wi wi-owm-${data.weather[0].id}`
          })
        })
    })
  </script>

  <style>
    :scope {
      border: 1px solid purple;
      border-radius: .5em;
      color: purple;
      display: block;
      margin-bottom: 1em;
      overflow: hidden;
      text-align: center;
    }
    header {
      background: purple;
      color: white;
      padding: 1em 0 .8em;
    }
    header > i {
      display: block;
      font-size: 300%;
    }
    header > span {
      display: block;
      margin-top: .5em;
    }
    ul {
      list-style: none;
      margin: 0;
      padding: 0;
    }
    ul > li {
      height: 1em;
      overflow: hidden;
      padding: .3em .6em;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
    ul > li:not(:last-child) {
      border-bottom: 1px dotted purple;
    }
  </style>
</weather>
