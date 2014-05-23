//= require angular


json = [
    {id:1,name:"Valik",age:23, adult:true}
    {id:3,name:"Rinat",age:22, adult:false}
    {id:4,name:"Masha",age:20, adult:false}
    {id:2,name:"Dasha",age:21, adult:true}
  ]

app = angular.module('app', [])

app.controller('SortTableCtrl', 
  SortTableCtrl = ($scope) ->
    console.log "controller"
    $scope.head = Object.keys(json[0])
    console.log $scope.head
    $scope.data = json
      
    $scope.predicate = 'Name'

    $scope.search = (value) ->
      rows = document.querySelectorAll('tr.ng-scope')
      for row in rows
        cells = row.children
        for cell in cells
          str = cell.innerHTML
          console.log str
          if  str.indexOf(value) >= 0
            row.style.display = ''
            console.log "win"
            break
          row.style.display = 'none'
   )