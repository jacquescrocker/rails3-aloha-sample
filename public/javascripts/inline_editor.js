GENTICS.Aloha.settings = {
  errorhandling : false,
  ribbon: false,
  "i18n": {"current": "en"},
  "plugins": {
    "com.gentics.aloha.plugins.GCN": {
      "enabled": false
    },
    "com.gentics.aloha.plugins.Format": {
      config : [ 'b', 'i','u','del','sub','sup', 'p', 'title', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'pre', 'removeFormat'],
      editables : {
        title : [ ], // no formatting allowed
        teaser  : [ 'b', 'i', 'u', 'del', 'sub', 'sup'  ] // just basic formattings, no headers, etc.
      }
    }
  }
};

jQuery(document).ready(function($) {


  $('.aloha').aloha();

});
