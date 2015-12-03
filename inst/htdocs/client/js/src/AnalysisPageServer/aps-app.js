/* 
 * Copyright Genentech - A member of the Roche Group
 * @author Adrian Nowicki <adrian.nowicki@contractors.roche.com>
 */
define(["marionette", "app", 
    "./Forms/forms-app", "./Pages/pages-app", "./Parameters/parameters-app"], 
function(Marionette, app) {
    var module = app.module("AnalysisPageServer");
    var globalReqRes = Backbone.Wreqr.radio.channel("global").reqres;
    
    module.on("start", function() {
        
    });
    return module;
});