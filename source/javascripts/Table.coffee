//= require angular

app = angular.module('app', [])

app.factory('Data', 
  Data =  () ->
    Data = {}
    console.log "in Data"
    Data.items = [
      {id:1,name:"Valik",age:23, adult:true}
      {id:3,name:"Rinat",age:22, adult:false}
      {id:4,name:"Masha",age:20, adult:false}
      {id:2,name:"Dasha",age:21, adult:true}
      ] )
app.controller('SortTableCtrl', 
  SortTableCtrl = ($scope) ->
    console.log "controller"
    $scope.data = Data()
    $scope.head = Object.keys($scope.data[0]).sort()
    console.log [$scope.data, $scope.head]  
    $scope.predicate = '' )