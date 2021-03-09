FROM nofrost1234/make-latex:latest

COPY .latexmkrc /.latexmkrc
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
