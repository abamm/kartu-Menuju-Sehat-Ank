// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3"],
    datasets: [{
      label: "Sessions",
      lineTension: 0.3,
      backgroundColor: false,
      borderColor: "black",
      pointRadius: 5,
      pointBackgroundColor: "Blue",
      pointBorderColor: "green",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "red",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: [100, 101, 126],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: true

        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          min: 85,
          max: 140,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "black",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
