HTMLWidgets.widget({

  name: 'fusionGrid',

  type: 'output',

  factory: function(el, width, height) {

    var gridInstance = null;

    return {

      renderValue: function(x) {

        // Clear any existing content
        el.innerHTML = '';

        // Set up container
        el.style.width = width || '100%';
        el.style.height = height || '100%';

        // Create DataStore
        var dataStore = new FusionGrid.DataStore();

        // Create DataTable from data and schema
        var dataTable = dataStore.createDataTable(
          x.data,
          x.schema,
          x.dataTableOptions || { enableIndex: false }
        );

        // Prepare grid configuration
        var gridConfig = x.config || {};

        // Create FusionGrid instance
        gridInstance = new FusionGrid(el, dataTable, gridConfig);
        
        // Render the grid
        gridInstance.render();

      },

      resize: function(width, height) {
        // FusionGrid handles responsive sizing automatically
        if (gridInstance) {
          el.style.width = width;
          el.style.height = height;
        }
      }

    };
  }
});
