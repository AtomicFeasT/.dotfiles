<h1 id="dotfiles" align="center">💠 .dotfiles</h1>
💠 Dotfiles for my linux system. They're a way to recover your configurations and customizations in files using a repo and symbolic links.
<hr>

<h1>Table Of Contents</h1>
<ul> 
  <li><a href="#SystemInfo">System Info</a></li>

  <li>
    <a href="#Dependencies">Dependencies And Programs</a>
    <ul> 
      <li><a href="#Mandatory">Mandatory Programs</a></li>
    </ul>  
  </li>

  <li><a href="#BSPWM">BSPWM - How To & Details</a></li>
  <ul> 
    <li><a href="#BSPWMStructure">Folder Structure</a></li>
  </ul>  
  
  <li><a href="#IceWM">IceWM - How To & Details</a></li>
  <ul> 
    <li><a href="#IceWMStructure">Folder Structure</a></li>
  </ul>
  <li><a href="#Disclaimer">⚠️ Disclaimer</a></li>
  <li><a href="#Credits">🌟 Credits</a></li>
</ul>

<h1 id="SystemInfo">System Info</h1>

| Tasks             | Name                                                                                         |
| ----------------- | ---------------------------------------------------------------------------------------------|
| OS                | [Archcraft](https://archcraft.io/)                                                           |
| WM                | [BSPWM](https://github.com/baskerville/bspwm), [IceWM](https://ice-wm.org)                    |
| Compositor        | [Picom](https://github.com/yshui/picom)                                                      |
| Shell             | [ZSH](https://www.zsh.org/)                                                                  |
| Terminal          | [Alacritty](https://github.com/alacritty/alacritty)                                          |
| Theme             | [Tokyo Night (Adapted For Archcraft)](https://github.com/folke/tokyonight.nvim)              |
| Editor            | [LunarVim](https://www.lunarvim.org/#opinionated)                                            |
| Web Browser       | [Brave](https://brave.com/)                                                                  |
| Bar               | [Polybar](https://github.com/polybar/polybar)                                                |
| Music Player      | [NCMPCPP](https://github.com/ncmpcpp/ncmpcpp)                                                |
| App Launcher      | [Rofi](https://github.com/davatorium/rofi/)                                                  |
| File Manager      | [Thunar](https://wiki.archlinux.org/title/thunar), [Ranger](https://github.com/ranger/ranger)|

<h1 id="Dependencies">Dependencies And Programs</h1>
Be sure to read both mandatory programs thoroughly.

<h2 id="Mandatory">Mandatory Programs</h2>
<details>
  <summary>Stow</summary>
  As GNU says: "It is a symlink farm manager which takes distinct sets of software and/or data located in separate directories on the filesystem, and makes them all appear to be installed in a single directory tree."<br>
  <br>
  In regards to it's working... In short, Stow takes directories inside your <strong>repo</strong> and pretends them to be the <strong>parent directory</strong> creating symbolic links in the <strong>parent directory itself.</strong><br>
  <br>
  Deeply explaning, if you are at <code>/home/[UserName]/.dotfiles</code> when using <code>stow .configurations</code> in your terminal, the configurations folder will take everything inside it and create <strong>symlinks</strong> in the home folder. It's as the <code>.configurations</code> <strong>directory</strong> would be now the <code>home</code> <strong>directory</strong> and the <code>.config</code> inside will be redirected to there.<br>
  <br>          
  If that didn't do it, this <a href="https://www.youtube.com/watch?v=90xMTKml9O0">chris@machine video and the pinned comment</a> will help ya understand it better since it's a little bit hard at first!
</details>
  
<details>
  <summary>Git</summary>
  As in Git: "Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency." <br>
  You'll need it to clone the repository using <code>git clone https://github.com/AtomicFeasT/.dotfiles.git</code>.
</details>
   
<h1 id="BSPWM">BSPWM - How To & Details</h1>

*BSWPM comes by default after installing ArchCraft.*

<details>
  Apply this method if you want to sync all files from this repository. (As long as you `git pull`) <br>
  <summary><strong><i>Symbolical Links Method</i></strong></summary>
  <br>
    
  <i>CD Into .dotfiles</i>  
  
  ```
  cd .dotfiles/bspwm
  ```
  <i>Create Symlinks To Post Dependencies</i>

  ```
  stow --target=${HOME} .dep-post

  # Optional! Installs All Programs That I Use
  cd .dep-post/ArchPost
  sudo chmod +x archcraft-post-installer.sh
  ./archcraft-post-installer.sh
  ```
  
  <i>Create Symlinks To Theming (Needs Sudo Because Of The Root Folder)</i> <br>
  Download And Put [Tokyonight-Dark-BL](https://www.pling.com/p/1681315/) And
  [Tokyo Night Icons](https://www.pling.com/p/1681475/) In Your Download Directory.

  ```
  sudo stow --target=/ .theming
  
  cd ~
  cd Downloads
  unzip Tokyonight-Dark-BL.zip
  unzip tokyonight_dark_icons.zip
  sudo mv -f ~/Downloads/Tokyonight-Dark-BL /usr/share/themes
  sudo mv -f ~/Downloads/tokyonight_dark /usr/share/icons 
  rm -rf ~/Downloads/Tokyonight-Dark-BL.zip
  rm -rf ~/Downloads/tokyonight_dark_icons.zip
  ```
  <i>Create Symlinks To Configurations</i><br>
  <sub>The "--target=${HOME}" garantees that files and directories are going to your home folder not caring if you cloned the repo somewhere else.</sub>

  ```
  cd ~
  cd .dotfiles/bspwm
  rm -rf ~/.config/bspwm
  rm -rf ~/.config/sxhkd
  rm -rf ~/.config/lvim
  stow --target=${HOME} .configurations
  ```
  
  <i>ZSH Config. Symlink</i>
  
  ```
  rm -f ~/.zshrc
  ln -s -f ~/.dotfiles/bspwm/.zshrc ~/.zshrc
  ```
  Now Reload Your BSWPM With Ctrl+Shift+r.
</details>

<details>
  <summary><strong><i>Copy Configs Only</i></strong></summary>

  <i>Copy Files From Post Dependencies</i>

  ```
  sudo cp -a ~/.dotfiles/bspwm/.dep-post/ArchPost ~/ArchPost 

  # Optional! Installs All Programs That I Use
  cd ~/ArchPost
  sudo chmod +x archcraft-post-installer.sh
  ./archcraft-post-installer.sh 
  ```

  <i>Copy Files From Theming (Needs Sudo Because Of Root Folder)</i> <br>
  Download And Put [Tokyonight-Dark-BL](https://www.pling.com/p/1681315/) And
  [Tokyo Night Icons](https://www.pling.com/p/1681475/) In Your Download Directory.

  ```
  sudo cp -a ~/.dotfiles/bspwm/.theming/usr/share/backgrounds/* /usr/share/backgrounds 

  cd Downloads
  unzip Tokyonight-Dark-BL.zip
  unzip tokyonight_dark_icons.zip
  sudo mv -f ~/Downloads/Tokyonight-Dark-BL /usr/share/themes
  sudo mv -f ~/Downloads/tokyonight_dark /usr/share/icons 
  rm -rf ~/Downloads/Tokyonight-Dark-BL.zip
  rm -rf ~/Downloads/tokyonight_dark_icons.zip
 
  ```

  <i>Copy Files From Configurations</i><br>

  ```
  rm -rf ~/.config/bspwm
  rm -rf ~/.config/sxhkd
  rm -rf ~/.config/lvim
  sudo cp -a ~/.dotfiles/bspwm/.configurations/.config/* ~/.config  
  ```

  <i>Copies ZSH Config To Home</i>

  ```
  rm -f ~/.zshrc
  sudo cp -a ~/.dotfiles/bspwm/.zshrc ~/.zshrc
  ```
  Now Reload Your BSWPM With Ctrl+Shift+r.
</details>

<h2 id="BSPWMStructure">Folder Structure</h2>

| CodeBase          | Description                                                                                  |
| ----------------- | ---------------------------------------------------------------------------------------------|
| .configurations/  | WM and programs configurations inside the .config folder.                                    |
| .dep-post/        | All necessary dependencies and programs in post installation on ArchCraft.                   |
| .theming/         | GTK themes, folder icons and backgrounds.                                                    |
| .zshrc            | ZSH configurations.                                                                          |

<h1 id="IceWM">IceWM - How To & Details</h1>

Install IceWM using `yay -s icewm`. <br> 
The `IceWM` option does not work with the startup option so prefer to use the `IceWM Session` instead. <br>
To access it, in the logging screen, below the password input click in the current option and select `IceWM Session`. 

<details>
  Apply this method if you want to sync all files from this repository <br>
  <summary><strong><i>Symbolical Links Method</i></strong></summary>
  <br>
    
  <i>CD Into .dotfiles</i>  

  ```
  cd .dotfiles/icewm
  ```

  <i>Create Symlinks To Configurations</i><br>
  <sub>The "--target=${HOME}" garantees that files and directories are going to your home folder not caring if you cloned the repo somewhere else.</sub>

  ```
  rm -rf ~/.icewm
  stow --target=${HOME} .configurations
  ```
  Now LogtOut And LogOn Again.
</details>

<details>
  <summary><strong><i>Copy Files Method</i></strong></summary>

  <i>Copy Files To Configurations</i><br>

  ```
  rm -rf ~/.icewm
  sudo cp -a ~/.dotfiles/icewm/.configurations/.icewm ~/.icewm
  ```
  Now LogOut And LogOn Again.
</details>

<h2 id="IceWMStructure">Folder Structure</h2>

| CodeBase          | Description                                                                                  |
| ----------------- | ---------------------------------------------------------------------------------------------|
| .configurations/  | WM configurations.                                                                           |

<h1 id="Disclaimer">⚠️ Disclaimers</h1>

- To make your network module work and set the correct system variables for your system press `Ctrl + H` in the `HOME` folder to show your dotfiles and go to `~/.config/bspwm/polybar/system`, read all instructions inside the file, then fill all the four variables with your specific results.

- If you're not fond of some polybar modules go to `.config/bspwm/polybar/config` and remove modules from `modules-left, modules-right and modules-center` and then press `Ctrl+Shift+r` to reload the polybar.

<h1 id="Credits">🌟 Credits</h1>
<ul> 
  <i>My dotfiles are only able to exist because of other people efforts.</i> 
  <hr>
  <li><a href="https://github.com/adi1090x">Adi1090x</a> also know as the creator of <a href="https://archcraft.io/">ArchCraft OS</a> that made me enter in this beautiful world of Arch Linux aswell as creating a very great folder structure for bspwm, polybar and rofi that i spent countless hours reading to understand.</li>
  <li>In the creation of the <a href="https://ice-wm.org/">IceWM</a> rice (Made to help friends with low-end pcs on gaming) i've used <a href="https://github.com/adi1090x/polybar-themes">Adi1090x Polybar Themes</a> and <a href="https://github.com/adi1090x/rofi">Adi1090x Rofi Themes</a> and made some small changes to those as usual.</li>
  <li>Thanks for users in <a href="https://www.reddit.com/r/unixporn/">Unix Porn</a> for inspiring me, opening the doors to dotfiles and many other linux advantages relating to productivity and aesthetics. Tho my system don't have so much "personality" since i'm using many of Adi1090x ideas and files i'll get there, eventually, for now this is what i'm happy with!</li>
  <li>At last but not least thanks for letting me brake your pc helping me debug some aspects of my dotfiles <a href="https://github.com/VitorGouveia">Vitor Gouveia</a> XD.</li>
  <li>You can find many other links in the System Information section at the start of this file.</li>

</ul>

[⬆ Back To Top](#dotfiles)<br>
