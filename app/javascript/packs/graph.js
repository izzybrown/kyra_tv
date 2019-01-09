google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

 function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Date');
        data.addColumn('number', 'No. of Videos');
        data.addRows([
          ['Week 1', 1],
          ['Week 2', 2],
          ['Week 3', 1],
          ['Week 4', 1],
          ['Week 5', 1],
        ]);

var options = {'title':'How many PAQ videos were published in Dec 2018',
                       'width':400,
                       'height':300};
var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
chart.draw(data, options);
      }
