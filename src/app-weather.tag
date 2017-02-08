<app-weather>
  <h2>{title}</h2>
  <p>{description}</p>
  <ul>
    <li each={forecasts}>
      <time>{date}</time>
      <span>{weather}</span>
      <img src={imageUrl}>
      <ul>
        <li>{maxTemp}</li>
        <li>{minTemp}</li>
      </ul>
    </li>
  </ul>

  <script>
    const apiBase = 'http://weather.livedoor.com/forecast/webservice/json/v1'

    this.on('mount', () => {
      const url = `${apiBase}?city=${opts.city}`
      fetch(url)
        .then(response => response.json())
        .then(data => {
          const title = data.title
          const description = data.description.text
          const forecasts = data.forecasts.map(forecast => ({
            date: forecast.dateLabel,
            weather: forecast.telop,
            maxTemp: forecast.temperature.max.celsius,
            minTemp: forecast.temperature.min.celsius,
            imageUrl: forecast.image.url
          }))
          this.update({title, description, forecasts})
        })
    })
  </script>

  <style>
    :scope {
      display: block;
    }
  </style>
</app-weather>
