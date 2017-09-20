$(document).ready(function() {
  Highcharts.chart('container', {
    chart: {
      type: 'line'
    },
    title: {
      text: 'Student Perfomance Trend'
    },
    subtitle: {
      text: 'Source: www.school.com'
    },
    xAxis: {
      categories: ['Math', 'Eng', 'Kisw', 'Geography', 'History', 'Biology', 'Chemistry', 'Biology', 'Physics', 'Agriculture', 'Art', 'Music']
    },
    yAxis: {
      title: {
        text: 'Grades (%)'
      }
    },
    plotOptions: {
      line: {
        dataLabels: {
          enabled: true
        },
        enableMouseTracking: false
      }
    },
    series: [{
      name: 'Paul Nderitu',
      data: [86, 76, 72, 86, 84, 86, 56, 00, 18, 83, 96, 96]
    }, {
      name: 'Shariff Awo',
      data: [98, 85, 57, 85, 91, 67, 70, 66, 42, 0.3, 66, 98]
    }]
  });
});
