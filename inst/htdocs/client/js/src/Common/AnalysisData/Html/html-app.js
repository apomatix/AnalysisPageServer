/* 
 * Copyright Genentech - A member of the Roche Group
 * @author Adrian Nowicki <adrian.nowicki@contractors.roche.com>
 */
define(["marionette", "app", "./show/HtmlShowController"], 
function(Marionette, app, ShowController) {
    var module = app.module("Common.AnalysisData.Html");
    var globalReqRes = Backbone.Wreqr.radio.channel("global").reqres;
    
    module.on("start", function() {
        this.showC = new ShowController();
    });
    return module;
});