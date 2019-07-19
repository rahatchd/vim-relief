vim-relief
==========
> a minimal but flashy tmux.vim desktop/IDE `.dotfile` conf

Philosophy
---------

### Minimal
Its just enough ide. Nothing more. Nothing less.

### but *Flashy*
Just because its lightweight doesn't mean its not pretty.

Screenshot(s)
-------------

![htop](https://imgur.com/Sddfmye.png)

![fullscreen](https://imgur.com/hjzvdCn.png)

![vim](https://imgur.com/ZAuwWYw.png)

Features
--------

relief is really functional

* cross tool compatibility - find out what it means to me
```
set -g @plugin 'tmux-pluginx/vim-tmux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'edkolev/tmuxline.vim'
```
* are we ide yet? oh we're lsp baby
```
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'craigemery/vim-autotag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'plytophogy.vim-virtualenv'
Plugin 'w0rp/ale'
```
* vim and tmux sitting in a NERDTree, A.I.R.L.I.N.E
```
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline'
```
* create multiple panes with intuitive bindings
```
prefix + | (horizontal split)
prefix + - (vertical split)
```
* traverse across vim and tmux panes with vim-esque ease
```
ctrl + h|j|k|l
```
* use sensible standards everybody agrees on, not esoteric idiosyncrasies everybody disagrees on
```
Plugin 'tpope/vim-sensible'
set -g @plugin 'tmux-plugins/tmux-sensible'
Plugin 'tpope/vim-surround'
```
* things that should be `auto`matic are
```
Plugin 'vim-scripts/vim-auto-save'
Plugin 'tpope/vim-sleuth'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'nerdtree-git-plugin'
```

Inspiration
-----------

I would be remiss not to acknowledge:
1. [gruvbox](https://github.com/morhetz/gruvbox) for the OG theme of vim-relief (not pre-installed with theme now),
2. [desktop](https://www.reddit.com/r/desktops/) for the motivation to compile this conf,
3. and my colleague [Hatef](https://github.com/wildthingz), who got me started on my journey to minimal but flashy development.

Installation
------------

#### Requirements

* Operating System : Unix based (tested on Ubuntu, Pop!\_OS, Raspbian, macOS Mojave)
* Hardware : you can probably run this on a potato (at least without ycm and ctrlspace)
* Terminal : (tested on gnome-terminal, macOS terminal, and alacritty)
> ! Highly recommend [alacritty](https://github.com/jwilm/alacritty)
* Software : `git`, `vim`, and `tmux`
  * for ycm : `python2.7` or `python3.5` - whichever your vim supports
  * for search by symbol : [ctags](https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst)

#### Setup

1. Install [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) (optional - to be automated)
2. Install a [nerd-font](http://nerdfonts.com/) and enable it in your terminal (installation to be automated)  
3. Run `. install.sh` from the repo root dir
4. Install a [terminal](https://mayccoll.github.io/Gogh/)/[vim](https://github.com/rafi/awesome-vim-colorschemes)/[vim-airline](https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes) theme
  1. During the installation, edit `.vimrc` to apply your theme
     Then run `:AirlineTheme <theme>`
     and `:PromptlineSnapshot ~/.promptline.sh airline` and exit vim
     Then source `~/.promptline.sh`

Upcoming Features
-----------------

- [ ] auto install ycm
- [ ] usage instructions

Scope Creep
-----------

* installer written in rust
* arch-relief linux distro
* apt/brew
* auto update script (dependencies included)
* versions:
<table>
  <thead>
    <tr>
      <th>Version</th> <th>Supported Features</th> <th>Description</th>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>relief (<em>flagship model</em>)</td>
      <td>
        <ul>
          <li>all</li>
          <li>of</li>
          <li>them</li>
        </ul>
      <td>
        Turns your vim into a beautiful lsp powered ide.
        Migrants from JetBrains will like this.
      </td>
    </tr>
    <tr>
      <td>relief.satellite</td>
      <td>
        <ul>
          <li>ctrlspace + airline </li>
          <li>some typography automation
            <ul>
              <li>autotag</li>
              <li>autoclose</li>
              <li>autindent</li>
            </ul>
          </li>
          <li><strike>lsp</strike></li>
          <li><strike>autocompletion</strike></li>
          <li><strike>linting</strike></li>
          <li><code>.&#160;src/relief.bear</code></td>
      <td>
        Enhanced and beautiful vim experience without programming language support.
        Ideal for non-coders/hard-corers looking for the aesthetic.
      </td>
    </tr>
    <tr>
      <td>relief.bear</td>
      <td>
        <ul>
          <li>sensible configuration</li>
          <li>seamless navigation</li>
          <li><strike><strong>anything else</strong></strike></li>
        </ul>
      <td>
        The bare minimum for the bears living among us.
        Ideal if you'd like to customize your own vim-relief.
      </td>
    </tr>
  </tbody>
</table>

Worth a `README.md`
-------------------

* [sensible.vim](https://github.com/tpope/vim-sensible)
* [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
* [promptline](https://github.com/edkolev/promptline.vim/blob/master/README.md)
* [surround.vim](https://github.com/tpope/vim-surround)
* [vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace/blob/master/doc/ctrlspace.txt)
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [vim + tmux pane titles](https://stackoverflow.com/questions/15123477/tmux-tabs-with-name-of-file-open-in-vim/15842066#15842066)
* [spicycode`.tmux.conf`](https://gist.github.com/spicycode/1229612) (\*second best and greatest tmux.conf ever)
* [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
* [Devicons nerd-font](https://github.com/ryanoasis/vim-devicons/wiki/Installation)
* [ycm vs jedi-vim](https://github.com/davidhalter/jedi-vim/issues/119)
* [airline tmux](https://github.com/vim-airline/vim-airline/issues/829)
* [bash rc vs \_profile](https://superuser.com/a/244990)
* [pioneer](https://gist.github.com/tarruda/5158535) (shoulders i wish i stood on)

