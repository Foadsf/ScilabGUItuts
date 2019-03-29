This example has been copied from [scilab.org](https://wiki.scilab.org/howto/guicontrol). A selectable list of items is created and where upon selection their rank in the list is displayed in the terminal:

<img src="Ex005_pic01.gif" alt="final" width="700" style="width:700px;"/>

Any `uicontrol` object has a `.Callback` attribute (or `"calback"`  property for the `uicontrol()` initialization function) which upon any interaction with the object runs a given string as SciLab commands. In this case clicking on any of the items in the list firstly changes the `.Value` attribute to the selected item and then runs the `updateListBox` function.
