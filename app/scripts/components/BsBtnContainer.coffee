Bootstrap.BsBtnContainer = Ember.ContainerView.extend(
    classNames: ['btn-group'],
    childViews: ['buttonItemView'],
    buttonItemView: ->
        Bootstrap.BsButtonItemView.create {content: @get('content')}
    init: ->
        @_super()
        @set('icon_active', @get('parentView.icon_active'))
        @set('icon_inactive', @get('parentView.icon_inactive'))
        content = this.get('content')
        @get('childViews').forEach (view) ->
            view.set('content', content)
)

Ember.Handlebars.helper 'bs-btn-container', Bootstrap.BsBtnContainer
