$( document ).ready(function() {
  var searchBars =  new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote:         $("#bars_auto_search").data('autocomplete-url') + '?name=%QUERY'
  });

  searchBars.initialize();

  $("#bars_auto_search").typeahead(null, {
    displayKey: 'name',
    source:     searchBars.ttAdapter()
  });
});
