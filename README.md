# dotfiles

I am a emacs beginner user (doom emacs) and I toy with my setup and needed to store/save maybe branch it somewhere.

I mainly use ESS + org. 

## Ressources that I find useful: 

- A french :fr: (with english transcript) Mooc on reproductible science : https://lms.fun-mooc.fr/courses/course-v1:inria+41016+self-paced/info
    * it cover more than emacs but everyting is really useful from taking notes to using miniconde
- Ess intro, a serie of intro videos/meterial on ESS: https://ess-intro.github.io/ 
- Emacs dotfile from more experienced users: https://github.com/MilesMcBain/esscss
- Videos tutorial from Rainer König: https://www.youtube.com/playlist?list=PLVtKhBrRV_ZkPnBtt_TD1Cs9PJlU0IIdE
- Vidéos on Doom Emacs from Zaiste programming : https://www.youtube.com/playlist?list=PLhXZp00uXBk4np17N39WvB80zgxlZfVwj

## dependencies

Here I will list some dependencies I had to install. This is always need to be adjusted depending of what is already on your system.

### [Vterm](https://github.com/akermu/emacs-libvterm) (an improvement from eterm even if eterm do the job): 

I needed `libtool-bin`, `CMAKE`, `libvterm0`. 
I also added [shellcheck](https://github.com/koalaman/shellcheck) (I am not sure it is needed but it is usefull)

### ORG

I already had Latex but still needed `dvipng` [see](https://www.ctan.org/pkg/dvipng)
