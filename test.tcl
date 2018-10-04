#############################################################################
# Generated by PAGE version 4.17
# in conjunction with Tcl version 8.6
# Sep 26, 2018 04:43:55 PM IDT  platform: Linux
set vTcl(timestamp) ""


#############################################################################
## vTcl Code to Load User Images see vTcl:save2 in file.tcl

catch {package require Img}

foreach img {

        {{[file join / home user Desktop page page-icons page.png]} {user image} user {}}

            } {
# from vTcl:image:dump_create_image_footer
    eval set _file [lindex $img 0]
    vTcl:image:create_new_image\
        $_file [lindex $img 1] [lindex $img 2] [lindex $img 3]
}

if {!$vTcl(borrow)} {

vTcl:font:add_GUI_font TkDefaultFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkFixedFont \
"-family monospace -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkMenuFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkTextFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#############################################################################
# vTcl Code to Load User Fonts

vTcl:font:add_font \
    "-family {Gentium Basic} -size 10 -weight normal -slant roman -underline 0 -overstrike 0" \
    user \
    vTcl:font9
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top39
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top39
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top39 {base} {
    if {$base == ""} {
        set base .top39
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m40" -background {#d341d8} 
    wm focusmodel $top passive
    wm geometry $top 600x450+489+112
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3271 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "system control"
    vTcl:DefineAlias "$top" "base" vTcl:Toplevel:WidgetProc "" 1
    set site_3_0 $top.m40
    menu $site_3_0 \
        -activebackground {#d8d8d8} -activeforeground {#000000} \
        -background {#d9d9d9} -font TkMenuFont -foreground {#000000} \
        -tearoff 0 
    button $top.but41 \
        -activebackground {#d9d9d9} -background {#a477d8} -borderwidth 0 \
        -command lamp_change(1) -font $::vTcl(fonts,vTcl:font9,object) \
        -foreground {#000000} -highlightcolor black \
        -image [vTcl:image:get_image [file join / home user Desktop page page-icons page.png]] \
        -relief groove -text Bathroom 
    vTcl:DefineAlias "$top.but41" "lamp" vTcl:WidgetProc "base" 1
    button $top.but42 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#a477d8} -borderwidth 0 -command lamp_change(2) \
        -font $::vTcl(fonts,vTcl:font9,object) -foreground {#000000} \
        -highlightcolor black \
        -image [vTcl:image:get_image [file join / home user Desktop page page-icons page.png]] \
        -relief groove -text Bathroom 
    vTcl:DefineAlias "$top.but42" "lamp_1" vTcl:WidgetProc "base" 1
    button $top.but43 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#a477d8} -borderwidth 0 -command lamp_change(5) \
        -font $::vTcl(fonts,vTcl:font9,object) -foreground {#000000} \
        -highlightcolor black \
        -image [vTcl:image:get_image [file join / home user Desktop page page-icons page.png]] \
        -relief groove -text Bathroom 
    vTcl:DefineAlias "$top.but43" "lamp_2" vTcl:WidgetProc "base" 1
    button $top.but44 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#a477d8} -borderwidth 0 -command lamp_change(3) \
        -font $::vTcl(fonts,vTcl:font9,object) -foreground {#000000} \
        -highlightcolor black \
        -image [vTcl:image:get_image [file join / home user Desktop page page-icons page.png]] \
        -relief groove -text Bathroom 
    vTcl:DefineAlias "$top.but44" "lamp_3" vTcl:WidgetProc "base" 1
    button $top.but45 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#a477d8} -borderwidth 0 -command lamp_change(4) \
        -font $::vTcl(fonts,vTcl:font9,object) -foreground {#000000} \
        -highlightcolor black \
        -image [vTcl:image:get_image [file join / home user Desktop page page-icons page.png]] \
        -relief groove -text Bathroom 
    vTcl:DefineAlias "$top.but45" "lamp_4" vTcl:WidgetProc "base" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but41 \
        -in $top -x 70 -y 100 -width 82 -relwidth 0 -height 76 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but42 \
        -in $top -x 160 -y 100 -width 82 -height 76 -anchor nw \
        -bordermode ignore 
    place $top.but43 \
        -in $top -x 160 -y 190 -width 82 -height 76 -anchor nw \
        -bordermode ignore 
    place $top.but44 \
        -in $top -x 250 -y 100 -width 82 -height 76 -anchor nw \
        -bordermode ignore 
    place $top.but45 \
        -in $top -x 80 -y 190 -width 82 -height 76 -anchor nw \
        -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top39 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

