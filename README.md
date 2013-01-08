# devDock: tablet toolbar overlay for geeks!## BackgroundI'm Stacey Reiman, work at home mom with 3 adorable kids, and an app developer who recently switched from Flash to HTML5. My badly neglected  blog is here:<http://www.akwebgenius.com/blog> You can find my 20 or so apps thoughout the various app ecosystems under the name InstaSpanish as well as my own name. [The Insta Spanish Kids App](https://itunes.apple.com/us/app/instaspanish-kids-lessons/id488540338?mt=8), [Learn to Read Kids](https://itunes.apple.com/us/app/learn-to-read-kids/id552476784?mt=8), and [Dress the Pig](https://itunes.apple.com/us/app/dress-the-pig/id493344970?mt=8) are probably my 3 most popular apps :)I was one of the app developers lucky enough to receive a Samsung Series 7 Slate PC from Microsoft a little while back, and found it to be a delight to use, and quickly went about trying to set up a good development environment for it. Since I'm doing HTML5/JavaScript with a focus on compatibility with the Windows 8 store (cross platform though, as for a host of reasons I think this store is still not something developers will really benefit from). But as I love Blend for Visual Studio, I wanted something to help me access common programming keystrokes directly from the touch interface, and without cycling through the symbols area of the virtual keyboard.I quickly found some fantastic resources and existing scripts, and have cobbled them together to create this still alpha stage tool. All of these are focused on graphic apps like Photoshop and Illustrator, whereas mine focuses on Blend, Sublime Text, and Notepad++, with Photoshop and Illustrator versions included that I have not customized. Thanks for visiting - I hope that by putting this project on GitHub we can gather a few other folks to help improve it!## Tools UsedThe bulk of my code comes from 2 sources: * awesome work of poster 'deathdemon' at the PC Tablet forum site, in his post titled **Tips and tweaks for slate button actions and touch gestures** - link here:<http://forum.tabletpcreview.com/samsung/47328-tips-tweaks-slate-button-actions-touch-gestures.html>+ another awesome piece of work called **slatepal** by user ~gahfe at deviantARTlink here:<http://gahfe.deviantart.com/#/d5gncye>There are several other projects that contain different variations that you may find useful in your quest to customize your own perfect devDock!*  [PaintDock](http://enliighten.com/blog/slate-shortcut-tools-paintdock/>)+ Forum Thread Using PaintDock: [How to set up your Samsung Series 7 Slate for 'Serious Photoshop Work'!](http://forum.tabletpcreview.com/samsung/47422-how-set-up-your-samsung-series-7-slate-serious-photoshop-work.html)- [ArtDock](http://forum.tabletpcreview.com/samsung/47958-artdock-samsung-series-7-slate.html) * [Photoshop ToolBar](http://forum.tabletpcreview.com/software/47928-photoshop-toolbar.html)The other program you'll need to do any serious customization other than simply switching out my buttons or graphics for other ones - which is all .txt file based - is AutoHotKey - a fun little program that allows you to create instant .exes from scripts you write, allowing you to perform all kinds of customizations for the Windows OS.* AutoHotKey [website link here](http://www.autohotkey.com)If you have a Samsung Slate given to you by Microsoft, you may not have the Samsung Touch Supporter software, as it looks like they stripped all of the Samsung stuff out when they installed Windows 8 on the slates. If you want to use touch gestures to quickly pull up your programmer toolbar (much quicker!), you can get this program on Samsung's site:<http://www.samsung.com/us/support/owners/product/XE700T1A-A04US>That is the link for a version like mine, so you may want to make sure you are on Samsung's page for your exact model, although the software is probably the same. Click on the **Downloads** button on the menu, then on the **Software** button to get the list.  Get the most recent version of the *Touch Supporter* software.##How I Made my DockMy dock or toolbar overlay for my Samsung Series 7 Slate PC (touchscreen Windows 8 tablet) works by doing 2 things:1. I altered the Touch Supporter .ini file to add support for bringing up my devDock toolbar automatically when I perform a 5 finger touch on the tablet screen. I also added other custom stuff to my .ini, which you can customize or just delete.2. I created 2 .exe files that control the 2 app bars I use in different programs, as well as a toggle control .exe that shows and hides these bars when you perform the 5 finger touch. This could easily be switched to a hotkey of some kind, or placed on the desktop or taskbar for a toggle shortcut.I created some other things, like .exes that launch Blend for Visual Studio, Sublime Text, and Notepad++ in a semi full screen mode, with the window size set to fit the dock and hide the Windows Title bar to give me a little more screen real estate.## Features1.  easily customizable via the .txt files, where you can change the action for each key, how the key looks, where the dock is positioned, the size, etc.2. automatically detects Blend for Visual Studio, Sublime Text, Photoshop, and Illustrator and changes the toolbar to specific buttons for that program3. comes with icons in many colors, just switch out the color path in the .txt files either for the main icon or the 'on pressed' icon4. dock activates and exits with a 5 finger click on your touchscreen5. includes other docks for keyboard and numberpad done by the slatepal author, not used by my dock but easy to include6. customize the behavior of the dock by editing the .ahk files and compiling your own dock using AutoHotKey!7. gets rid of Windows Title Bar in Blend and Sublime Text and resizes the window to fit the 2 docks. You can change this by editing the devdock.ahk file and recompiling.## Instructions: How to Use devDockGet the files here in GitHub, and copy the following files and folders to your Programs folder (as I've only tested this on the Samsung Slate, which is 64 bit, the path is here:C:\Program Files (x86)\The folders to copy are:* alt+ img- txtFiles to copy are:* devdock.exe+ programming.exe- toggledocks.exeThe exe files are in the exe_files.zip folder here on the GitHub site.If you want the touch support, you'll have to make sure the Samsung Touch Support software is installed (see above). After making a copy of the InputSupport.ini file from your own Touch Support software (mine installed to C:\Program Files (x86)\Samsung\Touch Supporter) - copy and paste this section from the file included in the touchsupport folder from my project:[Point5]  Enabled=1  Command="%CSIDL_PROGRAM_FILES%\toggledocks.exe"  ; toggle the maindock and programming menus...  That is the only section you need to use devDock, although you may like to take a look at this file to further customize your touch points and gesture actions.That should be it! I may have forgotten something, so send me a shout out here on GitHub if you find something. As I'm pretty busy right now I can't troubleshoot or provide any tech support, but I'll check out any errors if I can and try to fix them.## Issues & Wish List1. I didn't try to solve the issue of automatically turning **OFF** the dock when you switch to Windows Modern (formerly known as metro) mode.  *You don't want those toolbars active in that mode*, as they interfere with the automatic keyboard and the letters get screwed up. I disable mine manually with a 5 finger touch, but that is a lame solution. I need to add a snippet of code to listen for the switch and disable the toolbars automatically.2. While my script adds your Window Title Bar back when you exit the dock if you are in one of the programs where I remove it from (Blend & Sublime Text are the only ones right now) - **I couldn't get it to consistently maximize the window**. So that's 2 extra clicks right now in order to do that, which is a waste and bothersome. I'd like the script to automatically add back your Window Title Bar and maximize the window when you exit the dock.3. The Win8 virtual keyboard comes up with a 4 touch click, but doesn't CLOSE with another 4 touch click (like a toggle). That is really annoying, as clicking on the little X on the keyboard wastes time that would be saved by a toggle feature. Surely this is easy to write, I just haven't had the time to fiddle with it.4. I've used 3 separate .exe files to accomplish my 2 docks and toggle function, and I know these could certainly be accomplished with 1 single exe file - I am new to AutoHotKey so I didn't know quite how to get that working. I know the keyboard and numeric pad are subscripts called by the main script, but when I tried to mimic that, it called up the AutoHotKey .exe which I didn't want to do. Any help on this would be great!##Important Note:I detest little fonts, as they make programming work a lot harder IMHO. So my Windows 8 text dpi settings are what seems like a ridiculously high 177%, but if you visit my project page you'll see in my screenshots that this just gives me a decent font size!What this means for anybody using the regular font size is that my docks will have extra room at the end for you to add more buttons. Anybody using a higher percentage will have to take off a button or 2.