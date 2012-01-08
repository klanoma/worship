$ ->
  $("table#services").dataTable
    bJQueryUI: true
    sPaginationType: "full_numbers"
    sDom: "<f>t<\"F\"lp>"
    aoColumns: [ null, null, null,
      bSortable: false
      bSearchable: false
    ,
      bSortable: false
      bSearchable: false
     ]