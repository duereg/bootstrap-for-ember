Bootstrap.BsBtnContainer = Ember.ContainerView.extend(
    classNames: ['btn-group'],
    childViews: [Bootstrap.BsButtonItemView],
    init: ->
        @_super()
        @set('icon_active', @get('parentView.icon_active'))
        @set('icon_inactive', @get('parentView.icon_inactive'))
)

Ember.Handlebars.helper 'bs-btn-container', Bootstrap.BsBtnContainer
