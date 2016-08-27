FROM golang:latest
RUN apt-get update && apt-get install -y vim
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
ADD .vimrc /root
ADD .vim /root/.vim
COPY ./.bash_profile /root 
RUN cat /root/.bash_profile >> /root/.bashrc
