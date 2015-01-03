"friends/FriendOnlineNotification.res" {	
	controls {
		"FriendOnlineNotification" {
			"ControlName"		"CFriendOnlineNotification"
			"fieldName"		"FriendOnlineNotification"
			"xpos"		"0"
			"ypos"		"0"
			"wide"		"240"
			"tall"		"98"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			style="notification"
		}
		
		"ImageAvatar" {
			"ControlName"		"ImagePanel"
			"fieldName"		"ImageAvatar"
			"xpos"		"16"
			"ypos"		"16"
			"wide"		"42"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"gradientVertical"		"0"
			"scaleImage"		"0"
		}
		
		"NotificationClickPanel" {
			"ControlName"		"CNotificationClickPanel"
			"fieldName"		"NotificationClickPanel"
			"xpos"		"0"
			"ypos"		"0"
			"zpos"		"1"
			"wide"		"64"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"0"
		}
		
		"LabelSender" {
			"ControlName"		"Label"
			"fieldName"		"LabelSender"
			"xpos"		"64"
			"ypos"		"16"
			"wide"		"172"
			"tall"		"14"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"%name%"
			"textAlignment"		"north-west"
			"wrap"		"0"
			"font"		FriendsSmall
		}
		
		"LabelInfo" {
			"ControlName"		"Label"
			"fieldName"		"LabelInfo"
			"xpos"		"64"
			"ypos"		"30"
			"wide"		"172"
			"tall"		"14"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Friends_OnlineNotification_Info"
			"textAlignment"		"north-west"
			"wrap"		"0"
			"font"		FriendsSmall
			"textcolor"		"NotificationBodyText"
		}
		
		"DarkenedRegion" {
			"controlname"	"imagepanel"
			"fieldname"		"DarkenedRegion"
			"xpos"		"0"
			"ypos"		"74"
			"wide"		"240"
			"tall"		"24"
			"fillcolor"	"Black"
			"zpos"		"-1"
		}
		
		"LabelHotkey" {
			"ControlName"		"Label"
			"fieldName"		"LabelHotkey"
			"xpos"		"0"
			"ypos"		"74"
			"wide"		"240"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Friends_OnlineNotification_Hotkey"
			"textAlignment"		"center"
			"wrap"		"0"
			"font"		FriendsSmall
		}
	}
	
	styles {
		Notification [!$OSX] {
			font-family=basefont
			font-size=15
			font-weight=400
			
			
			bgcolor=none
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				
				1="gradient(x0+1,y0+2,x1-1,y1,grey,lightGreyEnd)"
				
				// Single pixel corner fills
				2="fill(x0+1,y0+1,x0+2,y0+2, darkGreyEnd)" // Top Left
				3="fill(x0+1,y1-1,x0+2,y1, darkGreyEnd)" // Bottom Left
				4="fill(x1-2,y0+1,x1-1,y0+2, darkGreyEnd)" // Top Right
				5="fill(x1-2,y1-1,x1-1,y1, darkGreyEnd)" // Bottom Right
				
				// Anti-aliased grey highlight
				6="fill(x0+1,y0+2,x0+2,y0+3, lighterGrey)" // Top Bottom Left
				7="fill(x0+2,y0+1,x0+3,y0+2, lighterGrey)" // Top Top Left
				8="fill(x1-3, y0+1, x1-2, y0+2, lighterGrey)" // Top Top Right
				9="fill(x1-2,y0+2,x1-1,y0+3, lighterGrey)" // Top Bottom Right
				
				// Grey Highlight
				10="fill(x0+3,y0+1,x1-3,y0+2, greyHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/online)"
			}
	      
			render {}
	    }
 
		Notification [$OSX] {
			font-family=basefont
			font-size=15
			font-weight=400
			
			
			bgcolor=none
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				
				1="gradient(x0+1,y0+1,x1-1,y1-1,grey,lightGreyEnd)"
				
				// Single pixel corner fills
				2="fill(x0+1,y0,x0+2,y0+1, darkGreyEnd)" // Top Left
				3="fill(x0+1,y1-2,x0+2,y1-1, darkGreyEnd)" // Bottom Left
				4="fill(x1-2,y0,x1-1,y0+1, darkGreyEnd)" // Top Right
				5="fill(x1-2,y1-2,x1-1,y1-1, darkGreyEnd)" // Bottom Right
				
				// Anti-aliased grey highlight
				6="fill(x0+1,y0+1,x0+2,y0+2, lighterGrey)" // Top Bottom Left
				7="fill(x0+2,y0,x0+3,y0+1, lighterGrey)" // Top Top Left
				8="fill(x1-3, y0, x1-2, y0+1, lighterGrey)" // Top Top Right
				9="fill(x1-2,y0+1,x1-1,y0+2, lighterGrey)" // Top Bottom Right
				
				// Grey Highlight
				10="fill(x0+3,y0,x1-3,y0+1, greyHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/online)"
			}
	      
			render {}
	    }
	}
	
	layout {
		place { 
			control="ImageAvatar" 
			x=16 
			y=16 
		}
		
		place { 
			control="LabelSender,LabelInfo" 
			x=70
			width=160 
			dir=down 
			margin-top=15 
			margin-bottom=0 
		}	
	}
}
