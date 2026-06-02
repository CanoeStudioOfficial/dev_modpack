//priority 50


def SOFMODPACKTab = content.createCreativeTab("content.sof_tab", _ -> item('sof:guide_book_tab'))

content.createItem('fiber_stick')
	 .setCreativeTab(SOFMODPACKTab) 
     .register()


content.createItem('guide_book_tab')
	 .setCreativeTab(SOFMODPACKTab) 
     .register() 