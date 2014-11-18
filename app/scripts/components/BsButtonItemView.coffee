Bootstrap.BsButtonItemView = Bootstrap.BsButtonComponent.extend(Bootstrap.ItemValue, Bootstrap.ItemSelection,
    init: ->
        @_super()
        @set('icon_active', @get('parentView.icon_active'))
        @set('icon_inactive', @get('parentView.icon_inactive'))
)
