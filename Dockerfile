FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y \
        # gui text editor, if client supports x11 gui interface
        # terminal text editor
        vim \
        # miscellaneous tooling and scripting
        emacs \

RUN curl -o code_1.43.2-1585036376_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
RUN curl https://pyenv.run | bash