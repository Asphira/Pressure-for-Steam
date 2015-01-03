"Friends/FriendsDialog.res" {
	controls {
		"FriendsDialog" {
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"settitlebarvisible"    "0"
			style="FriendsPanel"    
			closeonescape=1
		}

		"BuddyList" {
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}

		"frame_title" {
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
			"textAlignment"   "center" [$OSX]
		}

		"DownLabel" {
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}

		"MenuBar" {
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			zpos="-1" 
		}

		"FriendPanelSelf" {
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"1"
		}

		"AddFriendsButton" {
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "0"
			"ypos"    "0"
			"wide"    "0"
			"tall"    "0"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "0"
			"enabled"   "0"
			"tabPosition"   "3"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
			zpos=10
		}

		"NoFriendsAddFriendButton" {
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		
		"FriendsState" {
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
		}
		
		friends_search { 
			ControlName=TextEntry 
			maxchars=16 
			hintText="#steam_library_search" 
			style="FriendsSearch" 
			unicode=1 
			tabposition=2 
			zpos=9
		}
		
		friends_search_icon	{ 
			ControlName=Label 
			style="FriendsSearchIcon" 
			zpos=4 
		}		
	}

	styles {
		// Here we force-set the minimum width to ensure that the search bar is not cut off.
		CFriendsDialog {
			minimum-width=294
			minimum-height=400
			font-family=basefont
			font-style="normal"	
		}
		
		ListPanelSectionHeader {
			font-family=semibold
		}
		
		FrameTitle {
			font-family=basefont
			font-size=1
			font-weight=400
			bgcolor  = "none"
			textcolor  = "none"

			render_bg {
				// Creates the top section
				0="gradient( x0+1, y0+1, x1-1, y0 + 100, grey, darkGreyEnd )"
				
				1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
				2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel
				
				3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
				4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased
				
				5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
				6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased
				
				// Create the 1px Highlight on top
				7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"
				
				// Creates the section.
				//2="gradient( x0+1, y0+88, x1-1, y0+125, grey, lightGreyEnd )"
				//3="fill(x0+1,y0+87,x1-1,y0+88, darkestGrey)"
				//4="fill(x0+1,y0+88, x1-1, y0+89, greyHighlight)"
				
				8="image_tiled(x0+1, y0+87, x1-1, y0+125, graphics/subnav_bg)"
				
				9="fill(x0+1, y0+88, x0+2, y0+125, grey10)"
				10="fill(x1-2, y0+88, x1-1, y0+125, grey10)"
				
				11="fill(x0+1, y0+126, x1-1, y0+127, darkestGrey)"
				
				// Background for the pageTabs
				15="fill(x0+7,y0+94,x0+146,y0+118, darkestGrey)"// Top->Bottom
				16="fill(x0+6,y0+95,x0+7,y0+117, darkestGrey)" // Left
				17="fill(x0+146,y0+95,x0+147,y0+117, darkestGrey)" // Right
				18="fill(x0+7,y0+118,x0+146,y0+119, grey50)"
				19="fill(x0+6, y0+117, x0+7, y0+118, grey50)"
				20="fill(x0+146, y0+117, x0+147, y0+118, grey50)"
			}
	    }
	
		    FrameTitle:framefocus {
				font-family=basefont
				inset  = "0 4 0 0" [$OSX]
				font-size=1
				font-weight=400
				bgcolor  = "none"
				textcolor="none"

				render_bg {
					// Creates the top section
					0="gradient( x0+1, y0+1, x1-1, y0 + 100, grey, darkGreyEnd )"
					
					1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
					2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel
					
					3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
					4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased
					
					5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
					6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased
					
					// Create the 1px Highlight on top
					7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"
					
					// Creates the section.
					//2="gradient( x0+1, y0+88, x1-1, y0+125, grey, lightGreyEnd )"
					//3="fill(x0+1,y0+87,x1-1,y0+88, darkestGrey)"
					//4="fill(x0+1,y0+88, x1-1, y0+89, greyHighlight)"
					
					8="image_tiled(x0+1, y0+87, x1-1, y0+125, graphics/subnav_bg)"
					
					9="fill(x0+1, y0+88, x0+2, y0+125, grey10)"
					10="fill(x1-2, y0+88, x1-1, y0+125, grey10)"
					
					11="fill(x0+1, y0+125, x1-1, y0+126, darkestGrey)"
					
					// Background for the pageTabs
					15="fill(x0+7,y0+94,x0+146,y0+118, darkestGrey)"// Top->Bottom
					16="fill(x0+6,y0+95,x0+7,y0+117, darkestGrey)" // Left
					17="fill(x0+146,y0+95,x0+147,y0+117, darkestGrey)" // Right
					18="fill(x0+7,y0+118,x0+146,y0+119, grey50)"
					19="fill(x0+6, y0+117, x0+7, y0+118, grey50)"
					20="fill(x0+146, y0+117, x0+147, y0+118, grey50)"
					
					21="fill(x0+1,y0+87,x1-1,y0+88, darkestGrey)"
				}
			}
	
		// Used to push the friends section down lower for trickery with the PageTabs.
		Page {
			inset="0 10 0 0"
			font-family=basefont
			font-style="none"
			
			bgcolor=none
		}
	
		SectionedlistpanelCollapser {
			image="graphics/icon_collapse"
			padding-top=0
			padding-bottom=-5
			font-family=basefont
			font-style="normal"
			minimum-height=14
			
			inset="-4 -5 0 0"
			
			render_bg {
				//0="fill(x0,y0,x1,y1, darkestGrey)"
				
				//1="fill( x0, y1-16, x1, y1-15, darkestGrey )"
				//2="fill( x0+1, y1-15, x1-1, y1-14, greyHighlight )"
				//3="gradient( x0+1, y1-14, x1-1, y1-1, grey, lightGreyEnd )"
			}   
		}
		
			SectionedlistpanelCollapser:selected {
				image="graphics/icon_expand"
			}
	
	
		// Overriding the default styling for these controls.
		// So far, can't work out a way to move the pagetabs higher from their current position to make the button look.
		PageTab {
			minimum-height=34
			minimum-width=68
			textcolor=white
			
			inset="6 0 0 0"
			font-family=basefont
			font-style="outerglow,regular"
			font-outerglow-color="darkGreyEnd"
			font-outerglow-offset=1
			font-outerglow-filtersize=1
			
			render_bg {
				0="fill(x0+8,y0+6,x1+9,y1-6, blue)"
				
				1="gradient(x0+8, y0+6, x1+9, y1-6, grey, lightGreyEnd)"
				2="fill(x0+8, y0+6, x1+9, y0+7, greyHighlight)"
				
			}
		}
		
			PageTab:hover {
				textcolor=white
				
				render_bg {
					0="gradient(x0+8, y0+6, x1+9, y1-6, greyHighlight, grey)"
					1="fill(x0+8, y0+6, x1+9, y0+7, lightestGreyHighlight)"
				}			
			}
			
			PageTab:selected {
				textcolor=blue
				
				render_bg {
					//0="fill(x0+8,y0+6,x1+9,y1-6, green)"
				}
			}
		
		"CFriendsDialog SectionedListPanel" {
		    bgcolor  = "none"
		    font-family=basefont
		      
		    render_bg {
			    // background fill to overwrite the normal listPanel background
				0  = "fill( x0, y0, x1, y1, darkestGrey)"
		    }    
	    }
	    
	    CFriendsListSectionHeader {
			inset="0 0 0 0"
			textcolor=white
			
			font-family=semibold
			font-style="regular,normal"
						
			render_bg {
				0="gradient(x0-22, y0+1, x1, y1, grey, lightGreyEnd)"
				1="fill(x0-22, y0, x1, y0+1, greyHighlight)"
				2="gradient(x0,y1,x1,y1+2, black65, none)"
			}    
	    }
    
		
		// The actual whole dialog window itself.
		FriendsPanel {	
			bgcolor="none"
			
			render {}
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				
				1="fill( x0, y1-16, x1, y1-15, darkestGrey )"
				2="fill( x0+1, y1-15, x1-1, y1-14, greyHighlight )"
				3="gradient( x0+1, y1-14, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}	
		
		"CFriendsDialog SectionedListPanel" {
			font-family=basefont
			font-style="regular,normal"
			//inset="0 30 0 0"
		}
		
		AddFriendsButton  {
			font-family=basefont
			font-size=14
			font-weight=400
			textcolor="none"
			
			render {
				0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
				0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
			}
		
			render_bg {}
		}
		   

			AddFriendsButton:hover {
				textcolor="none"
				render_bg {}
			}	  	
				
		RootMenu {
			textcolor="none"
			bgcolor="none"
		} 

		// Hide the word "Friends" on the title area.
		FriendsTitle [$OSX] {
			font-family=basefont
			font-size=1
			font-weight=400
			textcolor="none"
			bgcolor="none"
		}

			FriendsTitle:FrameFocus [$OSX] {
				font-family=basefont
				font-size=1
				font-weight=400
				textcolor="none"
				bgcolor="none"
			}

		"MenuBar MenuButton" {
			textcolor="none"
			
			render_bg {	
				0="image( x0, y0, x1,y1, graphics/supermenus/friends/normal )"
			}
		}

			"MenuBar MenuButton:hover" {
				textcolor="none"
				
				render_bg {					
					0="image( x0, y0, x1,y1, graphics/supermenus/friends/hover )"
				}
			}
			
			"MenuBar MenuButton:selected" {
				textcolor="none"
				
				render_bg {
					0="image( x0, y0, x1,y1, graphics/supermenus/friends/active )"
				}
			}		
		
		
		FriendsSearch [!$OSX] {
			font-family=basefont
			font-size=14
			font-weight=400	
			textcolor="darkestGrey"
			padding-left=4
			padding-right=20
			inset-left=0
			minimum-width=110
			
			render_bg {
				1="image(x0-19, y0, x0+3, y0+25, graphics/search/left)"
				2="image(x1-14, y0, x1-2, y0+25, graphics/search/right)"
				3="image_tiled(x0+3, y0, x1-14, y0+25, graphics/search/inner)"
			}
		}

		
		FriendsSearch [$OSX] {
			font-family=basefont
			font-size=14
			font-weight=400	
			textcolor="darkestGrey"
			inset-left=0
			minimum-width=110
			
			//bgcolor=red
			
			render_bg {
				1="image(x0-19, y0-1, x0+3, y0+24, graphics/search/left)"
				2="image(x1-14, y0-1, x1-2, y0+24, graphics/search/right)"
				3="image_tiled(x0+3, y0-1, x1-14, y0+24, graphics/search/inner)"
			}
		}
		
		// Typed in, as well as hovered.
		
		FriendsSearch:hover [!$OSX] {
			textcolor="darkGreyEnd"
			padding-left=4
		}

		FriendsSearch:hover [$OSX] {
			textcolor="darkGreyEnd"
			padding-left=0	
			
		}
		
		// Default State when nothing in it.
		
		FriendsSearch:empty [!$OSX] {
			font-family=basefont
			font-style=italic
			textcolor="lightestGrey"
			padding-left=4	
		}
		
		FriendsSearch:empty [$OSX] {
			font-family=basefont
			font-style=italic
			textcolor="lightestGrey"
			padding-left=0	
		}
		
		FriendsSearch:empty:hover [!$OSX] {
				font-style=italic
				textcolor="lightGreyEnd"
				padding-left=4
		}
			
		FriendsSearch:empty:hover [$OSX] {
				font-style=italic
				textcolor="lightGreyEnd"
				padding-left=0
				
		}

		FriendsSearch:disabled [!$OSX] {
			font-family=basefont
			font-style=italic
			textcolor="None"
			padding-left=4
		}
			
		FriendsSearch:disabled [$OSX] {
			font-family=basefont
			font-style=italic
			textcolor="None"
			padding-left=0
		}
			
		// Used as an overlay to round off the buttons
		FriendsSearchIcon {
			bgcolor="none"
			textcolor=none
			
			render_bg {
				0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
				0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
			}
		}
		
			FriendsSearchIcon:disabled {
				bgcolor="none"
				inset="0 0 0 0"
				
				render_bg {
					0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
					0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
				}
			}		
		
		
		// This will only affect the HEADERS inside it for some reason
		"CFriendsDialog SectionedListPanelInterior" {
			font-family=semibold
			font-style="regular"
			
			inset="0 -3 0 0"
			minimum-width=800
			bgcolor=none
			
			font-size=14
			font-weight=400
			textcolor  = "white"
			selectedtextcolor  = "blue"
			selectedbgcolor  = "green"
			shadowtextcolor  = "darkGreyEnd"	// the color of disabled line items			
		}
	
			"CFriendsDialog SectionedListPanelInterior:scrollbar" {
				font-family=semibold
				font-style="regular,normal"
				padding-right=15
			}	
	}
 	
 	layout {
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}

		place [$OSX] { 
			control="frame_title" 
			align=center 
			x=0 
			y=0 
			width=max 
			height=20 
		}
		
		place [!$OSX] { 
			control="frame_title" 
			visible=0 
			x=0
			y=0 
			width=max 
			height=0 
		}

 		// the title bar is missing, so increase the size of the grip
		place { 
			control="frame_captiongrip" 
			margin=2 
			width=max 
			height=38 
		}
		
		place [!$OSX] { 
			control="MenuBar" 
			margin-left=2 
			width=62 
			height=24 
			margin-top=-1 
		}
		
		place { 
			control="friends_search" 
			dir=right 
			margin-left=170 
			y=95 
			width=117 
			height=25 
		}

		place { 
			control="FriendPanelSelf" 
			x=12
			y=26
			width=max
		}
	
		place { 
			control="FriendsDialogSheet" 
			y=85 
			align=left 
			margin-left=-1 
			margin-right=0 
			margin-top=0 
			margin-bottom=16 
			width=max 
			height=max 
		}
		
		// Use this for cleverness to make the buttons.
		place { 
			control="friends_search_icon" 
			margin-left=7 
			dir=right 
			y=95 
			height=22 
			width=1
		}
		
		place { 
			control="addFriendsButton" 
			margin-left=145 
			dir=right 
			y=95 
			height=22 
			width=1
		}
		
		place {
			control="DownLabel"
			margin-top=135
			height=max
			margin-left=8
		}
		
		place {
			control="NoFriendsAddFriendButton"
			margin-top=94
			margin-left=6
			width=141
			height=24
		}
 	}
}
