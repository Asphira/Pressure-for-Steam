"steam/cached/DialogCheckForUpdates_Expanded.res" {
	controls {
		"DialogCheckForUpdates" {
			"ControlName"		"CDialogCheckForUpdates"
			"fieldName"		"DialogCheckForUpdates"
			"xpos"		"1050"
			"ypos"		"696"
			"wide"		"460"
			"tall"		"518"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"settitlebarvisible"		"1"
			"title"		"#steam_checkforupdates_title"
		}
		
		"ProgressBar" {
			"ControlName"		"ProgressBar"
			"fieldName"		"ProgressBar"
			"xpos"		"24"
			"ypos"		"115"
			"wide"		"408"
			"tall"		"24"
			"AutoResize"		"1"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"progress"		"0.934772"
		}
		
		"HTML" {
			"ControlName"		"HTML"
			"fieldName"		"HTML"
			"xpos"		"24"
			"ypos"		"184"
			"wide"		"408"
			"tall"		"320"
			"AutoResize"		"3"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
		}
		
		"InfoLabel" {
			"ControlName"		"Label"
			"fieldName"		"InfoLabel"
			"xpos"		"24"
			"ypos"		"30"
			"wide"		"408"
			"tall"		"40"
			"AutoResize"		"1"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"appearance"		"LabelBright"
			"textAlignment"		"west"
			"wrap"		"1"
		}
		
		"InfoLabel2" {
			"ControlName"		"Label"
			"fieldName"		"InfoLabel2"
			"xpos"		"24"
			"ypos"		"69"
			"wide"		"400"
			"tall"		"40"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"textAlignment"		"north-west"
			"wrap"		"1"
		}
		
		"RestartNowButton" {
			"ControlName"		"Button"
			"fieldName"		"RestartNowButton"
			"xpos"		"250"
			"ypos"		"146"
			"wide"		"110"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"0"
			"enabled"		"1"
			"tabPosition"		"1"
			"paintbackground"		"1"
			"labelText"		"#Steam_MustRestart_Button"
			"textAlignment"		"west"
			"wrap"		"0"
			"Command"		"Restart"
			"Default"		"0"
		}
		
		"Button1" {
			"ControlName"		"Button"
			"fieldName"		"Button1"
			"xpos"		"368"
			"ypos"		"146"
			"wide"		"64"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"2"
			"paintbackground"		"1"
			"labelText"		"#vgui_close"
			"textAlignment"		"west"
			"wrap"		"0"
			"Command"		"close"
			"Default"		"0"
		}
		
		"BytesDownloaded" {
			"ControlName"		"Label"
			"fieldName"		"BytesDownloaded"
			"xpos"		"30"
			"ypos"		"90"
			"wide"		"400"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"textAlignment"		"east"
			"wrap"		"0"
		}
	}
	
	styles {
		frame {
			bgcolor=darkestGrey
			
			render_bg {
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
				
				3="image(x0+20, y0+60, x1, y1, graphics/dialogs/updateDownloaded)"
			}
		}
	}
	
	layout{
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		place { 
			control="InfoLabel,InfoLabel2,HTML" 
			width=max 
			dir=down
			spacing=10
			margin-left=16
			margin-right=16
			y=36
		}
		
		//Bottom
		region { 
			name=bottom 
			align=bottom 
			height=51
			width=max
		}
		
		place {	
			control="RestartNowButton,Button1" 
			region=bottom 
			align=right 
			spacing=8 
			height=24
			margin-right=10
			margin-top=13 
		}
	}
}