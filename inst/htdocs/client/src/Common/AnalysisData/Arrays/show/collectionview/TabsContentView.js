/*
 * Copyright Genentech - A member of the Roche Group
 * @author Adrian Nowicki <adrian.nowicki@contractors.roche.com>
 */
import Marionette from "marionette";
import app from "app";
import "bootstrap";

export default Marionette.CollectionView.extend({

    className: "tab-content",

    childView: Marionette.ItemView,
    childViewOptions: function(dataModel, i) {
        return {
            className: "tab-pane",
            pageModel: this.getOption("pageModel")
        };
    },

    buildChildView: function(dataModel, ChildView, options) {
        var contentItemView = app.channel.request("analysis-data:views:"+dataModel.get("type"), dataModel.analysisData, options);
        contentItemView.relatedModelCid = dataModel.cid;
        return contentItemView;
    },

    onRender: function() {
        this.setActiveTab(this.collection.at(0));
    },

    setActiveTab: function(selectedModel) {
        this.children.each(function(child) {
            child.$el.removeClass("active");
        });
        var activeChild = this.children.find(function(child) {
            return child.relatedModelCid === selectedModel.cid;
        });
        activeChild && activeChild.$el.addClass("active");
    }
});
