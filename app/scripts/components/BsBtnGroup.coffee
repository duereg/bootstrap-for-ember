###
Button Group.

In its simple form, each item in the button group is a Bootstrap.Button component,
In case this is a Radio, each item is rendered as a label.
###
Bootstrap.BsBtnGroup = Bootstrap.ItemsView.extend(Bootstrap.SizeSupport, Bootstrap.ItemsSelection,
    classTypePrefix: ['btn-group']
    classNameBindings: ['vertical:btn-group-vertical:btn-group', 'justified:btn-group-justified']
    itemViewClass: Bootstrap.BsButtonComponent.extend(Bootstrap.ItemValue, Bootstrap.ItemSelection,
        init: ->
            @_super()
            @set('icon_active', @get('parentView.icon_active'))
            @set('icon_inactive', @get('parentView.icon_inactive'))
            if @get('parentView.justified')
                console.log('it was justified')
                @set('layoutName', 'components/bs-button-group')
    )
)

Ember.Handlebars.helper 'bs-btn-group', Bootstrap.BsBtnGroup
