FROM texlive/texlive:latest
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-lang-german \
    texlive-bibtex-extra \
    biber \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace
ENTRYPOINT ["pdflatex", "-interaction=nonstopmode"]
CMD ["main.tex"]
