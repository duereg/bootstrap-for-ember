###
Button Group.

In its simple form, each item in the button group is a Bootstrap.Button component,
In case this is a Radio, each item is rendered as a label.
###


Bootstrap.BsBtnGroup = Bootstrap.ItemsView.extend(Bootstrap.SizeSupport, Bootstrap.ItemsSelection,
    classTypePrefix: ['btn-group']
    classNameBindings: ['vertical:btn-group-vertical:btn-group', 'justified:btn-group-justified']
    createChildView: (viewClass, attrs) ->
        if (this.get('justified'))
          viewClass = Bootstrap.BsBtnContainer
        else
          viewClass = Bootstrap.BsButtonItemView

        this._super(viewClass, attrs)
)

Ember.Handlebars.helper 'bs-btn-group', Bootstrap.BsBtnGroup
