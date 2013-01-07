# devDock: tablet toolbar overlay for geeks!## BackgroundI'm Stacey Reiman, work at home mom with 3 adorable kids, and an app developer who recently switched from Flash to HTML5. My badly neglected  blog is here:<http://www.akwebgenius.com/blog> You can find my 20 or so apps thoughout the various app ecosystems under the name InstaSpanish as well as my own name. The Insta Spanish Kids App, Learn to Read Kids, and Dress the Pig are probably my 3 most popular apps :)I was one of the app developers lucky enough to receive a Samsung Series 7 Slate PC from Microsoft a little while back, and found it to be a delight to use, and quickly went about trying to set up a good development environment for it. Since I'm doing HTML5/JavaScript with a focus on compatibility with the Windows 8 store (cross platform though, as for a host of reasons I think this store is still not something developers will really benefit from). But as I love Blend for Visual Studio, I wanted something to help me access common programming keystrokes directly from the touch interface, and without cycling through the symbols area of the virtual keyboard.I quickly found some fantastic resources and existing scripts, and have cobbled them together to create this still alpha stage tool. All of these are focused on graphic apps like Photoshop and Illustrator, whereas mine focuses on Blend, Sublime Text, and Notepad++, with Photoshop and Illustrator versions included that I have not customized. Thanks for visiting - I hope that by putting this project on GitHub we can gather a few other folks to help improve it!## Tools UsedThe bulk of my code comes from 2 sources: * awesome work of poster 'deathdemon' at the PC Tablet forum site, in his post titled **Tips and tweaks for slate button actions and touch gestures** - link here:<http://forum.tabletpcreview.com/samsung/47328-tips-tweaks-slate-button-actions-touch-gestures.html>+ another awesome piece of work called **slatepal** by user ~gahfe at deviantARTlink here:<http://gahfe.deviantart.com/#/d5gncye>There are several other projects that contain different variations that you may find useful in your quest to customize your own perfect devDock!*  paintDock+ artDock- Photoshop ToolBarThe other program you'll need to do any serious customization other than simply switching out my buttons or graphics for other ones - which is all .txt file based - is AutoHotKey - a fun little program that allows you to create instant .exes from scripts you write, allowing you to perform all kinds of customizations for the Windows OS.* AutoHotKey [website link here](http://www.autohotkey.com)If you have a Samsung Slate given to you by Microsoft, you may not have the Samsung Touch Supporter software, as it looks like they stripped all of the Samsung stuff out when they installed Windows 8 on the slates. You can get this program on Samsungs site:<http://www.samsung.com>##How I Made my DockMy dock or toolbar overlay for my Samsung Series 7 Slate PC (touchscreen Windows 8 tablet) works by doing 2 things:1. I altered the Touch Supporter .ini file to add support for bringing up my devDock toolbar automatically when I perform a 5 finger touch on the tablet screen. I also added other custom stuff to my .ini, which you can customize or just delete.2. I created 2 .exe files that control the 2 app bars I use in different programs, as well as a toggle control .exe that shows and hides these bars when you perform the 5 finger touch. This could easily be switched to a hotkey of some kind, or placed on the desktop or taskbar for a toggle shortcut.I created some other things, like .exes that launch Blend for Visual Studio, Sublime Text, and Notepad++ in a semi full screen mode, with the window size set to fit the dock and hide the Windows Title bar to give me a little more screen real estate.## Features...to be finished soon!##Important Note:I detest little fonts, as they make programming work a lot harder IMHO. So my Windows 8 text dpi settings are what seems like a ridiculously high 177%, but if you visit my project page you'll see in my screenshots that this just gives me a decent font size!