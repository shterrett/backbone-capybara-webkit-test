'use strict';

BackbonePatch.Views.Users.Edit = Backbone.View.extend({
  el: 'section#edit-user',

  events: {
    'click #put': 'putForm',
    'click #patch': 'patchForm'
  },

  updateModel: function() {
    this.model.set('name', this.$el.find('input[name="name"]').val());
    this.model.set('email', this.$el.find('input[name="email"]').val());
  },

  putForm: function() {
    this.updateModel();
    Backbone.sync('update', this.model, {
      url: '/users/' + this.model.id,
      success: function (data, response) {
        window.location = '/users';
      }
    });
  },

  patchForm: function() {
    this.updateModel();
    Backbone.sync('patch', this.model, {
      url: '/users/' + this.model.id,
      success: function (data, response) {
        window.location = '/users';
      }
    });
  }
});
